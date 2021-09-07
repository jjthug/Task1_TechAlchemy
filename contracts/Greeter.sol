//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Greeter {
    constructor() {
    }

function theFunction(string[] calldata data) public pure returns(string memory) {

    if(data.length ==1)
    return data[0];

    uint len = data.length;
    string memory a;
    a = data[len-1];
    
    for(uint i = len - 1; i>=1; --i)
    {   unchecked {
        len = compare(a, data[i-1]);
        a = concatString(a, data[i-1], len);
        }
    }

    return a;
}

function concatString(string memory a, string calldata b, uint len) internal pure returns(string memory){
    bytes memory a1 =bytes(a); 
    bytes memory b1 = bytes(b);
     bytes memory s;

    for(uint i=0; i< a1.length - len; i++){
    s = abi.encodePacked(s, a1[i]);
    }

    for(uint i=len; i< b1.length; i++){
    s = abi.encodePacked(s, b1[i]);
    }

    return string(s);
}

function compare(string memory b, string calldata a) internal pure returns(uint){
    bytes memory a1 = bytes(a);
    bytes memory b1 = bytes(b);
    uint val =0;


    for(uint i =0; i< a1.length && i<b1.length ; i++ ){
        if (a1[i] == b1[b1.length -1 -i] )
        {val++;}
        else
        {return val;}
    }
    return val;
    }
}