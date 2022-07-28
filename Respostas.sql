-- QUESTÃO 1

SELECT COUNT("endDate") as "currentExperiences" FROM experiences;



-- QUESTÃO 2

SELECT educations."userId" as id, COUNT("userId") as educations 
FROM educations 
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