// SPDX-licence-Identifier: MIT 
pragma solidity ^ 0.8.17;

interface IERC2020 {
    event Transfer( address indexed from, address indexed to, uint256 value);
    // event Approval( address indexed owner, address indexed spender, uint value);

    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);
    // function allowance(address owner, address spender) external view retuns (uint256);

    // function approve( address spender, uint256 amount) external returns (bool);
    function transfer( address to, uint256 amount) external returns (bool);
    // function transferFrom( address from, address to, uint256 amount) exteranl returms (bool 
}

contract ERC20 is IERC20 {
    uint256 _totalsupply;
    mapping(address => uint256) _balance;

    constructor(){
        _balance[msg.sender] = 10000;
        _totalsupply = 10000; 
    }

    function totalSupply() public view returns (uint256){
       return_totalSupply; 
    }

    function balanceOf(address account) public view returns (uint256);
       return _balance[account];
    } 

    function transfer(address to, uint256 amount) public returns (bool) {
      uint256 myBalance = _balance[msg.sender];
      require(myBalance >= amount, "No money to transfer");
      require(to != address(0), "Transfer to address 0");

      _balance[msg.sender] = myBalance - amount;
      _balance[to] = _balance[to] + amount;
      emit Transfer(msg.sender, to, amount);
      return true;
    }
}

