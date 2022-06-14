//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.13;

import "../node_modules/hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;

     event NewWave(address indexed from, uint256 timestamp, string message);

    struct Waves {
        address wave;
        string message;
        uint256 timestamp;
    }

     /*
     * I declare a variable waves that lets me store an array of structs.
     * This is what lets me hold all the waves anyone ever sends to me!
     */
    Waves[] waves;


    constructor() {
        console.log("Wave portal");
    }

    function wave(string memory _message) public {
        totalWaves += 1;
        console.log("%s has waved", msg.sender);

        waves.push(Waves(msg.sender, _message, block.timestamp));

        emit NewWave(msg.sender, block.timestamp, _message);
    }

    function getAllWaves() public view returns (Waves[] memory) {
        return waves;
    }

    function getWave() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}
