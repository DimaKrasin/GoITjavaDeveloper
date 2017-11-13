CREATE  OR REPLACE VIEW 3sql AS
SELECT 'Java developer' as Skill, sum(developers.salary) as 'Total salary' FROM developers
  LEFT JOIN developers_skills ON developers.id = developers_skills.developer_id
  LEFT JOIN skills ON developers_skills.skill_id = skills.id
WHERE skills.skill = 'Java developer';


