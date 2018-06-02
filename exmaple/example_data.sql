insert into institution (institution_id,institution_name,institution_president) values
(1,'信息工程学院','工学院院长'),
(2,'经管学院','经管学院院长'),
(3,'医学院','医学院院长');

insert into major (major_id,major_name,major_kind,institution_id) values 
(1,'计算机科学专业','工学',1),
(2,'通信工程专业','工学',1),
(3,'电子信息工程专业','工学',1),
(4,'经济管理专业','经济学',2),
(5,'国际贸易专业','工经济学',2),
(6,'临床医学专业','医学',3),
(7,'护理专业','医学',3);

insert into course (course_name,course_credit,institution_id) values
('数据结构',2,1),
('通信原理',4,1),
('金融学',2,2),
('经济学基础',3,2),
('细胞生物学',3,3),
('解剖学',4,3);

insert into student (name,sex,major_id,time) values
('杨超越','女',1,'2016-02-15'),
('王菊','女',2,'2012-05-15'),
('吴宣仪','女',3,'2014-07-15'),
('张龙','男',4,'2014-08-15'),
('赵虎','男',5,'2015-09-15'),
('王朝','男',6,'2016-09-15'),
('马汉','男',7,'2017-09-15');

insert into score (student_id,course_id,score) values
(1,1,91.0),
(2,2,60.0),
(3,2,77.0),
(4,3,85.0),
(4,4,70.0),
(5,3,92.0),
(5,4,80.0),
(6,5,72.0),
(6,6,80.0),
(7,5,66.0),
(7,6,77.0);