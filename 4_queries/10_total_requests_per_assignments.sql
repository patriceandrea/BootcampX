SELECT assignments.id as id, assignments.name as name, assignments.chapter as chapter, count(assistance_requests.id) as total_requests
FROM assignments
  JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignments.id, assignments.name, chapter
ORDER BY total_requests DESC; 