-- -----------------------------------------------------
-- Schema school
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `school` DEFAULT CHARACTER SET utf8;
USE `school`;

-- -----------------------------------------------------
-- Table `school`.`users_group`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `school`.`users_group`
(
    `id`   INT(11)      NOT NULL AUTO_INCREMENT COMMENT 'The primary key of the table.',
    `name` VARCHAR(245) NULL COMMENT 'Name of group',
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB
    COMMENT = 'Table containing user data';


-- -----------------------------------------------------
-- Table `school`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `school`.`users`
(
    `id`            INT(11)      NOT NULL AUTO_INCREMENT COMMENT 'The primary key of the table.',
    `username`      VARCHAR(245) NULL COMMENT 'Name and last name of user',
    `email`         VARCHAR(245) NULL UNIQUE COMMENT 'Adresa email',
    `password`      VARCHAR(60)  NULL COMMENT 'Password',
#     `admin`         TINYINT      NULL COMMENT 'person(teacher) who can add rating and points for solution',
    `user_group_id` INT          NULL COMMENT 'Foreign key for table users_group',
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_group_id`)
        REFERENCES `school`.`users_group` (`id`)
        ON DELETE NO ACTION
        ON UPDATE NO ACTION
)
    ENGINE = InnoDB
    COMMENT = 'Table containing user data';

-- -----------------------------------------------------
-- Table `school`.`exercises`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `school`.`exercises`
(
    `id`          INT(11)      NOT NULL AUTO_INCREMENT COMMENT 'The primary key of the table.',
    `title`       VARCHAR(245) NULL COMMENT 'Name of exercise',
    `description` TEXT         NULL COMMENT 'exercise',
    PRIMARY KEY (id)
)
    ENGINE = InnoDB
    COMMENT = 'Table containing exercises for users';

-- -----------------------------------------------------
-- Table `school`.`solutions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `school`.`solutions`
(
    `id`          INT(11)  NOT NULL AUTO_INCREMENT COMMENT 'The primary key of the table.',
    `created`     DATETIME NULL COMMENT 'Time of created solution',
    `updated`     DATETIME NULL COMMENT 'Time of updated solution',
    `description` TEXT     NULL COMMENT 'solution',
    `point`       INT(11)  NULL COMMENT 'rating for answer',
    `comment`     TEXT     NULL COMMENT 'comment for answer',
    `exercise_id` INT      NULL COMMENT 'Foreign key for table exercises',
    `user_id`     INT      NULL COMMENT 'Foreign key for table user',
    PRIMARY KEY (id),
    FOREIGN KEY (`exercise_id`) REFERENCES `school`.`exercises` (id),
    FOREIGN KEY (`user_id`) REFERENCES `school`.`users` (id)
)
    ENGINE = InnoDB
    COMMENT = 'Table containing solutions for exercises';