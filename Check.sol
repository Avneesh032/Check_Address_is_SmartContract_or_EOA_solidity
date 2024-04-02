// SPDX-License-Identifier:UNLICENSED
pragma solidity^0.8.19;

contract p {
    function isContract(address _address) public view returns(bool) {
        uint codeSize;
        assembly {
            codeSize := extcodesize(_address)
        }
        return codeSize > 0;
    }
}
