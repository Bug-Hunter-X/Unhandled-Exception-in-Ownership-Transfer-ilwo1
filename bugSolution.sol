function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  try {
    _transferOwnership(newOwner);
  } catch (bytes memory reason) {
    // Handle the exception appropriately.  For example, you might revert or emit an event
    if (reason.length > 0) {
      assembly {
        revert(add(32, reason), mload(reason))
      }
    } else {
      revert("Error during ownership transfer");
    }
  }
}

function _transferOwnership(newOwner) {
  emit OwnershipTransferred(_owner, newOwner);
  _owner = newOwner;
}