contract Cause {
    address public organizer;
    uint public award;

      function Cause() {
        organizer = msg.sender;
      }



}