ALTER TABLE developers ADD salary DECIMAL NOT NULL;

CREATE TABLE developers_tmp AS
SELECT id, first_name, second_name,salary FROM developers;

TRUNCATE TABLE developers;

INSERT INTO developers
    SELECT id,first_name,second_name,5000
    FROM developers_tmp;

DROP TABLE developers_tmp;






