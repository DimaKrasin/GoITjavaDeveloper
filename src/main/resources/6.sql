CREATE OR REPLACE VIEW 6sql AS
  SELECT  min(projects.cost), projects.project_name,AVG(developers.salary)
  FROM (projects LEFT JOIN developers_projects ON projects.id=developers_projects.project_id)
    LEFT JOIN developers ON developers.id = developers_projects.developer_id;