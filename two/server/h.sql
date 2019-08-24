#设置客户端连接的编码
SET NAMES UTF8;
#丢弃数据库
DROP DATABASE IF EXISTS BlogManagement ;
#创建数据库
CREATE DATABASE BlogManagement CHARSET=UTF8;
#进入该数据库
USE BlogManagement;

CREATE TABLE Blog_user(
	id INT PRIMARY KEY AUTO_INCREMENT, 
	account VARCHAR(50),
	upwd  VARCHAR(32),
	uname  VARCHAR(36)
	



);
CREATE TABLE Inbox_mail(
	id INT PRIMARY KEY AUTO_INCREMENT,
	ikey VARCHAR(20),
	uname  VARCHAR(36),
	whoaccount VARCHAR(50),
	theme VARCHAR(50),
	text_content VARCHAR(500),
	file VARCHAR(50),
	transmitting_time VARCHAR(20)

);
INSERT INTO Blog_user VALUES(null,'zxc123',md5('zxc123'),"喵喵喵");
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','支付宝1',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','分期乐2',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'0','喵喵喵','财付通3',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','京东白条4',"你没钱了赶紧还钱","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','E呗5',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','淘宝网6',"双11","史上最全！淘宝双11红包疯抢攻略！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','淘宝网7',"史上最全！淘宝双11红包疯抢攻略","史上最全！淘宝双11红包疯抢攻略！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'0','喵喵喵','E呗8',"你没钱了","亲，双11来啦！帮你挑货，还送你4999元红包！仅此一次！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','E呗9',"你没钱了","亲，双11来啦！帮你挑货，还送你4999元红包！仅此一次！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','E呗10',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','分期乐11',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','财付通12',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','京东白条13',"你没钱了赶紧还钱","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','E呗14',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','淘宝网15',"双11","史上最全！淘宝双11红包疯抢攻略！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','淘宝网16',"史上最全！淘宝双11红包疯抢攻略","史上最全！淘宝双11红包疯抢攻略！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','E呗',"你没钱了","亲，双11来啦！帮你挑货，还送你4999元红包！仅此一次！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','E呗',"你没钱了","亲，双11来啦！帮你挑货，还送你4999元红包！仅此一次！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','E呗',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');

INSERT INTO Inbox_mail VALUES(null,'0','喵喵喵','支付宝',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','分期乐',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','财付通',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'0','喵喵喵','京东白条',"你没钱了赶紧还钱","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','E呗',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','淘宝网',"双11","史上最全！淘宝双11红包疯抢攻略！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','淘宝网',"史上最全！淘宝双11红包疯抢攻略","史上最全！淘宝双11红包疯抢攻略！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'0','喵喵喵','E呗',"你没钱了","亲，双11来啦！帮你挑货，还送你4999元红包！仅此一次！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','E呗',"你没钱了","亲，双11来啦！帮你挑货，还送你4999元红包！仅此一次！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','E呗',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','分期乐',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'0','喵喵喵','财付通',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','京东白条',"你没钱了赶紧还钱","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','E呗',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','淘宝网',"双11","史上最全！淘宝双11红包疯抢攻略！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'0','喵喵喵','淘宝网',"史上最全！淘宝双11红包疯抢攻略","史上最全！淘宝双11红包疯抢攻略！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','E呗',"你没钱了","亲，双11来啦！帮你挑货，还送你4999元红包！仅此一次！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','E呗',"你没钱了","亲，双11来啦！帮你挑货，还送你4999元红包！仅此一次！",'这是文件文件文件','2019-04-08 00:00:00');
INSERT INTO Inbox_mail VALUES(null,'1','喵喵喵','E呗',"你没钱了","感觉还钱",'这是文件文件文件','2019-04-08 00:00:00');
