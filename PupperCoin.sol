{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "blond-disorder",
   "metadata": {},
   "outputs": [],
   "source": [
    "pragma solidity ^0.5.0;\n",
    "\n",
    "import \"https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol\";\n",
    "import \"https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol\";\n",
    "import \"https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol\";\n",
    "\n",
    "contract PupperCoin is ERC20, ERC20Detailed, ERC20Mintable {\n",
    "    constructor(\n",
    "        string memory name,\n",
    "        string memory symbol,\n",
    "        uint initial_supply\n",
    "    )\n",
    "        ERC20Detailed(name, symbol, 18)\n",
    "        public\n",
    "    {\n",
    "        mint(msg.sender, initial_supply);\n",
    "    }\n",
    "}\n"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.7.6"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
