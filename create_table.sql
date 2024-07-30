--CREATNG A TABLE--

CREATE TABLE account(
   user_id SERIAL PRIMARY KEY,
   username VARCHAR (50) UNIQUE NOT NULL,
   password VARCHAR(50) NOT NULL ,
   email VARCHAR(250) UNIQUE NOT NULL,
   created_on TIMESTAMP NOT NULL,
   last_login TIMESTAMP
);

CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
	
);

CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id)
);

CREATE TABLE account_job1(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP
);

SELECT * FROM account

--INSERT --
	
INSERT INTO account (username,password,email,created_on)
VALUES
('jose' , 'password' , 'jose@mail.com' , CURRENT_TIMESTAMP)

SELECT * FROM account

INSERT INTO job(job_name)
VALUES
('Astronaut')

SELECT * FROM job

INSERT INTO job(job_name)
VALUES
('President')

INSERT INTO account_job1(user_id,job_id,hire_date)
VALUES
  (1,1,CURRENT_TIMESTAMP)

SELECT * FROM account_job1

INSERT INTO account_job1(user_id,job_id,hire_date)
VALUES
(10,10,CURRENT_TIMESTAMP)

INSERT INTO account(user_name,password,email,created_on)
VALUES
('RAM' , 'root' , 'ram1@sanjivani.org',CURRENT_TIMESTAMP)

SELECT * FROM account

INSERT INTO job(job_name)
VALUES('Data Science')

SELECT * FROM job

--UPDATE--

UPDATE account
SET last_login = CURRENT_TIMESTAMP


SELECT * FROM account

UPDATE account
SET last_login = created_on

SELECT * FROM account_job1
SET hire_date = account.created_on
FROM account
WHERE account_job1.user_id = account.user_id






