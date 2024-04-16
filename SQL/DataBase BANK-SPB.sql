CREATE DATABASE BSPB;

USE BSPB;

CREATE TABLE Authorization (
    -> Id INT (10) PRIMARY KEY AUTO_INCREMENT,
    -> Login VARCHAR(20) NOT NULL,
    -> Password VARCHAR(20) NOT NULL);

INSERT INTO Authorization (login, password) VALUES ('Di','qwerty'), ('Gizmo','HiWorld8'), ('Les','12345678');
INSERT INTO Authorization (login, password) VALUES ('Gavrik','Mat*er7P'), ('Sheva','Qua6qwe8'), ('Losyash','Fer&Up2k');

CREATE TABLE Users ( 

    -> User_id INT PRIMARY KEY AUTO_INCREMENT, 

    -> First_name VARCHAR(30) NOT NULL, 

    -> Last_name VARCHAR(30) NOT NULL, 

    -> Email VARCHAR(50) NOT NULL, 

    -> Phone INT(10) NOT NULL, 

    -> Id INT, FOREIGN KEY Users (Id) REFERENCES Authorization (Id) );

INSERT INTO Users (First_name, Last_name, Email, Phone, Id) VALUES ('Olya', 'Demidova', 'demidova_o@gmail.com', '55325', 1), ('Jenya', 'Sharapov', 'sharapov_j@gmail.com', '55326', 2), ('Sergey', 'Lesanov', 'lesanov_s@gmail.com', '55478', 2);
INSERT INTO Users (First_name, Last_name, Email, Phone, Id) VALUES ('Valentina', 'Gavrilova', 'gavrilova_v@gmail.com', '55535', 4), ('Aleksandr', 'Shevalkin', 'shevalkin_a@gmail.com', '55203', 5), ('Aleksey', 'Losyash', 'losyash_a@gmail.com', '55535', 6);

CREATE TABLE Balances (
    -> User_id INT,
    -> Total_amount INT NOT NULL,
    -> FOREIGN KEY Balances (User_id) REFERENCES Users (User_id));

INSERT INTO Balances (User_id, Total_amount) VALUES (1, 250000), (2, 789000), (3, 962300);
INSERT INTO Balances (User_id, Total_amount) VALUES (13, 1200000), (14, 257000), (15, 30000);

CREATE TABLE Messages (
    -> User_id INT,
    -> Id_messages INT,
    -> Date_messages DATE,
    -> Text_message TEXT (500),
    -> FOREIGN KEY Messages (User_id) REFERENCES Users (User_id));

INSERT INTO Messages (User_id, Id_messages, Date_messages, Text_message) VALUES (1,0001,'2024-04-04','Hello world!!!'), (1,0002,'2024-04-04','My name is Olya!'), (2,0001,'2024-04-01','My friend!'), (3,0001,'2024-02-21','Go home'), (3,0002,'2024-02-22','I am tired');
INSERT INTO Messages (User_id, Id_messages, Date_messages, Text_message) VALUES (13,0001,'2024-04-06','I am very cool girl'), (14,0001,'2024-04-05','When will lunch be?'), (14,0002,'2024-04-05','I am hungry'), (15,0001,'2024-02-21','How much time is left until the end of the working day?');


SELECT * FROM Messages;
SELECT * FROM Authorization;
SELECT * FROM balances;
SELECT * FROM users;