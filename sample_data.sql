-- Sample Data
USE `bookbusy`;


--  POPULATE AUTHORS

INSERT INTO `Authors` VALUES(1, 'Liam', 'Smith');
INSERT INTO `Authors` VALUES(2, 'Olivia', 'Williams');
INSERT INTO `Authors` VALUES(3, 'Noah', 'Lopez');
INSERT INTO `Authors` VALUES(4, 'Evelyn', 'Nguyen');
INSERT INTO `Authors` VALUES(5, 'Elijah', 'Ali');
INSERT INTO `Authors` VALUES(6, 'Anna', 'Parker');
INSERT INTO `Authors` VALUES(7, 'Benjamin', 'Alves');
INSERT INTO `Authors` VALUES(8, 'Sophia', 'Thomas');
INSERT INTO `Authors` VALUES(9, 'Lucas', 'Wang');
INSERT INTO `Authors` VALUES(10, 'Harper', 'Lee');
INSERT INTO `Authors` VALUES(11, 'William', 'Johnson');
INSERT INTO `Authors` VALUES(12, 'Charlotte', 'Short');

--  TABLE PUBLISHERS - INPUT DATA

INSERT INTO `Publishers` VALUES(1,'Paper Books', 0.2);
INSERT INTO `Publishers` VALUES(2,'Publish or Perish', 0.25);
INSERT INTO `Publishers` VALUES(3,'Bookmakers', 0.3);
INSERT INTO `Publishers` VALUES(4,'Writers Inc', 0.2);
INSERT INTO `Publishers` VALUES(5,'Printing Press', 0.28);
INSERT INTO `Publishers` VALUES(6,'Read it and Weep', 0.3);

--  TABLE EDITORS - INPUT DATA

INSERT INTO `Editors` VALUES(1, 'Saad', 'Bright');
INSERT INTO `Editors` VALUES(2, 'Zuzanna', 'Sanders');
INSERT INTO `Editors` VALUES(3, 'Pharrell', 'Legge');
INSERT INTO `Editors` VALUES(4, 'Anabel', 'Frane');
INSERT INTO `Editors` VALUES(5, 'Marianne', 'Dorsey');
INSERT INTO `Editors` VALUES(6, 'Khalid', 'Pena');
INSERT INTO `Editors` VALUES(7, 'Muna', 'Santiago');
INSERT INTO `Editors` VALUES(8, 'Bear', 'Beltran');
INSERT INTO `Editors` VALUES(9, 'Derek', 'Clayton');
INSERT INTO `Editors` VALUES(10, 'Christos', 'Gunn');
INSERT INTO `Editors` VALUES(11, 'Karson', 'Milne');
INSERT INTO `Editors` VALUES(12, 'Octavia', 'Church');
INSERT INTO `Editors` VALUES(13, 'Fiona', 'Hope');
INSERT INTO `Editors` VALUES(14, 'Dana', 'Sims');
INSERT INTO `Editors` VALUES(15, 'Aidan', 'Jones');
INSERT INTO `Editors` VALUES(16, 'Kim', 'Cresswell');
INSERT INTO `Editors` VALUES(17, 'Arnas', 'Goodman');
INSERT INTO `Editors` VALUES(18, 'Austin', 'Olsen');
INSERT INTO `Editors` VALUES(19, 'Colm', 'Redfern');
INSERT INTO `Editors` VALUES(20, 'Arlene', 'Black');

-- CUSTOMERS

INSERT INTO `Customers` VALUES( 1, 'Agatha', 'Donovan');
INSERT INTO `Customers` VALUES( 2, 'Linda', 'Brown');
INSERT INTO `Customers` VALUES( 3, 'Adam', 'Deans');
INSERT INTO `Customers` VALUES( 4, 'Elliot', 'Anderson');
INSERT INTO `Customers` VALUES( 5, 'William', 'Shaw');
INSERT INTO `Customers` VALUES( 6, 'Woodrow', 'Snider');
INSERT INTO `Customers` VALUES( 7, 'Gale', 'Becker');
INSERT INTO `Customers` VALUES( 8, 'Emily', 'Martin');
INSERT INTO `Customers` VALUES( 9, 'Lizzie', 'Osbourne');
INSERT INTO `Customers` VALUES( 10, 'Janice', 'Ewen');
INSERT INTO `Customers` VALUES( 11, 'Beatrice', 'Parsons');
INSERT INTO `Customers` VALUES( 12, 'Otis', 'Lambert');
INSERT INTO `Customers` VALUES( 13, 'Tilda', 'Matthews');
INSERT INTO `Customers` VALUES( 14, 'Ned', 'Mccoy');

