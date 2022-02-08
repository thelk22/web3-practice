pragma solidity >=0.7.0 <0.9.0;

contract EnrichAlex {

    function sendToAlex() public payable {
        address alexAddress = 0xF1C37BC188643DF4Bf15Fd437096Eb654d30abc1;
        address payable alexAddressPayable = payable(alexAddress);
        uint availableBalance = address(this).balance;
        alexAddressPayable.transfer(availableBalance);
    }

    receive() external payable {
    }

}
