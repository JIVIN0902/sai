//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import {ERC20Burnable} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";

contract dETH is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("Desi ETH", "dETH") {}

    function mint(address _recipient, uint256 _amount)
        public
        virtual
        onlyOwner
    {
        _mint(_recipient, _amount);
    }

    function burnTokens(address _account, uint256 _amount)
        public
        virtual
        onlyOwner
    {
        _burn(_account, _amount);
    }
}