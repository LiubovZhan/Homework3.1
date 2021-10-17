pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

contract hw31 {
       string[] public array;

    constructor() public {
        require(tvm.pubkey() != 0, 101);
        require(msg.pubkey() == tvm.pubkey(), 102);
        tvm.accept();     
    }

    function add (string name)public {
        array.push(name);
        tvm.accept();
    }
    
    function next () public{
        for (uint i=0; i<array.length-1; i++){
            array[i] = array[i+1];
        }
        array.pop();
        tvm.accept();
    }
   
}
