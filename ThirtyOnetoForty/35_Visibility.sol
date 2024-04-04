// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/* visibilty

private -- only  inside the contract -accessed
internal -- only inside the contract and child contracts
public -- inside and outside the contact
external -- only from the outside the contract


*/

contract Visibility{

    uint private x= 0;
    uint internal y = 1;
    uint public z = 2;


    function privateFun() private pure returns(uint){
    }
    function internalFun() internal pure returns(uint){
    }
    function publicFun() public pure returns(uint){
    }
    function externalFun() external pure returns(uint){
    }
    function examples() external view{
        x+y+z;
        privateFun();
        //externalFun();  not be called becuase of external 
        internalFun();
        publicFun(); 
    }
}

contract VisibiltiyChild is Visibility{
    function examples2() external view{

    }
}