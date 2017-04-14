# Bank.sol test notes

1. start a testrpc server

$ testrpc

2. start truffle console

$ truffle console

3. get some accounts into some easy variables (our own little ENS wew)

$ web3.eth.accounts

$ account1 = web3.eth.accounts[0]

$ account2 = web3.eth.accounts[1]

$ account3 = web3.eth.accounts[2]

etc...

4. set up a bank variable

$ bank = bank.at(bank.address)

5. have fun.

$ bank.getBalance(account1)

$ bank.transfer(account2, 50)

transferring from the eth account 0 by default.

$ bank.getBalance(account2)

$ bank.transfer(account3, 10000)
