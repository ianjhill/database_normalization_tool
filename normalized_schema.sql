-- Table: students
CREATE TABLE students (
  `StudentName` VARCHAR(255),
  `StudentID` INT,
  `DepartmentName` VARCHAR(255),
  `CourseNames` VARCHAR(255)
);

-- Inserting into students
INSERT INTO students VALUES ('Alice', 1, 'Science', 'Math');
INSERT INTO students VALUES ('Bob', 2, 'Science', 'Chemistry');
INSERT INTO students VALUES ('Charlie', 3, 'Arts', 'English');
INSERT INTO students VALUES ('Diana', 4, 'Arts', 'Philosophy');
INSERT INTO students VALUES ('Eve', 5, 'Science', 'Biology');
INSERT INTO students VALUES ('Frank', 6, 'Humanities', 'Geography');
INSERT INTO students VALUES ('Grace', 7, 'Humanities', 'Economics');
INSERT INTO students VALUES ('Hank', 8, 'Arts', 'History');
INSERT INTO students VALUES ('Ivy', 9, 'Science', 'Physics');
INSERT INTO students VALUES ('John', 10, 'Arts', 'Philosophy');


-- Table: Departments
CREATE TABLE Departments (
  `DepartmentID` VARCHAR(255),
  `DepartmentName` VARCHAR(255)
);

-- Inserting into Departments
INSERT INTO Departments VALUES ('D1', 'Science');
INSERT INTO Departments VALUES ('D2', 'Arts');
INSERT INTO Departments VALUES ('D3', 'Humanities');


-- Table: department_courses
CREATE TABLE department_courses (
  `DepartmentName` VARCHAR(255),
  `CourseIDs` VARCHAR(255)
);

-- Inserting into department_courses
INSERT INTO department_courses VALUES ('Science', 'C101');
INSERT INTO department_courses VALUES ('Science', 'C103');
INSERT INTO department_courses VALUES ('Arts', 'C104');
INSERT INTO department_courses VALUES ('Arts', 'C106');
INSERT INTO department_courses VALUES ('Science', 'C107');
INSERT INTO department_courses VALUES ('Humanities', 'C109');
INSERT INTO department_courses VALUES ('Humanities', 'C110');
INSERT INTO department_courses VALUES ('Arts', 'C112');
INSERT INTO department_courses VALUES ('Science', 'C113');
INSERT INTO department_courses VALUES ('Arts', 'C114');


-- Table: Department_course_ids
CREATE TABLE Department_course_ids (
  `DepartmentID` VARCHAR(255),
  `CourseIDs` VARCHAR(255)
);

-- Inserting into Department_course_ids
INSERT INTO Department_course_ids VALUES ('D1', 'C101');
INSERT INTO Department_course_ids VALUES ('D1', 'C103');
INSERT INTO Department_course_ids VALUES ('D2', 'C104');
INSERT INTO Department_course_ids VALUES ('D2', 'C106');
INSERT INTO Department_course_ids VALUES ('D1', 'C107');
INSERT INTO Department_course_ids VALUES ('D3', 'C109');
INSERT INTO Department_course_ids VALUES ('D3', 'C110');
INSERT INTO Department_course_ids VALUES ('D2', 'C112');
INSERT INTO Department_course_ids VALUES ('D1', 'C113');
INSERT INTO Department_course_ids VALUES ('D2', 'C114');


-- Table: student_course_ids
CREATE TABLE student_course_ids (
  `StudentID` INT,
  `CourseIDs` VARCHAR(255)
);

-- Inserting into student_course_ids
INSERT INTO student_course_ids VALUES (1, 'C101');
INSERT INTO student_course_ids VALUES (2, 'C103');
INSERT INTO student_course_ids VALUES (3, 'C104');
INSERT INTO student_course_ids VALUES (4, 'C106');
INSERT INTO student_course_ids VALUES (5, 'C107');
INSERT INTO student_course_ids VALUES (6, 'C109');
INSERT INTO student_course_ids VALUES (7, 'C110');
INSERT INTO student_course_ids VALUES (8, 'C112');
INSERT INTO student_course_ids VALUES (9, 'C113');
INSERT INTO student_course_ids VALUES (10, 'C114');


