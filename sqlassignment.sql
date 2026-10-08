CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department VARCHAR(30) NOT NULL,
    job_title VARCHAR(50),
    salary NUMERIC(10,2) NOT NULL,
    city VARCHAR(30)
);

INSERT INTO employees
(employee_id, employee_name, department, job_title, salary, city)
VALUES
(101, 'Ram Sharma', 'IT', 'Developer', 60000, 'Kathmandu'),
(102, 'Sita Thapa', 'HR', 'HR Officer', 50000, 'Pokhara'),
(103, 'Amit Gurung', 'IT', 'Developer', 65000, 'Kathmandu'),
(104, 'Nisha Rai', 'Finance', 'Accountant', 55000, 'Lalitpur'),
(105, 'Bikash Shrestha', 'IT', 'Tester', 52000, 'Bhaktapur'),
(106, 'Puja Karki', 'HR', 'Recruiter', 48000, 'Kathmandu'),
(107, 'Ramesh Tamang', 'Finance', 'Accountant', 60000, 'Pokhara'),
(108, 'Anu Lama', 'IT', 'Developer', 70000, 'Lalitpur'),
(109, 'Suman KC', 'HR', 'Manager', 75000, 'Kathmandu'),
(110, 'Mina Gurung', 'Finance', 'Manager', 80000, 'Kathmandu'),
(111, 'Dipesh Rai', 'IT', 'Developer', 62000, 'Pokhara'),
(112, 'Sabina Thapa', 'HR', 'HR Officer', 52000, 'Lalitpur');

select department, count(*) from employees group by department;

select department, avg(salary) as averagesalart from employees group by department;

select department, MAX(salary) as mostsalary from employees group by department; 

select department, MIN(salary) as leastsalary from employees group by department;

select department, sum(salary) as totalsalary from employees group by department;

select department, count(*) from employees group by department having count(*)>3;

select department, avg(salary) as averagesalart from employees group by department having AVG(salary)>60000;

select department, avg(salary) as averagesalart from employees where salary>50000 group by department;

select department, count(*) from employees where city = 'Kathmandu' group by department;










