DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS accounts;
DROP TABLE IF EXISTS transaction_history;

CREATE TABLE `customer` (
`customer_id` int AUTO_INCREMENT PRIMARY KEY,
`name` varchar(100) NOT NULL,
`email` varchar(100) NOT NULL,
`mobile_number` varchar(20) NOT NULL,
`create_dt` date DEFAULT NULL
);

CREATE TABLE `accounts` (
`customer_id` int NOT NULL,
`account_number` int AUTO_INCREMENT PRIMARY KEY,
`account_type` varchar(100) NOT NULL,
`account_balance` int,
`branch_address` varchar(200) NOT NULL,
`create_dt` date DEFAULT NULL
);


CREATE TABLE `transaction_history` (
`transaction_id` int AUTO_INCREMENT PRIMARY KEY,
`src_ac_number` int,
`dest_ac_number` int,
`comment` varchar(100),
`status` varchar(200) NOT NULL,
`transaction_dt` date DEFAULT NULL
);


INSERT INTO `customer` (`name`,`email`, `mobile_number`, `create_dt`)
VALUES ('Jilani','jilani@gmail.com','1234567890',CURDATE());

INSERT INTO `customer` (`name`,`email`, `mobile_number`, `create_dt`)
VALUES ('Ravi','ravi@gmail.com','1234567890',CURDATE());


INSERT INTO `accounts` (`customer_id`,`account_number`, `account_type`, `branch_address`,`create_dt`)
VALUES (1,123456,'Savings','123 Main Street, Dubai', 10000, CURDATE());

INSERT INTO `accounts` (`customer_id`,`account_number`, `account_type`, `branch_address`,`create_dt`)
VALUES (2,123456,'Savings','123 Main Street, Dubai',,20000,CURDATE());


