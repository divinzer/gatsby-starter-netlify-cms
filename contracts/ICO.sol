pragma solidity ^0.5.0;

import '@openzeppelin/contracts/crowdsale/Crowdsale.so';
import '@openzeppelin/contracts/crowdsale/distribution/PostDeliveryCrowdsale.so';
import '@openzeppelin/contracts/crowdsale/time/IcreasingPriceCrowdsale.so';
import '@openzeppelin/contracts/token/ERC20/IETC20.so';

contract ICO{
    constructor(
        uint rate,
        address payable wallet,
        IERC20 token
    ) Crowdsale(rate, wallet, token) PostDeliveryCrowdsale() public {

    }
}