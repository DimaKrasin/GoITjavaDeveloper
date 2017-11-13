CREATE OR REPLACE VIEW  `2sql` AS
  SELECT projects.project_name , sum(developers.salary) AS total_sum
  FROM projects,developers_projects LEFT JOIN developers ON
                                                 developers_projects.developer_id = developers.id
  WHERE projects.id =developers_projects.project_id
  GROUP BY projects.project_name
  ORDER BY sum(developers.salary) DESC
  LIMIT 1;