use FoodOrder
----ʳ������
--create table FoodClass(
--	foodClassId int identity(1,1) primary key,
--	foodClassName nvarchar(5) not null
--)
----ʳ��洢״̬
--create table StateInfo(
--	stateId int identity(1,1) primary key,
--	stateName nvarchar(5) not null
--)
----ʳ����Ϣ
--create table FoodInfo(
--	foodId int identity(1,1) primary key, --
--	foodName nvarchar(10) not null, --
--	foodPrice int not null, --
--	foodClassId int foreign key references FoodClass(foodClassId) not null, --
--	foodImg varchar(300) not null, --
--	foodDes nvarchar(max) not null,
--	foodStateId int foreign key references StateInfo(stateId) not null
--)


--����ʳ��������Ϣ
insert into FoodClass
select N'������' union
select N'������' union
select N'������' union
select N'������' union 
select N'�ǽ���' union
select N'��ɫ��' union
select N'������' union
select N'������' union
select N'����' union
select N'��ͷ��' 

--����ʳ��洢״̬��Ϣ
insert into StateInfo
select N'����' union
select N'ɾ��'  
--����ʳ����Ϣ
--1������
insert into FoodInfo
select N'ţ�⳴����',12,1,'images_data/chaomian/123.jpg',N'',1 union
select N'ţ�⳴������',12,1,'images_data/chaomian/123.jpg',N'',1 union
select N'����������',12,1,'images_data/chaomian/123.jpg',N'',1 union
select N'������������',12,1,'images_data/chaomian/123.jpg',N'',1 union
select N'���⳴����',15,1,'images_data/chaomian/123.jpg',N'',1 union
select N'���⳴������',15,1,'images_data/chaomian/123.jpg',N'',1 union
select N'����ţ����',14,1,'images_data/chaomian/123.jpg',N'',1 union
select N'����˿����',12,1,'images_data/chaomian/123.jpg',N'',1 union
select N'���Ѽ�������',13,1,'images_data/chaomian/123.jpg',N'',1 union
select N'���⳴����',12,1,'images_data/chaomian/123.jpg',N'',1 union
select N'���⳴������',12,1,'images_data/chaomian/123.jpg',N'',1 union
select N'ţ�⳴��Ƭ',15,1,'images_data/chaomian/123.jpg',N'',1 union
select N'��������',14,1,'images_data/chaomian/123.jpg',N'',1 union
select N'ţ�⳴��',14,1,'images_data/chaomian/123.jpg',N'',1 union
select N'���⳴��',15,1,'images_data/chaomian/123.jpg',N'',1 

--2������
insert into FoodInfo
select N'ţ�⳴��',10,2,'images_data/chaofan/123.jpg',N'�óԵĳ���',1 union
select N'��������',8,2,'images_data/chaofan/123.jpg',N'�óԵĳ���',1 union
select N'���⳴��',12,2,'images_data/chaofan/123.jpg',N'�óԵĳ���',1 union
select N'���⳴��',10,2,'images_data/chaofan/123.jpg',N'�óԵĳ���',1 union
select N'���ݳ���',12,2,'images_data/chaofan/123.jpg',N'�óԵĳ���',1 union
select N'���⳴��',10,2,'images_data/chaofan/123.jpg',N'�óԵĳ���',1 union
select N'���ţ�⳴��',11,2,'images_data/chaofan/123.jpg',N'�óԵĳ���',1 union
select N'����ţ�⳴��',13,2,'images_data/chaofan/123.jpg',N'�óԵĳ���',1 union
select N'��������',8,2,'images_data/chaofan/123.jpg',N'�óԵĳ���',1 union
select N'��˳���',8,2,'images_data/chaofan/123.jpg',N'�óԵĳ���',1 

