import ballerina/http;
import student_service_ballerina.student_model;
import student_service_ballerina.student_service;

listener http:Listener httpListener = new(8089);

# A service representing a network-accessible API
# bound to port `8089`.
service /home on httpListener {

    resource function get getStudent/[string rollNo]() returns student_model:student?|error{
        return student_service:getStudent(rollNo);
    }

    resource function post addStudent(@http:Payload student_model:student payload) returns string|error{
        return student_service:addStudent(payload);
    }

    resource function post updateStudent(@http:Payload student_model:student payload) returns string|error{
        return student_service:updateStudent(payload);
    }

    resource function get deleteStudent/[string rollNo]() returns string|error{
        return student_service:deleteStudent(rollNo);
    }

    resource function get getAllStudent() returns student_model:student[]{
        return student_service:getAllStudents();
    }
}


