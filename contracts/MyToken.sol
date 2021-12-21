pragma solidity ^5.0.0;

import '@openzeppelin/contracts/tokens/ERC721/ERC721Full.sol';
import '@openzeppelin/contracts/tokens/ERC721/ERC721Burnable.sol';
// import '@openzeppelin/contracts/tokens/ERC721/ERC721Metadata.sol';
// import '@openzeppelin/contracts/tokens/ERC721/ERC721Enumerable.sol';
import '@openzeppelin/contracts/tokens/ERC721/IERC721.sol';

contract MyContract is ERC721, ERC721Burnable{
	constructor() ERC721Full("My super token", "MST") public {

	}
}