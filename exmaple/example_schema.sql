
CREATE DATABASE example;
USE example;
alter database example character set 'gbk';

CREATE TABLE institution (
  institution_id INT NOT NULL,
  institution_name VARCHAR(15) NOT NULL,
  institution_president VARCHAR(15) NOT NULL,
  PRIMARY KEY  (institution_id)
);

CREATE TABLE major (
  major_id INT NOT NULL,
  major_name VARCHAR(15) NOT NULL,
  major_kind VARCHAR(15) NOT NULL,
  institution_id INT NOT NULL,
  PRIMARY KEY  (major_id),
  constraint major_fk foreign key (institution_id) references institution(institution_id)
);

CREATE TABLE student (
  student_id INT NOT NULL auto_increment,
  name VARCHAR(10) NOT NULL,
  sex enum('男','女') NOT NULL,
  major_id int not null,
  nation VARCHAR(10) NOT NULL default '汉族',
  time TIMESTAMP NOT NULL,
  PRIMARY KEY  (student_id),
  constraint student_fk foreign key (major_id) references major(major_id)
);

CREATE TABLE course (
  course_id INT NOT NULL auto_increment,
  course_name VARCHAR(15) NOT NULL,
  course_credit INT NOT NULL,
  institution_id int not null,
  PRIMARY KEY  (course_id),
  constraint course_fk foreign key (institution_id) references institution(institution_id)
);

CREATE TABLE score (
  student_id INT,
  course_id int,
  score float,
  constraint score_student_fk foreign key (student_id) references student(student_id),
  constraint score_course_fk foreign key (course_id) references course(course_id)
);

