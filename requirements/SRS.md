ONLINE EXAMINATION SYSTEM
Software Verification & Validation (SVV) Semester Project

 Group Members
Muhammad Furqan
Abdul Rehman

 Course
Software Verification & Validation Lab

Department
BS Software Engineering

1. INTRODUCTION
The Online Examination System is a software platform designed to conduct examinations digitally. It allows students to register, log in, attempt exams, and submit answers online. Teachers or administrators can create exams, manage questions, and publish results.
This project focuses on the formal verification and validation of the system using:
Z Notation
VDM Specification
Alloy Modeling
Validation & Security Testing
The main objective is to ensure correctness, consistency, reliability, and security of system behavior.

2. OBJECTIVES
Conduct examinations online securely
Allow only single submission per exam
Maintain exam time constraints
Store exam records and results
Apply formal verification techniques
Detect logical inconsistencies using Alloy

3. SYSTEM OVERVIEW
Main Actors
Student
Admin / Teacher

Main Features
Student registration and login
Exam creation
Start and attempt exam
Submit exam
Result storage
Time limit enforcement

4. SOFTWARE REQUIREMENTS SPECIFICATION (SRS)
4.1 Functional Requirements
Student Functions
Register account
Login to system
Attempt exam
Submit exam
View result

Admin Functions
Create exams
Add questions
Manage students
Publish results

4.2 Non-Functional Requirements
Requirement	  Description
Security	    Unauthorized access should be prevented
Reliability	  System should not crash
Performance	  System should respond quickly
Availability	System should remain accessible
Usability	    Interface should be simple and user-friendly
4.3 Use Case Descriptions
Use Case 1 — Login
Field	         Description
Actor	         Student
Purpose	       Access system
Precondition	 Student must be registered
Postcondition	 Student is logged in

Use Case 2 — Start Exam
Field         	Description
Actor	          Student
Purpose	Begin   examination
Precondition	  Student is logged in
Postcondition	  Exam becomes active

Use Case 3 — Submit Exam
Field	           Description
Actor	           Student
Purpose	         Submit answers
Precondition	   Exam is active
Postcondition	   Submission is stored

7. REQUIREMENT DEFECT TAXONOMY
Requirement	                              Defect                        Type	Problem
“System should be fast”	                  Ambiguity	                    “Fast” is not defined
“Students may submit multiple times”	    Inconsistency	                Conflicts with single submission rule
“Interface should look good”	            Non-verifiable	              Cannot be measured properly

9. GITHUB ISSUES TRACKING EXAMPLES
Issue ID	       Title	Status
#1	             Login validation missing	Closed
#2	             Multiple submission bug	Closed
#3	             Timer inconsistency	Open
