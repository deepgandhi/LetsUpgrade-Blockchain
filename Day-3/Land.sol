pragma solidity >=0.4.22 <0.7.0;

contract Land{
    
    string Owner;
    uint64 Area; //in acers
    bool Merged=false;
    
    function Land(string newOwner,uint64 newArea) public{
        Owner=newOwner;
        Area=newArea;
    }
    
    function setOwner(string newOwner) public{
        Owner=newOwner;
    }
    
    function getOwner() public view returns(string){
        return Owner;
    } 
    
    function getArea() public view returns(uint64){
        if (Merged==true){return 0;}
        else{return Area;}
    }
    
    function setMerged(){
        Merged=true;
    }
    
    function Merge(Land B)public{
        string memory b=B.getOwner();
        string memory a=getOwner();
        uint64 c=getArea();
        uint64 d=B.getArea();
        if(keccak256(a)==keccak256(b))
        {Area=c+d;
         B.setMerged();
        }
    }
}
