CREATE TABLE professor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    department VARCHAR(255)
);

CREATE TABLE course (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    credits INT,
    professorid INT,
    FOREIGN KEY (professorid) REFERENCES professor(id)
);

CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE course_student (
    courseid INT,
    studentid INT,
    FOREIGN KEY (courseid) REFERENCES course(id),
    FOREIGN KEY (studentid) REFERENCES student(id),
    PRIMARY KEY (courseid, studentid)
);