// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
//creation of fungible token using erc20
contract TicketToken is ERC20 {
    address public admin;

    constructor() ERC20("GameT","GT"){
        admin=msg.sender;
        _mint(msg.sender,100000000000000000000);
    }
    modifier onlyAdmin{
        require(msg.sender==admin,"Unauthorised Access");
        _;
    }

    function buyTicket(uint n0_OfTicket) public {
            SendToken(msg.sender,1000000000000000000);
    }

    function SendToken(address to,uint value) public {
        _mint(to,value);
    }

}