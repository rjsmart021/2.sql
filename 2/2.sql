#Module 5 Lesson 2: Assignment | Structured Query Language (SQL)
#1. Managing a Fitness Center Database

#Task 1: SQL Data Insertion
#Problem Statement: Your task is to populate the Members and WorkoutSessions
#tables with relevant data. This will involve inserting records into both tables
#while ensuring data integrity and consistency.
#Expected Outcome: New member records are successfully added to the Members 
#table with their respective details.
Members Table Structure:

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
);

INSERT INTO Members ('id')
VALUES ('M_ar34', 'J_am34', 'C_ar34', 'J_Do25','J_SM33');
INSERT INTO Members (name)
VALUES ('Martha G', 'James p', 'Carmello j','Jane Doe','John Smith');
INSERT INTO Members (age)
VALUES ('67', '24', '27','53','12');

WorkoutSessions Table Structure:

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (session_id)
VALUES ('288', '344', '134','234','345');
INSERT INTO Members (member_id)
VALUES ('M_ar34', 'J_am34', 'C_ar34', 'J_Do25','J_SM33');
INSERT INTO Members (session_date)
VALUES ('6/21/2013','6/21/2013','6/21/2013','6/21/2013','6/21/2013');
INSERT INTO Members (session_time)
VALUES ('9:10am', '11:20am', '7:30am','7:00am','6:00am');
INSERT INTO Members (activity)
VALUES ('Running', 'Dancing', 'Walking','Swim', 'Skating');
INSERT INTO Members (FOREIGN KEY)
VALUES ('554565', '667687', '556564','112323','123456');

UPDATE WorkoutSessions
SET name = 'Jane Doe', session_time = '7:00pm'
WHERE session_id = '234';

#Task 2: SQL Data Update
DELETE FROM Members WHERE name = 'John Smith';
