# Unhandled Exception in Ownership Transfer

This repository demonstrates an uncommon bug in a Solidity smart contract's ownership transfer function. The issue lies in the lack of error handling within the internal transfer function, leading to potential unexpected behavior or failure during ownership changes.

## Bug Description
The `transferOwnership` function checks for the zero address, a common sanity check.  However, it doesn't handle any potential errors that might occur within the `_transferOwnership` function, leaving the contract vulnerable to unexpected failures.  For example, a malicious actor might attempt to set the newOwner to an invalid address or some other state that causes an error inside the _transferOwnership function.

## Solution
The solution includes robust error handling by using try-catch blocks. This allows handling errors or exceptions gracefully and providing informative feedback to users.