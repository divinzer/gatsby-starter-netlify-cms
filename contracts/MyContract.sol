pragma solidity ^0.5.0;

import '@openzeppelin/contracts/tokens/ERC20/ERC20.sol';
import '@openzeppelin/contracts/tokens/ERC20/ERC20Detailed.sol';
import '@openzeppelin/contracts/tokens/ERC20/ERC20Burnable.sol';
import '@openzeppelin/contracts/tokens/ERC20/ERC20Mintable.sol';
import '@openzeppelin/contracts/tokens/ERC20/ERC20Capped.sol';

contract MyToken is ERC20, ERC20Detailed, ERC20Burnable, ERC20Mintable, ERC20Capped{
	constructor() ERC20Detailed("MyToken", "MYN", 18) ERC20Capped(1000);

	mint()
}