--3������
insert into FoodInfo
select N'����ţ������(���)',8,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'����ţ������(С��)',7,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'����ţ����(���)',11,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'����ţ����(С��)',10,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'����ţ�⵶����(���)',9,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'����ţ�⵶����(С��)',8,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'����ţ�⵶����(���)',12,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'����ţ�⵶����(С��)',11,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'���⵶����(���)',12,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'���⵶����(С��)',10,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'��������',9,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'����������',9,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'�������',8,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'��˵�����',9,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'��������',12,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'���⵶����',12,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'���ռ�������',12,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'ţ�����',12,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'�⵶����',12,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'����Ƭ',14,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'����Ƭ',14,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'������',14,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'������������',12,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'ţ������',14,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 union
select N'��������',15,3,'images_data/tangmian/123.jpg',N'�ó��ֵĺú�����',1 
--4������
insert into FoodInfo
select N'ţ��ɰ���',12,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'ţ��ը����',12,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'����������',14,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'��˰���',10,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'���Ͱ���',10,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'�½�����',17,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'�ײ�ţ�����',12,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'�ཷţ�����',12,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'Ģ��ţ�����',13,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'��̦ţ�����',13,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'ľ��ţ�����',13,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'���ţ�����',12,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'����ţ�����',13,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'����ţ�����',13,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'����˿ţ�����',13,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'������ţ�����',14,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'����«ţ�������',13,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'����ţ�����',15,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'�б�ţ�����',15,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'�б��������',16,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'��Ȼţ�����',15,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'��Ȼ�������',16,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'���ռ������',15,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'���Ӽ�������',14,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'������������',14,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'ľ����������',12,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'���ѳ�������',12,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'�²˳�������',12,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'�ཷ��������',12,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'�������Ӱ���',11,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'�����ײ˰���',11,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'��������˿����',11,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 union
select N'�ཷ����˿����',11,4,'images_data/banmian/123.jpg',N'�óԵİ���',1 


--5�ǽ���
insert into FoodInfo
select N'�ײ�ţ��ǽ���',11,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'�ཷţ��ǽ���',11,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'Ģ��ţ��ǽ���',12,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'��̦ţ��ǽ���',12,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'ľ������ǽ���',12,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'���ţ��ǽ���',11,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'����ţ��ǽ���',12,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'����ţ��ǽ���',12,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'����˿ţ��ǽ���',12,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'������ţ��ǽ���',13,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'����«����ǽ���',12,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'����ţ��ǽ���',14,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'�б�ţ��ǽ���',14,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'�б�����ǽ���',15,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'��Ȼţ��ǽ���',14,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'��Ȼ����ǽ���',15,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'���ռ���ǽ���',14,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'���Ӽ����ǽ���',13,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'���������ǽ���',13,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'ľ�������ǽ���',11,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'���ѳ����ǽ���',11,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'�²˳����ǽ���',11,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'�ཷ�����ǽ���',11,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'�������Ӹǽ���',10,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'�����ײ˸ǽ���',10,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'��������˿�ǽ���',10,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'�ཷ����˿�ǽ���',10,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 union
select N'С�г����ǽ���',11,5,'images_data/gaijiaofan/123.jpg',N'�óԵİ���',1 
--6��ɫ��
insert into FoodInfo
select N'�����ײ�',10,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'��������˿',10,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'�ཷ����˿',10,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'�س����',10,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'��������',10,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'���ѳ���',14,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'ľ������',14,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'�ཷ����',14,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'�²˳���',14,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'�ཷ��ţ��',18,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'Ģ��ţ��',18,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'ľ��ţ��',18,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'��̦ţ��',18,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'����ţ��',35,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'���ռ���',30,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'�б�ţ��',30,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'�б�����',35,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'��Ȼţ��',30,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'��Ȼ����',35,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'������ţ��',30,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'���̼�(���)',80,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 union
select N'ţ�⳴��(С��)',70,6,'images_data/tesecai/123.jpg',N'�óԵĳ���',1 
--7������
insert into FoodInfo
select N'����ţ������',12,7,'images_data/liangmian/123.jpg',N'�óԵĳ���',1 union
select N'����ţ������',14,7,'images_data/liangmian/123.jpg',N'�óԵĳ���',1 union
select N'��������',12,7,'images_data/liangmian/123.jpg',N'�óԵĳ���',1 union
select N'����˿����',11,7,'images_data/liangmian/123.jpg',N'�óԵĳ���',1 
--8������
insert into FoodInfo
select N'����ţ��',35,8,'images_data/liangcai/123.jpg',N'�óԵĳ���',1 union
select N'����ƹ�',10,8,'images_data/liangcai/123.jpg',N'�óԵĳ���',1 union
select N'��������˿',10,8,'images_data/liangcai/123.jpg',N'�óԵĳ���',1 union
select N'����������',10,8,'images_data/liangcai/123.jpg',N'�óԵĳ���',1
--9����
insert into FoodInfo
select N'����ţ���˿',12,9,'images_data/tang/123.jpg',N'�úȵ���',1 union
select N'����ţ���˿',14,9,'images_data/tang/123.jpg',N'�úȵ���',1 union
select N'ţ����',10,9,'images_data/tang/123.jpg',N'�úȵ���',1 union
select N'������',15,9,'images_data/tang/123.jpg',N'�úȵ���',1 union
select N'����������',10,9,'images_data/tang/123.jpg',N'�úȵ���',1
--10��ͷ��
insert into FoodInfo
select N'����ţ��',10,10,'images_data/jiaotou/123.jpg',N'��ͷ��',1 union
select N'����ţ��',12,10,'images_data/jiaotou/123.jpg',N'��ͷ��',1 union
select N'�嵰',2,10,'images_data/jiaotou/123.jpg',N'��ͷ��',1 union
select N'���',4,10,'images_data/jiaotou/123.jpg',N'��ͷ��',1 union
select N'�ӱ��',2,10,'images_data/jiaotou/123.jpg',N'��ͷ��',1 union
select N'����',3,10,'images_data/jiaotou/123.jpg',N'��ͷ��',1 

