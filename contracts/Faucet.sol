pragma solidity ^0.8.7;

contract Owned {

    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}

contract Mortal is Owned {

    function destroy() public onlyOwner {
        selfdestruct(payable(owner));
    }
}

contract Faucet is Mortal {

    event Withdrawal(address indexed to, uint amount);
    event Deposit(address indexed from, uint amount);

    function withdraw(uint amount) public {
        require(amount <= 0.01 ether);
        require(address(this).balance >= amount, "Insufficient balance in Faucet for withdrawal");
        payable(msg.sender).transfer(amount);
        emit Withdrawal(msg.sender, amount);
    }

    fallback () external payable {
        emit Deposit(msg.sender, msg.value);
    }
}
