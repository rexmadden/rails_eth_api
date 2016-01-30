# Server Side Ethereum Demo using Rails
This app demonstrates who to write server side Ethereum code. Most of the tutorials I 
found focus on Dapps -- I'd recommend [this Dapp tutorial by ConsenSys](https://medium.com/@ConsenSys/a-101-noob-intro-to-programming-smart-contracts-on-ethereum-695d15c1dab4#.9wq3jadqf) 
if that's what you're looking for. However, I wanted to manipulate an Ethereum node from
a backend server.


## System dependencies
 - [cpp-ethereum](https://github.com/ethereum/webthree-umbrella/wiki) - for `solc`, the solidity contract compiler
 - [ethereumjs-testrpc](https://www.npmjs.com/package/ethereumjs-testrpc) - A Ethereum JSON-RPC simulator. Let's you run 
  tests really fast.
 - [geth](https://github.com/ethereum/go-ethereum/wiki/geth) - For running a real JSON-RPC node.
 - PostgreSQL - in case I need a database later, though I may yank that out.
 
## Goals
 - Manipulate Ethereum wallet and execute transactions on the server side, including creating contracts and accounts.
 - Create unit tests and integration tests.
 - Create an automated deployment mechanism (normally I'd use Heroku, but the geth node dependency means that won't work.)
 - Communicate with a separate web server.


## Running test suite
1. Make sure `testrpc` is running
2. `rake spec`

## README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
