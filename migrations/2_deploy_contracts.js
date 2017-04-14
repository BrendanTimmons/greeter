var greeter = artifacts.require("./greeter.sol");
var depositor = artifacts.require("./depositor.sol");

module.exports = function(deployer) {
  deployer.deploy(greeter);
  deployer.deploy(depositor);
};
