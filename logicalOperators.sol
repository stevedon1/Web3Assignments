// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.13;

contract LogicalOperator{

    bool a = true;
    bool b = false;

    function logicalOperations()public view returns(bool, bool, bool, bool){
     bool results1 = a && b;
     bool results2 = a || b;
     bool results3 = !a;
     bool results4 = !b;
     return (results1, results2, results3, results4);
    }
}