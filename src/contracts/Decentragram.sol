pragma solidity ^0.5.0;

contract Decentragram {
  string public name;
  constructor() public {
    name = "Decentragram";
  }
  
  mapping(uint => Image) public images;
  uint public imageCount = 0;
  
  //storing
  struct Image {
    uint id;
    string hash;
    string description;
    uint tipAmount;
    address payable author;
  }


  //creating
  event ImageCreated(
    uint id,
    string hash,
    string description,
    uint tipAmount,
    address payable author
  );

  //tipping
  event ImageTipped(
    uint id,
    string hash,
    string description,
    uint tipAmount,
    address payable author
  );
}