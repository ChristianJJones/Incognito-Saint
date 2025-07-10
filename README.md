# Incognito-Saint aims to be an all-in-one app

Infrastructure {

1. InstilledInteroperability.sol - connection for on-chain transactions, node creation, bridges, and acts as one of the reserve accounts

2. USDMediator.sol - handles transactions & acts as one of the reserve accounts 

3. ZeropointPhoneServiceModem.sol - an unlimited internet, wifi, phone call, and text messsage connection with [endpointA:endpointB] encryption

4. TheLambduckCard.sol - allows people to spend their on-chain funds with a digital debit card using their card information for online purchases or tap to pay with nfc scan ($USD)

5. PayWithCrypto.sol - allows people to spend from their crypto balances (crypto => $USD)

6. GhostGoate.sol - owner account to manage owned funds & reserves

}
_________________
*****************





Goate Electric {

1. DeviceConnect.sol - connect digital electronics on-chain, turn them into nodes with instilledinteroperability.sol, and manage them remotely

2. Zeropoint.sol - wirelessly charges digital electronics for $0.10 per 1%

3. ZeropointWifi.sol - unlimited wifi subscription for $5 a month

}
_________________
*****************


Goate Defi {

1. GoateStaking.sol - stake crypto into a stock portfolio to earn dividends along with the token's marketcap volatility

2. TokenPairStaking.sol - stake 2 crypto assets into a stock portfolio to earn dividends along with the 2 token's marketcaps volatility

3. HomeTeamBets.sol - allow people to bet win, lose, or tie on NBA, NFL, MLB, FIFA, NHL, Tennis, and other sports around the world. Even though they can only bet a maximum of 1 time per game; if they bet right; they can win a share of 80% of that game's total amount of funds bet

4. LendingAndBorrowing.sol - people lend crypto assets and those assets get staked between a stock portfolio; the dividends are then split between a borrowing pool, their re-investments, & etc. People can only borrow 1 loan at a time; if they have an active loan open that has not been paid then they cant try to get another one. When people borrow; they have to deposit collateral; that gets added to a stock portfolio and those dividends are allocated too.

5. RealEstateCrowdfunding.sol - fundrise api to invest in real estate ($USD)

6. ZeropointDigitalStockNFT.sol - onchain stocks, etfs, and stock portfolios

}
_________________
*****************

24/7 internet/wifi/onchain/data access built into the app-- InstilledInteroperability.sol && ZeropointPhoneServiceModem.sol

SignUp / Create Account -- use google authentication, authenticate with the pi-sdk, or an email, password, confirm password

login -- let them login

create deposit/receive addresses -- InstilledInteroperability.sol


allow them to transfer/send --InstilledInteroperability.sol

allow them to deposit USD from their linked bank or card -- InstilledInteroperability.sol

allow them to withraw USD onchain to their bank -- InstilledInteroperability.sol

allow users to buy/sell USD -- InstilledInteroperability.sol && USDMediator.sol

allow users to buy/sell crypto -- InstilledInteroperability.sol && USDMediator.sol

allow users to swap crypto -- InstilledInteroperability.sol && USDMediator.sol

allow users to buy/sell stocks & etfs --
InstilledInteroperability.sol, USDMediator && zeropointDigitalStockNFT.sol

allow users to stake/unstake crypto -- InstilledInteroperability.sol, USDMediator.sol, GoateStaking.sol, TokenPairStaking.sol, && zeropointDigitalStockNFT.sol

allow users to transfer crypto/USD/stocks -- InstilledInteroperability, zeropointDigitalStockNFT.sol

allow users to spend their onchain assets anywhere in the world -- InstilledInteroperability.sol, USDMediator.sol, PayWithCrypto, && TheLambduckCard.sol


allow users to  manage their phones/electric vehicles/houses/etc remotely - InstilledInteroperability.sol && DeviceConnect.sol

allow users to wirelessly charge their connected devices -- InstilledInteroperability.sol, DeviceConnect.sol, && Zeropoint.sol

allow users to wirelessly access unlimited internet & wifi -- InstilledInteroperability.sol, DeviceConnect.sol && ZeropointWifi.sol

allow users to lend/borrow crypto assets -- InstilledInteroperability.sol, USDMediator.sol, LendingAndBorrowing.sol, GoateStaking.sol, TokenPairStaking.sol && zeropointDigitalStockNFT.sol

let users invest in fundrise real estate crowdfunding -- InstilledInteroperability.sol, USDMediator.sol, RealEstateCrowdfunding.sol

let users bet on sports games -- InstilledInteroperability.sol, USDMediator.sol && HomeTeamBets.sol

added UI/UX & account features for cj03nes@gmail.com owner -- InstilledInteroperability.sol && GhostGoate.sol
_________________
*****************

REVENUE  & REVENUE SPLITS


Zeropoint.sol - when zeropoint is consumed it is burned and the total value tied to it is allocated to : 
20% - InstilledInteroperability.sol
30% - USDMediator.sol
50% - cj03nes

ZeropointWifi.sol - when zeropointWifi is consumed it is burned and the total value tied to it is allocated to : 
20% - InstilledInteroperability.sol
30% - USDMediator.sol
50% - cj03nes

HomeTeamBets.sol - at the end of the game & the true outcome and winners have been decided; 

80% - distributed between bet winners based on their (pro rata share) in the winning pot

5% - USDMediator.sol
5% - InstilledInteroperability.sol
10% - cj03nes

GoateStaking.sol, TokenPairStaking.sol, LendingAndBorrowing.sol, RealEstateCrowdfunding.sol, zeropointDigitalStockNFT.sol - the dividemds that the accounts receive are allocated as: 

80% - msg.sender(pro rata) 
5% - InstilledInteroperability.sol
10% - USDMediator.sol
5% - cj03nes

InstilledInteroperability.sol - allocates his money into reserves of tokens, fiat, stocks, and real estate crowdfunding

USDMediator.sol - allocates her money into reserves of tokens, fiat, stocks, and real estate crowdfunding
_________________
*****************

Token Prices

use an aggregate of coingecko, coinmarketcap, and chainlink pricefeeds & data along with instilledInteroperability && USDMediator's prices & data
__________________
*******************

Loading, Refreshing, and Syncing

use a zeropointWifiModem to keep a 24/7 internet & wifi connection for on-chain & off-chain features; transactions should be done [endpointA:endpointB] / [addressFrom:addressTo] and should be settled instantly
