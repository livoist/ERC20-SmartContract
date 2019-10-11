pragma solidity ^0.5.0;
// 版本
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
// 引入ERC20

/**
 * @title SimpleToken
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 * Referenced from: https://github.com/OpenZeppelin/openzeppelin-solidity/blob/master/contracts/examples/SimpleToken.sol
 */
contract SimpleToken is ERC20, ERC20Detailed {
  // 合約創建，繼承至ERC20、ERC20Detailed
  uint256 public constant INITIAL_SUPPLY = 1e4 * (1e18);
  // 供給數量
  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  constructor() public ERC20Detailed("BlackCoffee", "BLC", 18) {
    _mint(msg.sender, INITIAL_SUPPLY);
    // 一開始的貨幣持有者
  }

}