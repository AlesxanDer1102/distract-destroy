// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Character {
    //Address of the creature
    address TARGET=0xbFd169395Ed9437098b36FF3F3b5cB853485b66f;

    //Function that call the function in the creature contract
    function atack(uint256 _damage) external {
        //Using encodeWithSignature to call the function attack in the creature contract with the damage specified
        (bool success,) = TARGET.call(abi.encodeWithSignature("attack(uint256)", _damage));
        //Check if the call was successful
        require(success, "Call failed");
    }
}