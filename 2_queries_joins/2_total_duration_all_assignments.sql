SELECT sum(assignments_submissions.duration) as total_duration
FROM assignments_submissions
  JOIN students on students.id = student_id
  JOIN cohorts on cohorts.id  = cohort_id
WHERE cohorts.name = 'FEB12'; 