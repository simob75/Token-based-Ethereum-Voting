pragma solidity ^0.4.24;
//added function to convert string to bytes32 in order to test it in Remix (it makes easier the interaction with bytes32 arrays)
//the constructor has been replaced with the stringToBytes32a function
pragma solidity ^0.4.23;

contract Voting{
    bytes32[] public candidateList;
    mapping (bytes32 => uint8) public votesReceived;
    string candidNames;
   
  //  constructor(bytes32[] candidateNames) public {
      function  stringToBytes32a(string memory _candidNames) public returns (bytes32 result) {
        bytes memory temp = bytes(_candidNames);
            if (temp.length == 0) {
        return 0x0;
    }

    assembly {
        result := mload(add(_candidNames, 32))
    }
    candidateList.push(result);
    }
    

}
//contract to be completed
