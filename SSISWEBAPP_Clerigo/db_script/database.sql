CREATE DATABASE IF NOT EXISTS `database`;
USE `database`;

CREATE TABLE IF NOT EXISTS `college_list` (
  `college_code` varchar(50) NOT NULL PRIMARY KEY,
  `college_name` varchar(50) NOT NULL
);

INSERT INTO `college_list` (`college_code`, `college_name`) VALUES
	('CASS','College of Arts and Social Sciences'),
	('CBAA','College of Business Administration and Accountancy'),
	('CCS','College of Computer Studies'),
	('CED','College of Education'),
	('COET','College of Engineering and Technology');

CREATE TABLE IF NOT EXISTS `course_list` (
  `course_code` varchar(50) NOT NULL PRIMARY KEY,
  `course_name` varchar(50) NOT NULL,
  `college` varchar(50),
  FOREIGN KEY (`college`) REFERENCES `college_list` (`college_code`)
);

INSERT INTO `course_list` (`course_code`, `course_name`) VALUES
	('BSCA', 'Bachelor of Science in Computer Applications'),
	('BSCE', 'Bachelor of Science in Civil Engineering'),
	('BSCS', 'Bachelor of Science in Computer Science'),
	('BSIT', 'Bachelor of Science in Information Technology');

CREATE TABLE IF NOT EXISTS `student_list` (
  `stud_id` varchar(10) NOT NULL PRIMARY KEY,
  `photo_link` varchar(250) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `year_lvl` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `course_code`varchar(50),
  FOREIGN KEY (`course_code`) REFERENCES `course_list` (`course_code`)
);

INSERT INTO `student_list` (`stud_id`, `photo_link`, `fname`, `lname`, `year_lvl`, `gender`) VALUES
	('2018-0001', 'https://res.cloudinary.com/dkc0twhfx/image/upload/v1644298609/ssis/2018-0001.jpg', 'Shaun', 'Murphy', '4', 'M'),
	('2021-0001', 'https://res.cloudinary.com/dkc0twhfx/image/upload/v1644299573/ssis/2021-0001.jpg', 'Lea', 'Dilallo', '1', 'F');