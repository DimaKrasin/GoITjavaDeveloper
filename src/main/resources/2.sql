SELECT project_name, sum(developers.salary)
FROM developers, developers_projects, projects
WHERE developers.id = developers_projects.developer_id AND developers_projects.project_id=projects.id
GROUP BY project_name
ORDER BY sum(developers.salary) DESC
LIMIT 1;