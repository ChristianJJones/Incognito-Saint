// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "./InstilledInteroperability.sol";

contract DeviceConnect is Ownable {
    InstilledInteroperability public interoperability;
    uint256 public constant FREE_MODALS = 5;
    uint256 public constant MODAL_COST = 1 * 10**6; // $1 in USDC (6 decimals)
    address public revenueRecipient;

    struct Device {
        string deviceId;
        bool isActive;
        uint256 modalCount;
        uint256 batteryCapacity; // Percentage (0-100)
        bool isCharging;
    }

    mapping(address => Device[]) public userDevices;
    mapping(string => bool) public deviceExists;

    event DeviceConnected(address indexed user, string deviceId);
    event DeviceUpdated(address indexed user, string deviceId, uint256 batteryCapacity, bool isCharging);
    event DeviceDisconnected(address indexed user, string deviceId);
    event ModalUsed(address indexed user, string deviceId, uint256 modalCount);

    constructor(address _interoperability, address initialOwner) Ownable(initialOwner) {
        interoperability = InstilledInteroperability(_interoperability);
    }

    function setRevenueRecipient(address recipient) external onlyOwner {
        revenueRecipient = recipient;
    }

    function connectDevice(string memory deviceId) external {
        require(!deviceExists[deviceId], "Device already exists");
        userDevices[msg.sender].push(Device(deviceId, true, 0, 100, false));
        deviceExists[deviceId] = true;
        emit DeviceConnected(msg.sender, deviceId);
    }

    function disconnectDevice(string memory deviceId) external {
        Device[] storage devices = userDevices[msg.sender];
        for (uint256 i = 0; i < devices.length; i++) {
            if (keccak256(bytes(devices[i].deviceId)) == keccak256(bytes(deviceId)) && devices[i].isActive) {
                devices[i].isActive = false;
                emit DeviceDisconnected(msg.sender, deviceId);
                return;
            }
        }
        revert("Device not found or already disconnected");
    }

    function updateDeviceStatus(string memory deviceId, uint256 batteryCapacity, bool isCharging) external {
        uint256 index = findDeviceIndex(deviceId);
        Device storage device = userDevices[msg.sender][index];
        device.batteryCapacity = batteryCapacity;
        device.isCharging = isCharging;
        emit DeviceUpdated(msg.sender, deviceId, batteryCapacity, isCharging);
    }

    function useModal(string memory deviceId) external {
        uint256 index = findDeviceIndex(deviceId);
        Device storage device = userDevices[msg.sender][index];
        require(device.isActive, "Device is not active");

        if (device.modalCount < FREE_MODALS) {
            device.modalCount++;
        } else {
            require(revenueRecipient != address(0), "Revenue recipient not set");
            interoperability.crossChainTransfer(1, 1, "USDC", MODAL_COST, revenueRecipient);
            device.modalCount++;
        }

        emit ModalUsed(msg.sender, deviceId, device.modalCount);
    }

    function getUserDevices(address user) external view returns (Device[] memory) {
        return userDevices[user];
    }

    function isDeviceActive(string memory deviceId) external view returns (bool) {
        uint256 index = findDeviceIndex(deviceId);
        return userDevices[msg.sender][index].isActive;
    }

    function canProvideEnergy(string memory deviceId) external view returns (bool) {
        uint256 index = findDeviceIndex(deviceId);
        Device memory device = userDevices[msg.sender][index];
        return device.batteryCapacity > 96 && device.isCharging;
    }

    function findDeviceIndex(string memory deviceId) internal view returns (uint256) {
        Device[] storage devices = userDevices[msg.sender];
        for (uint256 i = 0; i < devices.length; i++) {
            if (keccak256(bytes(devices[i].deviceId)) == keccak256(bytes(deviceId))) {
                return i;
            }
        }
        revert("Device not found");
    }
}
