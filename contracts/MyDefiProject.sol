pragma solidity ^0.8.4;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

contract MyDefiProject {
    IERC20 token;
    constructor (address token_) {
        token = IERC20(token_);
    }

    function foo(address recipient, uint amount) external {
        token.transferFrom(msg.sender,recipient,amount);
    }
}
