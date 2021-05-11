# You Sure Can Attract a Crowd!

## Background
This project is a simulation for crowdsaling PupperCoin token in order to help fund its network development. This network will be used to track the dog breeding activity across the globe in a decentralized way, and allow humans to track the genetic trail of their pets. 

I created an ERC20 token that was minted through a Crowdsale contract to leverage from the OpenZeppelin Solidity library.
The crowdsale contract will manage the entire process, allowing users to send ETH and get back PUP (PupperCoin).
This contract will mint the tokens automatically and distribute them to buyers in one transaction.
It will need to inherit Crowdsale, CappedCrowdsale, TimedCrowdsale, RefundableCrowdsale, and MintedCrowdsale.
I conducted the crowdsale on a testnet in order to get a real-world pre-production test in.


### Creating your project
Using Remix, I created a file called PupperCoin.sol and create a standard ERC20Mintable token. I create a new contract named PupperCoinCrowdsale.sol, and prepared it like a standard crowdsale.

### Designing the contracts

ERC20 PupperCoin
I used a standard ERC20Mintable and ERC20Detailed contract, hardcoding 18 as the decimals parameter, and left the initial_supply parameter alone.

PupperCoinCrowdsale
I leveraged the Crowdsale starter code, saving the file in Remix as Crowdsale.sol.
I needed to bootstrap the contract by inheriting the following OpenZeppelin contracts:

- Crowdsale

- MintedCrowdsale

- CappedCrowdsale

- TimedCrowdsale

- RefundablePostDeliveryCrowdsale


I provided parameters for all of the features of the crowdsale.

I hardcoded a rate of 1, to maintain parity with Ether units (1 TKN per Ether, or 1 TKNbit per wei). 


### PupperCoinCrowdsaleDeployer
In this contract, I modeled the deployment based off of the ArcadeTokenCrowdsaleDeployer built previously. I leveraged the OpenZeppelin Crowdsale Documentation for an example of a contract deploying another, as well as the starter code provided in Crowdsale.sol.


You can view the Zoom video in this folder for an example of how this works.