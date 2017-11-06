SELECT  companie_name,customer_name,min(cost)
FROM companies,companies_projects,projects,customers_projects,customers
WHERE  companies.id = companies_projects.companie_id
       AND projects.id = companies_projects.project_id
       AND customers.id = customers_projects.custumer_id
       AND projects.id = customers_projects.project_id
GROUP BY customer_name;