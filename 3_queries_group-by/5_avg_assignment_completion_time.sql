SELECT students.name as student, avg(assignments_submissions.duration) as average_assignment_duration
FROM assignments_submissions
  JOIN students ON students.id = student_id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC; 
