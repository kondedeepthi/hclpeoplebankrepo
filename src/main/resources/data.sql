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
`amount` int,
`comment` varchar(100),
`status` varchar(200) NOT NULL,
`transaction_dt` date DEFAULT NULL
);

INSERT INTO `transaction_history` (`src_ac_number`,`dest_ac_number`, `comment`, `status`,`amount`,`transaction_dt`)
VALUES (111111,222222,'Transfer 500','Done',500,CURDATE());

INSERT INTO `transaction_history` (`src_ac_number`,`dest_ac_number`, `comment`, `status`,`amount`,`transaction_dt`)
VALUES (111111,222222,'Transfer 2000','Done',2000,CURDATE());


INSERT INTO `customer` (`name`,`email`, `mobile_number`, `create_dt`)
VALUES ('Jilani','jilani@gmail.com','1234567890',CURDATE());

INSERT INTO `customer` (`name`,`email`, `mobile_number`, `create_dt`)
VALUES ('Ravi','ravi@gmail.com','1234567890',CURDATE());


INSERT INTO `accounts` (`customer_id`,`account_number`, `account_type`, `branch_address`,`account_balance`,`create_dt`)
VALUES (1,111111,'Savings','123 Main Street, Dubai', 10000, CURDATE());

INSERT INTO `accounts` (`customer_id`,`account_number`, `account_type`, `branch_address`,`account_balance`,`create_dt`)
VALUES (2,222222,'Savings','123 Main Street, Dubai',20000,CURDATE());


