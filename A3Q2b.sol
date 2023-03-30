pragma solidity ^0.8.1;
library SafeMath
{
    function add(int256 a, int256 b) internal pure returns(int256)
    {
        int256 c = a + b;
        return c;
    }
    function sub(int256 a, int256 b) internal pure returns(int256)
    {
        int256 c = a - b;
        return c;
    }
    function mul(int256 a, int256 b) internal pure returns(int256)
    {
        int256 c = a * b;
        return c;
    }
    function div(int256 a, int256 b) internal pure returns(bool,int256)
    {
        if (b == 0) 
        return (false, 0);
        int256 c = a / b;
        return (true,c);
    }
}
contract mathOperation
{
    using SafeMath for int256;
    function testadd(int256 a,int256 b) external pure returns(int256)   
    {
        return SafeMath.add(a,b);
    }
    function testsub(int256 a,int256 b) external pure returns(int256)   
    {
        return SafeMath.sub(a,b);
    }
    function testmul(int256 a,int256 b) external pure returns(int256)   
    {
        return SafeMath.mul(a,b);
    }
    function testdiv(int256 a,int256 b) external pure returns(bool,int256)   
    {
        return SafeMath.div(a,b);
    }
}