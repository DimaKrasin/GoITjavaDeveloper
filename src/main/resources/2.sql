CREATE OR REPLACE VIEW  `2sql` AS
  SELECT developers_projects.project_id, sum(developers.salary) AS total_sum
  FROM developers_projects LEFT JOIN developers ON
                                                 developers_projects.developer_id = developers.id
  GROUP BY developers_projects.project_id
  ORDER BY sum(developers.salary) DESC
  LIMIT 1;