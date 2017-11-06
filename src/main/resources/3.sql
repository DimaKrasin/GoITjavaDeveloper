DROP TABLE IF EXISTS TMP;

CREATE TABLE IF NOT EXISTS TMP(
  skill VARCHAR(100) NOT NULL ,
  sum DECIMAL NOT NULL
);

INSERT INTO TMP
SELECT skills.skill, sum(salary)
FROM developers,developers_skills,skills
WHERE developers.id = developers_skills.developer_id
      AND skills.id = developers_skills.skill_id
      AND skill = 'Java developer'

