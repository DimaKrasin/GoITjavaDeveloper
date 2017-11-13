CREATE OR REPLACE VIEW 5sql AS
  SELECT companies.id,
    companies.companie_name,
    customers.customer_name,
    MIN(projects.cost)
  FROM (((companies LEFT JOIN companies_projects ON companies.id = companies_projects.companie_id)
    LEFT JOIN projects ON companies_projects.project_id = projects.id)
    LEFT JOIN customers_projects ON projects.id = customers_projects.project_id)
    LEFT JOIN customers ON customers.id = customers_projects.custumer_id
  GROUP BY companies.id;