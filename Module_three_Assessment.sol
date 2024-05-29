// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract demoMyToken is ERC20 
{
    address owner;
    string nameOfCoin = "Nectar";
    string symbolOfCoin = "NKTR";
    uint256 supplyTotal = 0;

    modifier allowOnlyOwner() {
        require(msg.sender == owner, "This action can only be performed by the Owner.");
        _;
    }

    function decimals() public view virtual override returns (uint8) {
        return 2;
    }

    constructor(uint _startingSupply) ERC20(nameOfCoin, symbolOfCoin)
    {
        owner = msg.sender;
        _mint(owner, _startingSupply * (10 ** decimals()));
        supplyTotal += _startingSupply * (10 ** decimals());
    }

    function nectorIHave() public view returns (uint256)
    {
        return balanceOf(msg.sender);
    }

    function mintNectar(address _toWallet, uint _numberOfTokens) allowOnlyOwner public 
    {
        _mint(_toWallet, _numberOfTokens * (10 ** decimals()));
        supplyTotal += _numberOfTokens * (10 ** decimals());
    }

    function burnNectar(uint _howMany) public 
    {
        _burn(msg.sender, _howMany);
        supplyTotal -= _howMany;
    }

    function sendNectarTo(address _toAccount, uint _howMany) public
    {
        _transfer(msg.sender, _toAccount, _howMany);
    }
}