--  POPULATE BOOKS

INSERT INTO `Books` VALUES(1, 'Red Blue and Yellow' ,'Fiction', 19.99, 2, NULL, NULL, 3, 1, 5, 19);
INSERT INTO `Books` VALUES(2, 'Gold Silver Crystal', 'Non-Fiction', 14.00, 3, 12, 1, 2, 2, 4, 12);
INSERT INTO `Books` VALUES(3, 'Fire Red', 'Fantasy', 18.50, 5, 7, NULL, 1, 6, 7, 5);
INSERT INTO `Books` VALUES(4, 'Leaf Green', 'Non-Fiction', 16.25, 7, 8, NULL, 6, 8, 11, 14);
INSERT INTO `Books` VALUES(5, 'Land and Sea', 'Fiction', 15.50, 12, NULL, NULL, 4, 12, NULL, 7);
INSERT INTO `Books` VALUES(6, 'Platinum', 'Fiction', 22.00, 2, 9, NULL, 5, 13, 16, 17);
INSERT INTO `Books` VALUES(7, 'Black White', 'Fiction', 19.75, 1, NULL, NULL, 4, 18, 9, 6);
INSERT INTO `Books` VALUES(8, 'X and Y', 'Fiction', 16.00, 4, NULL, NULL, 5, 10, NULL, 8);
INSERT INTO `Books` VALUES(9, 'Sun and Moon', 'Fiction', 13.00, 1, 3, NULL, 6, 15, 1, 9);
INSERT INTO `Books` VALUES(10, 'Sword and Shield', 'Fantasy', 14.25, 11, 5, NULL, 6, 1, 2, 3);


-- ORDERS

INSERT INTO `Orders` VALUES(1, 1, 1, 2);
INSERT INTO `Orders` VALUES(2, 1, 1, 4);
INSERT INTO `Orders` VALUES(3, 1, 1, 6);
INSERT INTO `Orders` VALUES(4, 1, 1, 8);
INSERT INTO `Orders` VALUES(5, 2, 2, 1);
INSERT INTO `Orders` VALUES(6, 2, 2, 3);
INSERT INTO `Orders` VALUES(7, 2, 2, 9);
INSERT INTO `Orders` VALUES(8, 2, 2, 11);
INSERT INTO `Orders` VALUES(9, 2, 2, 5);
INSERT INTO `Orders` VALUES(10, 3, 3, 7); 
INSERT INTO `Orders` VALUES(11, 3, 3, 10); 
INSERT INTO `Orders` VALUES(12, 3, 3, 9); 
INSERT INTO `Orders` VALUES(13, 3, 3, 2); 
INSERT INTO `Orders` VALUES(14, 3, 3, 4); 
INSERT INTO `Orders` VALUES(15, 3, 3, 8); 
INSERT INTO `Orders` VALUES(16, 3, 3, 19); 
INSERT INTO `Orders` VALUES(17, 3, 3, 16); 
INSERT INTO `Orders` VALUES(18, 3, 3, 14); 
INSERT INTO `Orders` VALUES(19, 4, 4, 20); 
INSERT INTO `Orders` VALUES(20, 4, 4, 15); 
INSERT INTO `Orders` VALUES(21, 5, 1, 13); 
INSERT INTO `Orders` VALUES(22, 5, 1, 19); 
INSERT INTO `Orders` VALUES(23, 5, 1, 11); 
INSERT INTO `Orders` VALUES(24, 5, 1, 12); 
INSERT INTO `Orders` VALUES(25, 6, 5, 1);
INSERT INTO `Orders` VALUES(26, 6, 5, 2);
INSERT INTO `Orders` VALUES(27, 6, 5, 3);
INSERT INTO `Orders` VALUES(28, 6, 5, 5);
INSERT INTO `Orders` VALUES(29, 7, 6, 3);
INSERT INTO `Orders` VALUES(30, 7, 6, 14);

