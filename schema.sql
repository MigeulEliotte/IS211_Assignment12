CREATE TABLE students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

CREATE TABLE quizzes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    subject TEXT NOT NULL,
    questions_count INTEGER NOT NULL,
    quiz_date DATE NOT NULL
);

CREATE TABLE quiz_results (
    student_id INTEGER,
    quiz_id INTEGER,
    score INTEGER NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (quiz_id) REFERENCES quizzes(id),
    PRIMARY KEY (student_id, quiz_id)
);
 
