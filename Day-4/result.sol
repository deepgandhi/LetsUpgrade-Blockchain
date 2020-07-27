pragma solidity ^0.4.17 <0.6.0;

contract Result{
    
    string name;
    uint roll_no;
    uint batch;
    uint subject1;
    uint subject2;
    uint subject3;
    uint subject4;
    string pass;
    
    function Result(string Student_Name,uint RollNo,uint Batch_No,uint science,uint maths, uint economics, uint english, string status) public {
        name=Student_Name;
        roll_no=RollNo;
        batch=Batch_No;
        subject1=science;
        subject2=maths;
        subject3=economics;
        subject4=english;
        pass=status;
    }
    
    function getDetails() public view returns(string,uint,uint,uint,uint,uint,uint,string){
        return(name,roll_no,batch,subject1,subject2,subject3,subject4,pass);
        
    }
}

