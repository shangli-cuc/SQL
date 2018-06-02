# SQL

# example实例数据库的构建和数据插入

## 用到的内容：

### 数据库常见的增删查改

### 具体语句：SELECT、INSERT INTO、DELECT、UPDATE

### 详细解释如下：

向数据库example的表student中使用INSERT INTO插入数据

insert into student (name,sex,major_id,time) values
('张三','男',2,'2016-02-15'),
('李四','男',2,'2016-02-15');

使用SELECT查询数据
读取整个数据表：
SELECT * FROM student;

读取需要的数据列：
SELECT * FROM student WHERE name='张三';

修改或更新数据：
UPDATE student SET name='王五' WHERE student_id=9;
select * from student;

使用DELETE FROM删除数据：
DELETE FROM student WHERE student_id=7;

使用WHERE子句来获取指定的记录
WHERE子句中可以使用等号=来设定获取数据的条件
select * from student where time='2016-02-15';

但是有时候我们需要获取name字段含有'张'姓字符的所有记录，这时我们就需要在WHERE子句中使用LIKE 
LIKE中使用%来表示任意字符
如果没有使用%, LIKE与=的效果是一样的

查询name字段中出现过‘张’的数据
SELECT * from student  WHERE name LIKE '%张%';

SELECT使用ORDER BY将查询数据排序后再返回数据：
SELECT * FROM student ORDER BY time ASC;
#DESC为降序

GROUP BY根据一个或多个列对结果集进行分组
在分组的列上使用COUNT,SUM,AVG等函数

GROUP BY将数据表按institution_id进行分组，并统计每个学院共有多少门课程
SELECT institution_id, COUNT(institution_id) as course_num 
FROM  course GROUP BY institution_id;

统计每个学院开设课程的学分总数
SELECT institution_id, SUM(course_credit) FROM  course GROUP BY institution_id;

统计每个学生的平均成绩
SELECT student_id, AVG(score.score) as average_score 
FROM  score GROUP BY student_id;

经常需要从多个数据表中读取数据
JOIN在两个或多个表中查询数据
可以在SELECT,UPDATE和DELETE中使用JOIN来联合多表查询
JOIN 按照功能大致分为如下三类：
    INNER JOIN（内连接,或等值连接）：获取两个表中字段匹配关系的记录；
    LEFT JOIN（左连接）：获取左表所有记录，即使右表没有对应匹配的记录；
    RIGHT JOIN（右连接）：与LEFT JOIN相反，用于获取右表所有记录，即使左表没有对应匹配的记录

使用INNER JOIN(也可以省略INNER使用JOIN，效果一样)
连接多张表来读取major表中所有major_id字段在student表中对应的major_id字段值
读取major表中所有institution_id字段在institution表中对应的institution_id字段值
最后得到的表是学号、学生名、专业、学院
select student.student_id,student.name,major.major_name,institution.institution_name 
from major join student on student.major_id=major.major_id
join institution on major.institution_id=institution.institution_id;


RIGHT JOIN会读取右边数据表的全部数据，即便左边边表无对应数据
SELECT a.runoob_author, b.runoob_count FROM runoob_tbl a RIGHT JOIN tcount_tbl b ON a.runoob_author = b.runoob_author;
该语句会读取右边的数据表 tcount_tbl 的所有选取的字段数据，即便在左侧表 runoob_tbl 中没有对应的runoob_author 字段值。

