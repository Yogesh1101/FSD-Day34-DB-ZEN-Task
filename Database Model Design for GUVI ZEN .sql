-- Database Model Design for GUVI ZEN CLASS

-- 1. Class Table

CREATE TABLE class {
    "class_id" INT (primary key),
    "class_name" VARCHAR,
    "content" TEXT,
    "mentor_id" INT,
    "task" TEXT,
}

-- 2. Users Table

CREATE TABLE users {
    "user_id" INT (primary key),
    "name" VARCHAR,
    "email" VARCHAR,
    "password" VARCHAR,
    "role" VARCHAR,
}

-- 3. Mentors Table

CREATE TABLE mentors {
    "mentor_id" INT (primary key),
    "user_id" INT,
    "name" VARCHAR,
    "email" VARCHAR,
    "phone_number" VARCHAR,
    "qualification" TEXT,
    "work_experience" TEXT
}

-- 4. Students Table

CREATE TABLE students {
    "student_id" INT (primary key),
    "user_id" INT,
    "name" VARCHAR,
    "email" VARCHAR,
    "phone_number" VARCHAR,
    "qualification" TEXT
}

-- 5. Tasks Table

CREATE TABLE tasks {
    "task_id" INT (primary key),
    "class_id" INT,
    "student_id" INT,
    "title" VARCHAR,
    "description" TEXT,
    "deadline" DATE
}

-- 6. Queries Table

CREATE TABLE queries {
    "query_id" INT (primary key),
    "student_id" INT,
    "class_id" INT,
    "title" VARCHAR,
    "status" VARCHAR,
    "date" DATE    
}

-- 7. Mock Interview Table

CREATE TABLE mock_interview {
    "interview_id" INT (primary key),
    "student_id" INT,
    "date" DATE,
    "score" INT,
    "comment" TEXT
}

-- 8. Leave Application Table

CREATE TABLE leave_application {
    "application_id" INT (primary key),
    "student_id" INT,
    "from" DATE,
    "to" DATE,
    "status" VARCHAR,
    "reason" TEXT
}

-- 9. Leader Board Table

CREATE TABLE leader_board {
    "student_id" INT,
    "rank" INT,
    "batch" VARCHAR,
    "name" VARCHAR
}

-- 10. FeedBack Table

CREATE TABLE feed_back {
    "feedback_id" INT (primary key),
    "student_id" INT,
    "class_id" INT,
    "session_feedback" TEXT,
    "mentor_feedback" TEXT
}
