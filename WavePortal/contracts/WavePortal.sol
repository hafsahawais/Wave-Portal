//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.13;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;

    constructor() {
        console.log("Wave portal");
    }

    function wave() public {
        totalWaves += 1;
        console.log("%s has waved", msg.sender);
    }

    function getWave() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}
