'use strict';

const Web3 = require('web3');
const { setupLoader } = require('@openzeppelin/contract-loader');

async function main() {
    const web3 = new Web3('http://localhost:8545');
    const accounts = await web3.eth.getAccounts();
    console.log(accounts);
}

main();