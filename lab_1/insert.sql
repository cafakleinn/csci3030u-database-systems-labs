insert into students values
('S101', 'Alice Wong', 'Computer Science', 2, 3.80),
('S102', 'Bob Smith', 'Mathematics', 3, 3.20),
('S103', 'Emma Patel', 'Biology', 2, 3.50)
;

insert into courses values
('C201', 'Database Systems', 1.5),
('C202', 'Linear Algebra', 1.0),
('C203', 'Intro to Biology', 1.5)
;


insert into enrollments values
('S101', 'C201', NULL),
('S101', 'C203', 'B'),
('S102', 'C202', 'B')
;
