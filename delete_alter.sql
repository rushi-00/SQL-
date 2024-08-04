--DELETE--

SELECT * FROM job

INSERT INTO job(job_name)
VALUES
('Cowboy')

DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id,job_name

--ALTER--

CREATE TABLE information(
	info_id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	person VARCHAR(50) NOT NULL UNIQUE
)

ALTER TABLE information
RENAME TO new_info

SELECT * FROM new_info

ALTER TABLE new_info
RENAME COLUMN person TO people

INSERT INTO new_info(title)
VALUES 
('some new title')

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL

---DROP---

SELECT * FROM new_info

ALTER TABLE new_info
DROP COLUMN people

ALTER TABLE new_info
DROP COLUMN IF EXISTS people

--CHECK--

CREATE TABLE employees(
	emp_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
	birthdate DATE CHECK (birthdate > '1900-01-01'),
	hire_date DATE CHECK (hire_date > birthdate),
	salary INTEGER CHECK (salary > 0)
)

INSERT INTO employees(
first_name,
	last_name,
	birthdate,
	hire_date,
	salary
)

VALUES
('jose',
'portilla' , 
'1990-11-02',
'2010-01-01',
100
)



INSERT INTO employees(
first_name,
	last_name,
	birthdate,
	hire_date,
	salary
)

VALUES
('joseph',
'morino' , 
'2001-11-02',
'2021-01-01',
200
)


SELECT * FROM employees

