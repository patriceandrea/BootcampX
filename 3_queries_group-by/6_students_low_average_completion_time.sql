SELECT students.name as student, avg(assignments_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
FROM students
  JOIN assignments_submissions ON student_id = students.id
  JOIN assignments ON assignments.id = assignments_submissions.assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignments_submissions.duration)  < avg(assignments.duration)
ORDER BY average_assignment_duration; 