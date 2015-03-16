use FoodOrder
----食物类型
--create table FoodClass(
--	foodClassId int identity(1,1) primary key,
--	foodClassName nvarchar(5) not null
--)
----食物存储状态
--create table StateInfo(
--	stateId int identity(1,1) primary key,
--	stateName nvarchar(5) not null
--)
----食物信息
--create table FoodInfo(
--	foodId int identity(1,1) primary key, --
--	foodName nvarchar(10) not null, --
--	foodPrice int not null, --
--	foodClassId int foreign key references FoodClass(foodClassId) not null, --
--	foodImg varchar(300) not null, --
--	foodDes nvarchar(max) not null,
--	foodStateId int foreign key references StateInfo(stateId) not null
--)


--插入食物种类信息
insert into FoodClass
select N'炒面类' union
select N'炒饭类' union
select N'汤面类' union
select N'拌面类' union 
select N'盖浇饭' union
select N'特色菜' union
select N'凉面类' union
select N'凉菜类' union
select N'汤类' union
select N'浇头类' 

--插入食物存储状态信息
insert into StateInfo
select N'保存' union
select N'删除'  
--插入食物信息
--1炒面类
insert into FoodInfo
select N'牛肉炒拉面',12,1,'images_data/chaomian/123.jpg',N'',1 union
select N'牛肉炒刀削面',12,1,'images_data/chaomian/123.jpg',N'',1 union
select N'鸡蛋炒拉面',12,1,'images_data/chaomian/123.jpg',N'',1 union
select N'鸡蛋炒刀削面',12,1,'images_data/chaomian/123.jpg',N'',1 union
select N'羊肉炒拉面',15,1,'images_data/chaomian/123.jpg',N'',1 union
select N'羊肉炒刀削面',15,1,'images_data/chaomian/123.jpg',N'',1 union
select N'红烧牛肉面',14,1,'images_data/chaomian/123.jpg',N'',1 union
select N'土豆丝炒面',12,1,'images_data/chaomian/123.jpg',N'',1 union
select N'番茄鸡蛋炒面',13,1,'images_data/chaomian/123.jpg',N'',1 union
select N'鸡肉炒拉面',12,1,'images_data/chaomian/123.jpg',N'',1 union
select N'鸡肉炒刀削面',12,1,'images_data/chaomian/123.jpg',N'',1 union
select N'牛肉炒面片',15,1,'images_data/chaomian/123.jpg',N'',1 union
select N'鸡蛋炒饼',14,1,'images_data/chaomian/123.jpg',N'',1 union
select N'牛肉炒饼',14,1,'images_data/chaomian/123.jpg',N'',1 union
select N'羊肉炒饼',15,1,'images_data/chaomian/123.jpg',N'',1 

--2炒饭类
insert into FoodInfo
select N'牛肉炒饭',10,2,'images_data/chaofan/123.jpg',N'好吃的炒饭',1 union
select N'鸡蛋炒饭',8,2,'images_data/chaofan/123.jpg',N'好吃的炒饭',1 union
select N'羊肉炒饭',12,2,'images_data/chaofan/123.jpg',N'好吃的炒饭',1 union
select N'鸡肉炒饭',10,2,'images_data/chaofan/123.jpg',N'好吃的炒饭',1 union
select N'兰州炒饭',12,2,'images_data/chaofan/123.jpg',N'好吃的炒饭',1 union
select N'烤肉炒饭',10,2,'images_data/chaofan/123.jpg',N'好吃的炒饭',1 union
select N'咖喱牛肉炒饭',11,2,'images_data/chaofan/123.jpg',N'好吃的炒饭',1 union
select N'红烧牛肉炒饭',13,2,'images_data/chaofan/123.jpg',N'好吃的炒饭',1 union
select N'土豆炒饭',8,2,'images_data/chaofan/123.jpg',N'好吃的炒饭',1 union
select N'青菜炒饭',8,2,'images_data/chaofan/123.jpg',N'好吃的炒饭',1 

