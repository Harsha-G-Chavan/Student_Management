// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract StudentManagement {

    struct Student {
        uint id;
        string name;
        uint age;
    }

    Student public student;

    // Store student details
    function setStudent(
        uint _id,
        string memory _name,
        uint _age
    ) public {
        student = Student(_id, _name, _age);
    }

    // Retrieve student details
    function getStudent() public view returns (
        uint,
        string memory,
        uint
    ) {
        return (
            student.id,
            student.name,
            student.age
        );
    }
}
