CREATE TABLE `categories`(
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(100) NOT NULL
);

CREATE TABLE `publishers`(
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(100) NOT NULL
);

CREATE TABLE `authors`(
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(100) NOT NULL
);

CREATE TABLE `students`(
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(200) NOT NULL,
`birthday` DATE,
`address` VARCHAR(200),
`email` VARCHAR(200),
`images` VARCHAR(200)
);


CREATE TABLE `books`(
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(100) NOT NULL,
`year_xb` INT NOT NULL,
`number_xb` INT,
`price` DOUBLE NOT NULL,
`images` VARCHAR(200),
`publishers_id` INT,
`authors_id` INT,
`categories_id` INT,
FOREIGN KEY (`publishers_id`) REFERENCES `publishers`(`id`),
FOREIGN KEY (`authors_id`) REFERENCES `authors`(`id`),
FOREIGN KEY (`categories_id`) REFERENCES `categories`(`id`)  
);


CREATE TABLE `orders`(
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`students_id` INT,
FOREIGN KEY (`students_id`) REFERENCES `students`(`id`)
);

CREATE TABLE `order_detail`(
`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
`borrow_date` DATE NOT NULL,
`return_date` DATE NOT NULL,
`books_id` INT,
`orders_id` INT,
FOREIGN KEY (`orders_id`) REFERENCES `orders`(`id`),
FOREIGN KEY (`books_id`) REFERENCES `books`(`id`)
);