--3汤面类
insert into FoodInfo
select N'干切牛肉拉面(大份)',8,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'干切牛肉拉面(小份)',7,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'红烧牛肉面(大份)',11,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'红烧牛肉面(小份)',10,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'干切牛肉刀削面(大份)',9,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'干切牛肉刀削面(小份)',8,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'红烧牛肉刀削面(大份)',12,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'红烧牛肉刀削面(小份)',11,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'羊肉刀削面(大份)',12,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'羊肉刀削面(小份)',10,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'鸡蛋拉面',9,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'鸡蛋刀削面',9,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'青菜拉面',8,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'青菜刀削面',9,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'羊肉拉面',12,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'羊肉刀削面',12,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'红烧鸡肉拉面',12,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'牛肉烩面',12,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'烩刀削面',12,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'烩面片',14,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'汤面片',14,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'臊子面',14,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'西红柿鸡蛋面',12,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'牛肉泡馍',14,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 union
select N'羊肉泡馍',15,3,'images_data/tangmian/123.jpg',N'好吃又的好喝汤面',1 
--4拌面类
insert into FoodInfo
select N'牛肉干拌面',12,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'牛肉炸酱面',12,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'辣子油泼面',14,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'青菜拌面',10,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'葱油拌面',10,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'新疆拌面',17,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'白菜牛肉拌面',12,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'青椒牛肉拌面',12,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'蘑菇牛肉拌面',13,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'蒜苔牛肉拌面',13,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'木耳牛肉拌面',13,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'洋葱牛肉拌面',12,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'茄子牛肉拌面',13,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'土豆牛肉拌面',13,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'土豆丝牛肉拌面',13,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'土豆烧牛肉拌面',14,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'西葫芦牛炒肉拌面',13,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'红烧牛肉拌面',15,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'葱爆牛肉拌面',15,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'葱爆羊肉拌面',16,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'孜然牛肉拌面',15,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'孜然羊肉拌面',16,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'红烧鸡块拌面',15,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'辣子鸡丁拌面',14,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'宫爆鸡丁拌面',14,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'木耳炒蛋拌面',12,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'番茄炒蛋拌面',12,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'韭菜炒蛋拌面',12,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'青椒炒蛋拌面',12,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'红烧茄子拌面',11,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'酸辣白菜拌面',11,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'酸辣土豆丝拌面',11,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 union
select N'青椒土豆丝拌面',11,4,'images_data/banmian/123.jpg',N'好吃的拌面',1 


