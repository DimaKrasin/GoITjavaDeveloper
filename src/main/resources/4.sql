ALTER TABLE projects ADD cost DECIMAL NOT NULL;

UPDATE projects SET cost = 2000 WHERE projects.id = 1;
UPDATE projects SET cost = 5000 WHERE projects.id = 2;
UPDATE projects SET cost = 4000 WHERE projects.id = 3;
UPDATE projects SET cost = 3500 WHERE projects.id = 4;
UPDATE projects SET cost = 10000 WHERE projects.id = 5;
UPDATE projects SET cost = 200 WHERE projects.id = 6;