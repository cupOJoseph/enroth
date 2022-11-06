// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract EnrothExplorer {
    uint256 public seed;

    struct Resource{
        string name;
        string URI;
    }

    mapping (uint => Resource) public resources;

    constructor(uint256 _seed){
      seed = _seed;

      //set resources
      Resource memory nothing = Resource("Fields (Nothing)", "ipfs://QmZGqm9UrsQzTmus8HSipN5v1kaTXK6avngGMshevZC3Pu");
      resources[0] = nothing;

      Resource memory gold = Resource("Gold", "ipfs://QmRkhkX4uFycLzdinFzS1jLL6nsKQt3uqSXWJ6EDuvPeDT");
      resources[1] = gold;

      Resource memory wood = Resource("Wood", "ipfs://QmeLAVCEXBjaBKdKqKYZvuxxyQ2FmrChRCbBZAPkXdGXWB");
      resources[2] = wood;

      Resource memory apple = Resource("Apples", "ipfs://QmcB2zV44HVcnEjfdJMsoM1dbN89SYE4QSY4tpewmxK9Y9");
      resources[3] = apple;

    }

    //returns correlate to resources mapping for what kind of item you can find here, if any
    function getPlotItem(bytes32 hash) external pure returns(uint){
      //its possible that Gold AND another resource could 'spawn' in the same square. Gold takes priority.
      if(uint(hash) % 9999 == 0){
        //1 in 9999 change of finding gold
        return 1;
      }else if(uint(hash) % 500 == 0){
        return 2;
      }else if((uint(hash) + 1 )% 500 == 0){
        return 3;
        //apples and wood both have a 1/500 chance of being found, but never on the same square
      }else{
        return 0;
      }
    }

    function exploreMap(uint256 x, uint256 y) external view returns(bytes32) {
      //without a seed, the world will look very static and be the same every time this is used.
      //with the seed, the hash returned is different for each instance of Enroth
      return keccak256(abi.encodePacked(x, y, seed));
    }
}
