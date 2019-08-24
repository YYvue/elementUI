#设置客户端连接的编码
SET NAMES UTF8;
#丢弃数据库
DROP DATABASE IF EXISTS tdxm;
#创建数据库
CREATE DATABASE tdxm CHARSET=UTF8;
#进入该数据库
USE tdxm;
#创建类别的数据库

/*CREATE TABLE tdxm_lb(
  id INT  UNIQUE,
  lb VARCHAR(20),
  lbbh VARCHAR(20) PRIMARY KEY
);
#插入数据
INSERT INTO tdxm_lb VALUES(1,'玫瑰类','mgl');
INSERT INTO tdxm_lb VALUES(2,'百合类','bhl');
INSERT INTO tdxm_lb VALUES(3,'康乃馨','knx');
INSERT INTO tdxm_lb VALUES(4,'菊花类','jhl');
INSERT INTO tdxm_lb VALUES(5,'配花类','phl');
INSERT INTO tdxm_lb VALUES(6,'配叶类','pyl');
INSERT INTO tdxm_lb VALUES(7,'配果类','pgl');
INSERT INTO tdxm_lb VALUES(8,'进口花','jkh');
INSERT INTO tdxm_lb VALUES(9,'盆栽类','pzl');
INSERT INTO tdxm_lb VALUES(10,'辅材类','fcl');
INSERT INTO tdxm_lb VALUES(11,'整箱类','zxl');
INSERT INTO tdxm_lb VALUES(12,'永生花','ysh');
INSERT INTO tdxm_lb VALUES(13,'仿真花','fzh');
#创建商品内容列表
CREATE TABLE tdxm_sp(
  id INT PRIMARY KEY AUTO_INCREMENT,
  spmc VARCHAR(20),
  sp_url VARCHAR(20),
  splb  VARCHAR(20),
  FOREIGN KEY(splb) REFERENCES tdxm_lb(lbbh)
);
#添加商品内容
INSERT INTO tdxm_sp VALUES(null,'黑魔术','01.jpg','mgl');
INSERT INTO tdxm_sp VALUES(null,'索尔邦','01.jpg','bhl');
INSERT INTO tdxm_sp VALUES(null,'洪福','01.jpg','knx');
INSERT INTO tdxm_sp VALUES(null,'太阳','01.jpg','jhl');
INSERT INTO tdxm_sp VALUES(null,'黄莺','01.jpg','phl');
INSERT INTO tdxm_sp VALUES(null,'富贵竹','01.jpg','pyl');
INSERT INTO tdxm_sp VALUES(null,'红色火龙珠','01.jpg','pgl');
INSERT INTO tdxm_sp VALUES(null,'白色马蹄莲','01.jpg','jkh');
INSERT INTO tdxm_sp VALUES(null,'美酒白掌','01.jpg','pzl');
INSERT INTO tdxm_sp VALUES(null,'绿萝托盘','01.jpg','fcl');
INSERT INTO tdxm_sp VALUES(null,'箱装绿萝','01.jpg','zxl');
INSERT INTO tdxm_sp VALUES(null,'七彩玫瑰八音盒','01.jpg','ysh');
INSERT INTO tdxm_sp VALUES(null,'金色金玫瑰','01.jpg','fzh');
#创建商品详情列表
CREATE TABLE tdxm_spxq(
  id INT PRIMARY KEY AUTO_INCREMENT,
  kc INT,
  hy  VARCHAR(200),
  gs  VARCHAR(200),
  yhzs VARCHAR(200),
  price  DECIMAL(7,2),
  imgs  VARCHAR(100),
  spid  INT,
  FOREIGN KEY(spid) REFERENCES tdxm_sp(id)
);
#插入商品详情
INSERT INTO tdxm_spxq VALUES(null,9999,"死心塌地的爱,深深的迷恋","黑魔术,颜色深红,厚厚的花瓣上黑色中透着红色,红色中又透着黑色,花型规则美观,有种厚厚的丝绒感,给人以华贵神秘之感','花头不能沾水,避开风口位置摆放","插入12cm的水中养护,储存的最佳温度为2-5℃,最佳湿度为70%~80%.",100.00,"01.jpg,01.jpg",1);
#创建用户表
CREATE TABLE tdxm_user(
  id INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(50),
  upwd  VARCHAR(32),
  nc    VARCHAR(50)
);
#插入用户数据
INSERT INTO tdxm_user VALUES(null,'gekaiweng',md5('123'),"凯文");
INSERT INTO tdxm_user VALUES(null,'yingdenghui',md5('456'),"登辉");
INSERT INTO tdxm_user VALUES(null,'zhangdong',md5('789'),"冬");
#创建购物车列表
CREATE TABLE tdxm_yhgwc(
	id INT PRIMARY KEY AUTO_INCREMENT,
	spmc VARCHAR(20),
	spsl INT,
	spjg DECIMAL(7,2),
	sptp VARCHAR(20),
	yhid INT,
	FOREIGN KEY(yhid) REFERENCES tdxm_user(id)
)
*/