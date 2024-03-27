// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    uint code = 1000;
    uint count;

    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if (count != 0) {
            code = 123;
        }
        count += 1;
        return code; 
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if (IClassroomV2(msg.sender).isEnrolled() == false) {
            return 1000;
        } else {
            return 123;
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if (gasleft() >= 7000) {
            return 1000;
        } else {
            return 123;
        }
    }
}
