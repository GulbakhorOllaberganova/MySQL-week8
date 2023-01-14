DROP TABLE IF EXISTS project;
DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS project_category;

CREATE TABLE project(
 project_id INT AUTO_INCREMENT NOT NULL,
 project_name VARCHAR(128) NOT NULL,
 estimated_hours DECIMAL(7,2),
 actual_hours DECIMAL(7,2),
 difficulty INT, 
 notes TEXT,
PRIMARY KEY(project_id));

CREATE TABLE material(
material_id INT AUTO_INCREMENT NOT NULL, project_id INT, 
material_name VARCHAR(128)NOT NULL,
num_required INT,
cost DECIMAL(7,2),
PRIMARY KEY(material_id));

CREATE TABLE step(
step_id INT auto_increment NOT NULL,
 project_id INT NOT NULL,
  step_text TEXT NOT NULL,
   step_order INT NOT null,
   PRIMARY KEY(step_id));

CREATE TABLE category(
category_id INT auto_increment NOT NULL, 
category_name VARCHAR(128)NOT null,
primary key(category_id));

CREATE TABLE project_category(
project_id INT NOT NULL,
category_id INT NOT NULL);