--�û���Ϣ ��������
insert into UserState
select N'����' union
select N'����' 

insert into UserInfo
select '18021917923','232323',N'��ԭ��','images_data/user/1.jpg',N'Ů',1,N'�Ͼ����껨̨���䵺����ˮܽԷ3��801��','2445923320','18260346196@163.com',1,10,0 union
select '18260346196','232323',N'ӣľ����','images_data/user/2.jpg',N'��',1,N'�Ͼ����껨̨���䵺����ˮܽԷ1��501��','2445923320','18260346196@163.com',1,10,0 union
select '15051388690','232323',N'������','images_data/user/1.jpg',N'��',1,N'�Ͼ����껨̨���䵺����ˮܽԷ1��101��','2445923320','18260346196@163.com',1,10,0 union
select '13382325671','232323',N'����ǧ��','images_data/user/1.jpg',N'Ů',1,N'�Ͼ����껨̨���䵺����ˮܽԷ3��901��','2445923320','18260346196@163.com',1,10,0 

--������Ϣ
insert into TalkBoard
select '18021917923','18260346196',N'����ӣľ��������ʶһ�°�','2015-3-15 9:10',0,1 union
select '18260346196','18021917923',N'���ǹ�ԭ�����ܸ�����ʶ�㡣','2015-3-15 9:14',0,1 union
select '18260346196','15051388690',N'���������㣬�ܸ�����ʶ�㡣','2015-3-15 9:14',0,1 union
select '18021917923','13382325671',N'��ԭ������������ǧ�磬�ܸ�����ʶ�㡣','2015-3-15 9:12',0,1 union
select '15051388690','13382325671',N'�����㣬��������ǧ�磬�ܸ�����ʶ��','2015-3-15 9:15',0,1 union
select '13382325671','15051388690',N'���������㣬�ܸ�����ʶ�㣬����ǧ��','2015-3-15 9:16',0,1 
