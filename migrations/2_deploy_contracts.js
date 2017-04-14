var greeter = artifacts.require("./greeter.sol");
var depositor = artifacts.require("./depositor.sol");
var bank = artifacts.require("./bank.sol");

module.exports = function(deployer) {
  deployer.deploy(greeter);
  deployer.deploy(depositor);
  deployer.deploy(bank);
};
