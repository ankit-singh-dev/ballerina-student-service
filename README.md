# ballerina-student-service

Implemented restful web services using ballerine programming language.
https://ballerina.io/

To run the project, please follow the below mentioned points
1. Install ballerina.(Ballerina 2202.0.0 (Swan Lake))
2. Clone the project into your local machine.
3. Go to the root folder of the project and run bal run.

Below are the rest endpoints:

1. localhost:8089/home/getAllStudent (Get Call)
    get all the students.
    
2. localhost:8089/home/addStudent (Post call) (payload = {"rollNo":"1","name":"Foo bar"})
    add new student.
    
3. localhost:8089/home/updateStudent (Post call) (payload = {"rollNo":"1","name":"Foo bar updated"})
    update existing student.
    
4. localhost:8089/home/deleteStudent/{rollNo} (Get call) 
    Delete student that has specified rollno.
    
5. localhost:8089/home/getStudent/{rollNo} (Get call) 
    Get specified student that has specified rollno.


   