--5盖浇饭
insert into FoodInfo
select N'白菜牛肉盖浇饭',11,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'青椒牛肉盖浇饭',11,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'蘑菇牛肉盖浇饭',12,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'蒜苔牛肉盖浇饭',12,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'木耳炒肉盖浇饭',12,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'洋葱牛肉盖浇饭',11,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'茄子牛肉盖浇饭',12,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'土豆牛肉盖浇饭',12,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'土豆丝牛肉盖浇饭',12,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'土豆烧牛肉盖浇饭',13,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'西葫芦炒肉盖浇饭',12,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'红烧牛肉盖浇饭',14,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'葱爆牛肉盖浇饭',14,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'葱爆羊肉盖浇饭',15,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'孜然牛肉盖浇饭',14,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'孜然羊肉盖浇饭',15,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'红烧鸡块盖浇饭',14,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'辣子鸡丁盖浇饭',13,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'宫爆鸡丁盖浇饭',13,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'木耳炒蛋盖浇饭',11,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'番茄炒蛋盖浇饭',11,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'韭菜炒蛋盖浇饭',11,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'青椒炒蛋盖浇饭',11,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'红烧茄子盖浇饭',10,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'酸辣白菜盖浇饭',10,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'酸辣土豆丝盖浇饭',10,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'青椒土豆丝盖浇饭',10,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 union
select N'小葱炒蛋盖浇饭',11,5,'images_data/gaijiaofan/123.jpg',N'好吃的拌面',1 
--6特色菜
insert into FoodInfo
select N'酸辣白菜',10,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'酸辣土豆丝',10,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'青椒土豆丝',10,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'素炒青菜',10,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'红烧茄子',10,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'番茄炒蛋',14,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'木耳炒蛋',14,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'青椒炒蛋',14,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'韭菜炒蛋',14,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'青椒炒牛肉',18,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'蘑菇牛肉',18,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'木耳牛肉',18,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'蒜苔牛肉',18,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'红烧牛肉',35,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'红烧鸡块',30,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'葱爆牛肉',30,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'葱爆羊肉',35,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'孜然牛肉',30,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'孜然羊肉',35,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'土豆烧牛肉',30,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'大盘鸡(大份)',80,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 union
select N'牛肉炒饭(小份)',70,6,'images_data/tesecai/123.jpg',N'好吃的炒饭',1 
--7凉面类
insert into FoodInfo
select N'干切牛肉凉面',12,7,'images_data/liangmian/123.jpg',N'好吃的炒饭',1 union
select N'红烧牛肉凉面',14,7,'images_data/liangmian/123.jpg',N'好吃的炒饭',1 union
select N'鸡蛋凉面',12,7,'images_data/liangmian/123.jpg',N'好吃的炒饭',1 union
select N'土豆丝凉面',11,7,'images_data/liangmian/123.jpg',N'好吃的炒饭',1 
--8凉菜类
insert into FoodInfo
select N'凉拌牛肉',35,8,'images_data/liangcai/123.jpg',N'好吃的炒饭',1 union
select N'凉拌黄瓜',10,8,'images_data/liangcai/123.jpg',N'好吃的炒饭',1 union
select N'凉拌土豆丝',10,8,'images_data/liangcai/123.jpg',N'好吃的炒饭',1 union
select N'凉拌西红柿',10,8,'images_data/liangcai/123.jpg',N'好吃的炒饭',1
--9汤类
insert into FoodInfo
select N'干切牛肉粉丝',12,9,'images_data/tang/123.jpg',N'好喝的汤',1 union
select N'红烧牛肉粉丝',14,9,'images_data/tang/123.jpg',N'好喝的汤',1 union
select N'牛肉汤',10,9,'images_data/tang/123.jpg',N'好喝的汤',1 union
select N'羊肉汤',15,9,'images_data/tang/123.jpg',N'好喝的汤',1 union
select N'西红柿蛋汤',10,9,'images_data/tang/123.jpg',N'好喝的汤',1
--10浇头类
insert into FoodInfo
select N'干切牛肉',10,10,'images_data/jiaotou/123.jpg',N'浇头类',1 union
select N'红烧牛肉',12,10,'images_data/jiaotou/123.jpg',N'浇头类',1 union
select N'煎蛋',2,10,'images_data/jiaotou/123.jpg',N'浇头类',1 union
select N'煎饼',4,10,'images_data/jiaotou/123.jpg',N'浇头类',1 union
select N'加表菜',2,10,'images_data/jiaotou/123.jpg',N'浇头类',1 union
select N'加面',3,10,'images_data/jiaotou/123.jpg',N'浇头类',1 

--用户信息 测试数据
insert into UserState
select N'在线' union
select N'离线' 

insert into UserInfo
select '18021917923','232323',N'弓原雏','images_data/user/1.jpg',N'女',1,N'南京市雨花台区翠岛花城水芙苑3栋801室','2445923320','18260346196@163.com',1,10,0 union
select '18260346196','232323',N'樱木花道','images_data/user/2.jpg',N'男',1,N'南京市雨花台区翠岛花城水芙苑1栋501室','2445923320','18260346196@163.com',1,10,0 union
select '15051388690','232323',N'流川枫','images_data/user/1.jpg',N'男',1,N'南京市雨花台区翠岛花城水芙苑1栋101室','2445923320','18260346196@163.com',1,10,0 union
select '13382325671','232323',N'凌濑千早','images_data/user/1.jpg',N'女',1,N'南京市雨花台区翠岛花城水芙苑3栋901室','2445923320','18260346196@163.com',1,10,0 

--留言信息
insert into TalkBoard
select '18021917923','18260346196',N'我是樱木花道，认识一下吧','2015-3-15 9:10',0,1 union
select '18260346196','18021917923',N'我是弓原雏，很高兴认识你。','2015-3-15 9:14',0,1 union
select '18260346196','15051388690',N'我是流川枫，很高兴认识你。','2015-3-15 9:14',0,1 union
select '18021917923','13382325671',N'弓原雏，我是凌濑千早，很高兴认识你。','2015-3-15 9:12',0,1 union
select '15051388690','13382325671',N'流川枫，我是凌濑千早，很高兴认识你','2015-3-15 9:15',0,1 union
select '13382325671','15051388690',N'我是流川枫，很高兴认识你，凌濑千早','2015-3-15 9:16',0,1 
