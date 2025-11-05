CREATE TABLE Students (
    sid    CHAR(4) NOT NULL,
    name   VARCHAR(50) NOT NULL,
    major  VARCHAR(30),
    year   INT NOT NULL,
    gpa    NUMERIC(3, 2),
    PRIMARY KEY (sid)
);

CREATE TABLE Courses (
    cid     CHAR(4) NOT NULL,
    title   VARCHAR(100) NOT NULL,
    credits DECIMAL(2, 1) CHECK (credits >= 0 AND credits <= 1.5),
    PRIMARY KEY (cid)
);

CREATE TABLE Enrollments (
    sid   CHAR(4) NOT NULL,
    cid   CHAR(4) NOT NULL,
    grade CHAR(2) CHECK (
        (grade = ANY (
             ARRAY['A+', 'A', 'B', 'C', 'D', 'F']::bpchar[]
         ))
         OR grade is NULL
    ),
    PRIMARY KEY (sid, cid),
    FOREIGN KEY (sid) REFERENCES Students(sid),
    FOREIGN KEY (cid) REFERENCES Courses(cid)
);