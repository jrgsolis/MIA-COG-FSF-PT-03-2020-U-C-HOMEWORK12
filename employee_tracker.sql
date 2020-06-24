DROP DATABASE IF EXISTS homework12;
CREATE DATABASE homework12;
USE homework12;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);


CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30)NOT NULL,
    salary DECIMAL (10,2) NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY(department_id) REFERENCES department (id)
   
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL, 
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL, 
    manager_id INT ,
    FOREIGN KEY (manager_id) REFERENCES employee(id),
    FOREIGN KEY(role_id) REFERENCES role(id)
);



INSERT INTO department (name) 
VALUES ("Sales"), ("Engineering"),("Legal"), ("Finance"),("Marketing");

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 60000 ,1),  
("Software Engineer", 80000,2),
("Lawyer", 100000, 3),
("Accountant",75000,4),
("Salesperson", 30000 ,1),
("Lead Engineer", 95000,2),
("Legal Team Lead", 90000, 3);



INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jameela", "James", 1, 1),
("Aline", "Nunes", 2, 1),
("Louise", "Akemi",3, 2),
("Chimeny","Louise",4, 3);