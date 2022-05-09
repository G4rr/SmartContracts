// SOME TESTING TEXT 

pragma solidity >=0.5.0 <0.7.0;

/*
* @author Oleksii
* @notice Hello World. I am testable smart contract 
*/

contract Benchmark1 
{
    uint public count = 1;
    
    function run(uint256 param) virtual public
    {
        if (param > 10) 
        {
            param = param - count;
        }
        // count += 1;
    }
}
contract Benchmark2 is Benchmark1
{
    function run(uint256 param) public override(Benchmark1)
    {
        assert(param > 100);
        // run(param);
    }
}
contract Benchmark3 
{
    function run(uint256 param, uint256 coin) public
    {
        assert(param < 200);
        assert(coin > 10);
    }
}

