// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.24;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';
import "@openzeppelin/contracts/access/Ownable.sol";

contract Token is ERC20,Ownable{

    constructor()ERC20("MyToken","MTK") Ownable(msg.sender){
    }

    function MintToken(address _to,uint256 _amount) public onlyOwner {
        _mint(_to,_amount*10**18);
    }
}