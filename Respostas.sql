-- QUESTÃO 1

SELECT COUNT("endDate") as "currentExperiences" FROM experiences;



-- QUESTÃO 2

SELECT educations."userId" as id, COUNT("userId") as educations 
FROM educations 
WHERE educations.status = 'finished' 
GROUP BY "userId";



-- QUESTÃO 3

SELECT u.name as writer, COUNT(t."writerId") as "testimonailCount" 
FROM testimonials t 
JOIN users u 
ON t."writerId" = u.id 
GROUP BY u.name;



-- QUESTÃO 4

SELECT MAX(jobs.salary) as "maximumSalary", roles.name as role 
FROM jobs 
JOIN roles 
ON jobs."roleId" = roles.id 
WHERE jobs.active = true 
GROUP BY roles.name 
ORDER BY "maximumSalary";



-- BÔNUS

SELECT s.name as school, c.name as course, COUNT(e."userId") as "studentsCount", e.status as role 
FROM educations e 
JOIN schools s 
ON e."schoolId" = s.id 
JOIN courses c 
ON e."courseId" = c.id 
WHERE e.status = 'ongoing' OR e.status = 'finished' 
GROUP BY school, course, role 
ORDER BY "studentsCount" DESC 
LIMIT 3;