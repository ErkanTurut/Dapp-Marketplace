var SimpleStorage = artifacts.require("./SimpleStorage.sol");
var Marketplace = artifacts.require("./Marketplace.sol");

module.exports = function (deployer) {
  deployer.deploy(SimpleStorage);
};

module.exports = function (deployer) {
  deployer.deploy(Marketplace);
};
