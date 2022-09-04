import student_service_ballerina.student_model;

map<student_model:student> studentsMap = {};

public function getStudent(string rollNo) returns student_model:student?|error{
    if studentsMap.hasKey(rollNo){
        return studentsMap.get(rollNo);
    }
    return error("Student does not exist with rollno "+rollNo);
}

public function addStudent(student_model:student payload) returns string|error{
    if studentsMap.hasKey(payload.rollNo){
        return error("Student already exist with rollno "+payload.rollNo);
    }else{
        studentsMap[payload.rollNo] = payload;
        return "Student added successfully";
    }
}

public function updateStudent(student_model:student payload) returns string|error{
    if studentsMap.hasKey(payload.rollNo){
        studentsMap[payload.rollNo] = payload;
        return "Student updated successfully";
    }else{
        return error("Student doesn't exist with rollno "+payload.rollNo);
    }
}

public function deleteStudent(string rollNo) returns string|error{
    if studentsMap.hasKey(rollNo){
        student_model:student deletedStudent = studentsMap.remove(rollNo);
        return "Student deleted successfully";
    }else{
        return error("Student does not exist with rollno "+rollNo);
    }
}

public function getAllStudents() returns student_model:student[]{
    return studentsMap.toArray();
}

