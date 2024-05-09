CREATE TABLE `FiveCourseFeeder`.`Users`( 
    `User_id` INT NOT NULL auto_increment, 
    `User_username` VARCHAR(45) NOT NULL, 
    `User_password` VARCHAR(45) NOT NULL, 
    `User_first_name` VARCHAR(45) NOT NULL,
    `User_last_name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`User_id`)
    );

CREATE TABLE `FiveCourseFeeder`.`Birdfeeder`(
    `Birdfeeder_id` INT NOT NULL auto_increment,
    `Birdfeeder_user_id`  INT NOT NULL,
    `Birdfeeder_settings` ENUM('on', 'off', 'special') NOT NULL,
    PRIMARY KEY (`Birdfeeder_id`)
    );

CREATE TABLE `FiveCourseFeeder`.`Stats`(
    `Stats_id` INT NOT NULL auto_increment,
    `Stats_num_birds_seen` INT NULL,
    `Stats_num_squirrels_seen` INT NULL,
    `Stats_num_birds_identified` INT NULL,
    `Stats_num_birds_unidentified` INT NULL,
    `Stats_user_id` INT NOT NULL,
    PRIMARY KEY (`Stats_id`)
    );

CREATE TABLE `FiveCourseFeeder`.`Birds`(
    `Birds_id` INT NOT NULL auto_increment,
    `Bird_understood` ENUM('yes', 'no') NULL,
    `Bird_name` VARCHAR(45) NULL,
    `Bird_time_seen_id` DATETIME NULL,
    `Bird_User_id` INT NOT NULL,
    `Bird_Birdfeeder_id` INT NOT NULL,
    PRIMARY KEY (`Birds_id`)
);
ALTER TABLE Birdfeeder
ADD FOREIGN KEY (`Birdfeeder_user_id`) REFERENCES Users(`User_id`);

ALTER TABLE Stats
ADD FOREIGN KEY (`Stats_user_id`) REFERENCES Users(`User_id`);

ALTER TABLE Birds
ADD FOREIGN KEY (`Bird_User_id`) REFERENCES Users(`User_id`);

ALTER TABLE Birds
ADD FOREIGN KEY (`Bird_Birdfeeder_id`) REFERENCES Birdfeeder(`Birdfeeder_id`);
