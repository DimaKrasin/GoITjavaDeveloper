DROP TABLE IF EXISTS tmp;

CREATE TABLE IF NOT EXISTS tmp(
  project_name VARCHAR(100) NOT NULL ,
  avg_salary DECIMAL NOT NULL
);

INSERT INTO tmp
  SELECT  project_name,AVG(developers.salary)
  FROM projects,developers_projects ,developers
  WHERE projects.id = developers_projects.project_id
        AND developers.id = developers_projects.developer_id
GROUP BY project_name
ORDER BY projects.cost
LIMIT 1;