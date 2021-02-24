# You Sure Can Attract a Crowd!

## Background
Your company has decided to crowdsale their PupperCoin token in order to help fund the network development.
This network will be used to track the dog breeding activity across the globe in a decentralized way, and allow humans to track the genetic trail of their pets. You have already worked with the necessary legal bodies and have the green light on creating a crowdsale open to the public. However, you are required to enable refunds if the crowdsale is successful and the goal is met, and you are only allowed to raise a maximum of 300 Ether. The crowdsale will run for 24 weeks.

You will need to create an ERC20 token that will be minted through a Crowdsale contract that you can leverage from the OpenZeppelin Solidity library.
This crowdsale contract will manage the entire process, allowing users to send ETH and get back PUP (PupperCoin).
This contract will mint the tokens automatically and distribute them to buyers in one transaction.
It will need to inherit Crowdsale, CappedCrowdsale, TimedCrowdsale, RefundableCrowdsale, and MintedCrowdsale.
You will conduct the crowdsale on the Kovan or Ropsten testnet in order to get a real-world pre-production test in.

## Instructions

### Creating your project
Using Remix, create a file called PupperCoin.sol and create a standard ERC20Mintable token. Since you're already an expert at this, you can simply use this starter code.
Create a new contract named PupperCoinCrowdsale.sol, and prepare it like a standard crowdsale.

### Designing the contracts

ERC20 PupperCoin
You will need to simply use a standard ERC20Mintable and ERC20Detailed contract, hardcoding 18 as the decimals parameter, and leaving the initial_supply parameter alone.
You don't need to hardcode the decimals, however since most use-cases match Ethereum's default, you may do so.
Simply fill in the PupperCoin.sol file with this starter code, which contains the complete contract you'll need to work with in the Crowdsale.

PupperCoinCrowdsale
Leverage the Crowdsale starter code, saving the file in Remix as Crowdsale.sol.
You will need to bootstrap the contract by inheriting the following OpenZeppelin contracts:

- Crowdsale

- MintedCrowdsale

- CappedCrowdsale

- TimedCrowdsale

- RefundablePostDeliveryCrowdsale


You will need to provide parameters for all of the features of your crowdsale, such as the name, symbol, wallet for fundraising, goal, etc. Feel free to configure these parameters to your liking.

You can hardcode a rate of 1, to maintain parity with Ether units (1 TKN per Ether, or 1 TKNbit per wei). If you'd like to customize your crowdsale rate, follow the Crowdsale Rate calculator on OpenZeppelin's documentation. Essentially, a token (TKN) can be divided into TKNbits just like Ether can be divided into wei. When using a rate of 1, just like 1000000000000000000 wei is equal to 1 Ether, 1000000000000000000 TKNbits is equal to 1 TKN.

Since RefundablePostDeliveryCrowdsale inherits the RefundableCrowdsale contract, which requires a goal parameter, you must call the RefundableCrowdsale constructor from your PupperCoinCrowdsale constructor as well as the others. RefundablePostDeliveryCrowdsale does not have its own constructor, so just use the RefundableCrowdsale constructor that it inherits.

If you forget to call the RefundableCrowdsale constructor, the RefundablePostDeliveryCrowdsale will fail since it relies on it (it inherits from RefundableCrowdsale), and does not have its own constructor.
When passing the open and close times, use now and now + 24 weeks to set the times properly from your PupperCoinCrowdsaleDeployer contract.

### PupperCoinCrowdsaleDeployer
In this contract, you will model the deployment based off of the ArcadeTokenCrowdsaleDeployer you built previously. Leverage the OpenZeppelin Crowdsale Documentation for an example of a contract deploying another, as well as the starter code provided in Crowdsale.sol.