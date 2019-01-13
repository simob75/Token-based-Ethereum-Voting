var Voting = artifacts.require("./Voting.sol");
module.exports = function(deployer) {
  deployer.deploy(Voting, ['James', 'John', 'Jane', 'Julie']);
};
