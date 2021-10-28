create database sample;

create table test_data (
	class varchar(3),
	age int,
	menopause varchar(7),
	tumor_size int,
	node_caps varchar(3),
	deg_malig int,
	breast varchar(5),
	breast_quad varchar(10),
	irradiat varchar(3)

);
select * from test_data;
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('NO',35,'premeno',31,'no',3,'left','left_low','no');
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('NO',42,'premeno',22,'no',2,'right','right_up','no');
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('NO',30,'premeno',23,'no',2,'left','left_low','no');
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('NO',61,'ge40',16,'no',2,'right','left_up','no');
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('NO',45,'premeno',2,'no',2,'right','right_low','no');
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('NO',64,'ge40',17,'no',2,'left','left_low','no');
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('NO',52,'premeno',27,'no',2,'left','left_low','no');
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('NO',67,'ge40',21,'no',1,'left','left_low','no');
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('YES',41,'premeno',52,'no',2,'left','left_low','no');
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('YES',43,'premeno',22,'no',2,'right','left_up','no');
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('YES',41,'premeno',1,'no',3,'left','central','no');
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('YES',44,'get40',27,'no',2,'left','left_low','no');
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('YES',61,'it40',14,'no',1,'left','right_up','no');
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('YES',55,'get40',26,'no',3,'left','right_up','no');
insert into test_data (class, age,menopause,tumor_size,node_caps,deg_malig,breast,breast_quad,irradiat)
values('YES',44,'premeno',32,'no',3,'left','left_up','no');

select *
from test_data
where menopause = 'ge40';

select * 
from test_data 
where age < 41;

select * 
from test_data 
where age < 41
and menopause = 'ge40';
/*yields no results*/

select AVG(age) as "Average age"
from test_data;

select AVG(age) as "Average age where deg_malig=3"
from test_data
where deg_malig=3;
