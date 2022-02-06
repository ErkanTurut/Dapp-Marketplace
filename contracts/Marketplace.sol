pragma solidity ^0.5.0;

contract Marketplace {
    string public name; 
    uint public productCount = 0;

    mapping(uint => Product) public products;


    struct Product{
        uint id; 
        //string ipfsHash;
        string name;
        uint price;
        address owner;
        bool purchased;
    }

    event ProductCreated(
        uint id,
        string name,
        uint price,
        address owner,
        bool purchased
    );

    function createProduct(string memory _name, uint _price) public {
        //require name 
        require(bytes(_name).length > 0);
        //require a valid price
        require(_price > 0);
        //increment product count 
        productCount++;

        //create the product
        products[productCount] = Product(productCount, _name, _price, msg.sender, false);
        //trigger an event
        emit ProductCreated(productCount, _name, _price, msg.sender, false);

    }




}