// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    uint256 private registerCallCount = 0;
    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        registerCallCount++;
        if(registerCallCount % 2 == 0)
            return 123;
        return 2000;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        IClassroomV2 class = IClassroomV2(msg.sender);
        if (class.isEnrolled())
            return 123;
        return 2000;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        if(gasleft() <= 7000)
            return 123;
        return gasleft();
    }
}
