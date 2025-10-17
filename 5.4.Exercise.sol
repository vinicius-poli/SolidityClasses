pragma solidity >= 0.7.0 < 0.9.0;

//1. create a string called favoriteColor
//2. set the favorite color to blue
//3. create a function which returns the string literal of favoriteColor
//4. create a function which changes the favoriteColor string literal from another
//5. create a function which can return how many characters there are in the string favoriteColor

contract exerciseStrings {

    string favoriteColor = 'blue';

    function Fcolor() public view returns (string memory) {
        return favoriteColor;
    }

    function changeColor(string memory _changeC) public {
        favoriteColor = _changeC;
    }

    function chars() public view returns (uint) {

        bytes memory _strToBytes = bytes(favoriteColor);
        return _strToBytes.length;
    }
}