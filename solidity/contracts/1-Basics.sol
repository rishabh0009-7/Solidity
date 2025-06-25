// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// Basic first solidity program 
contract SumContract {
    function Sum(uint8 a, uint8 b) public pure returns (uint8) {
        return a + b;
    }
}

// require
contract RequireContract {
    uint256 public storedNumber;

    function setNumber(uint256 _number) public {
        require(_number > 0, "Number must be greater than 0");
        storedNumber = _number;
    }
}

// for loop
contract LoopContract {
    function addNumbers(uint256[] memory _numbers) public pure returns (uint256) {
        uint256 ans = 0;
        for (uint256 i = 0; i < _numbers.length; i++) {
            ans += _numbers[i];
        }
        return ans;
    }
}

// if-else
contract IfElseContract {
    function Categorize(uint256 _number) public pure returns (string memory) {
        if (_number < 10) {
            return "small";
        } else if (_number >= 10 && _number < 100) {
            return "medium";
        } else {
            return "large";
        }
    }
}
