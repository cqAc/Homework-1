// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    bool is_first_time = true;

    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if (is_first_time) {
            is_first_time = false;
            return 1000;
        }
        return 123;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        address caller_address = msg.sender;
        IClassroomV2 caller = IClassroomV2(caller_address);
        if (!caller.isEnrolled()) {
            return 1000;
        } else {
            return 123;
        }
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        if (gasleft() > 7000) {
            return 1000;
        } else {
            return 123;
        }
    }
}
