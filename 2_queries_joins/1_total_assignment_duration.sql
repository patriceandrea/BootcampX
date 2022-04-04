SELECT sum(assignments_submissions.duration) as total_duration 
FROM assignments_submissions
JOIN  students on students.id = student_id
where students.name = 'Ibrahim Schimmel'; 