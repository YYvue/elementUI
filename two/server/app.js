// 引入第三方模块
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const session = require("express-session");
const bodyParser=require("body-parser");
// 配置第三方模块
// 配置连接池
var pool = mysql.createPool({
	host: "127.0.0.1",
	prot: "3306",
	user: "root",
	password: "",
	database: "BlogManagement",
	connectionLimit: 15
});
// 配置跨域
var server = express();
server.use(cors({
	origin: ["http://127.0.0.1:3001", "http://localhost:3001",'http://127.0.0.1:8080'],
	credentials: true
}));
server.use(session({
	secret: "128位字符串",
	resave: true,
	saveUninitialized: true
}));
//body中间件
server.use(bodyParser.urlencoded({
 extended:false
}));
server.listen(3000);
server.use(express.static("public"));



server.get('/giao',(req,res)=>{
res.send('123');
})

/*
server.get("/login",(req,res)=>{
	var account=req.query.uaccount;
	var upwd=req.query.upwd;	
	var sql="SELECT id,uname FROM Blog_user WHERE account=? AND upwd=md5(?)";
	pool.query(sql,[account,upwd],(err,result)=>{
		if(err)throw err;
		if(result.length>0){
			res.send({code:1,msg:"用户登录成功"})
			
		}else{
			res.send({code:-1,msg:"用户登录失败"})}
			
	})
})
*/

//登录
server.post("/login",(req,res)=>{
	var account=req.body.uaccount;
	var upwd=req.body.upwd;	
	var sql="SELECT id,uname FROM Blog_user WHERE account=? AND upwd=md5(?)";
	pool.query(sql,[account,upwd],(err,result)=>{
		if(err)throw err;
		if(result.length>0){
			console.log(result);
			var lolsuname=result[0].uname;
			console.log(lolsuname);
			var lolstoken=result[0].id;
			res.send({code:1,msg:"用户登录成功",lolsuname:lolsuname,lolstoken:lolstoken})
			
			
		}else{
			res.send({code:-1,msg:"用户登录失败"})}
			
	})
})

//邮箱前6个邮件获取
server.get('/mail',(req,res)=>{
	var uname=req.query.uname;
	var ikey=req.query.ikey;
	var pno=req.query.pno
	console.log(uname)
	console.log(ikey);
	pno=parseInt(pno);
	var sql="SELECT * FROM Inbox_mail WHERE ikey=? AND uname=? LIMIT ?,4";
	pool.query(sql,[ikey,uname,pno],(err,result)=>{
		if(err)throw err;
		if(result.length>0){
			
			
			res.send({code:1,msg:"获取邮件成功",result})
			
			
		}else{
			
			res.send({code:-1,msg:"获取邮件失败"})}

	})
})
//修改ikey值为0假装删除邮件
server.get('/deletemail',(req,res)=>{
	var id=req.query.id;
	// id=JSON.stringify(id);
	// id=id.join(',')
	console.log(id,typeof(id))
	var sql='UPDATE Inbox_mail  SET ikey=0 WHERE id in (?)'
	pool.query(sql,[id],(err,result)=>{
				if(err)throw err;
			if(result.affectedRows>0){
				res.send("删除成功")
			}else{
					res.send("删除失败")
			}
	})
})

//// 获取商品分类
//server.get("/spfl", (req, res) => {
//	var sql = "SELECT id,lb,lbbh FROM tdxm_lb";
//	pool.query(sql, (err, result) => {
//		if (err) throw err;
//		if (result.length > 0) {
//			res.send({
//				code: "请求分类成功",
//				data: result
//			})
//		} else {
//			res.send({
//				code: "请求分类失败"
//			})
//		}
//	})
//})
//// 商品介绍
//server.get("/spjs", (req, res) => {
//	var sql = "SELECT id,spmc,sp_url,splb FROM tdxm_sp";
//	pool.query(sql, (err, result) => {
//		if (err) throw err;
//		if (result.length > 0) {
//			res.send({
//				code: "请求商品成功",
//				data: result
//			})
//		} else {
//			res.send({
//				code: "请求商品失败"
//			})
//		}
//	})
//})
//// 商品详情
//server.get("/spxq", (req, res) => {
//	var spid=req.query.spid;
//	var sql = "SELECT kc,hy,gs,yhzs,price,imgs FROM tdxm_spxq WHERE spid=?";
//	pool.query(sql,[spid],(err, result) => {
//		if (err) throw err;
//		if (result.length > 0) {
//			res.send({
//				code: "1",
//				data: result,
//			})
//		} else {
//			res.send({
//				code: "-1"
//			})
//		}
//	})
//})
////登录
//server.post("/login",(req,res)=>{
//	var uname=req.body.uname;
//	var upwd=req.body.upwd;	
//	var sql="SELECT id,nc FROM tdxm_user WHERE uname=?AND upwd=md5(?)";
//	pool.query(sql,[uname,upwd],(err,result)=>{
//		if(err)throw err;
//		if(result.length==0){
//			res.send({code:-1,msg:"用户登录失败"})
//		}else{
//			req.session.uid=result[0].id;
//			var yhid=req.session.uid;
//			var nc=result[0].nc;
//			res.send({code:1,msg:"用户登录成功",yhid:yhid,nc:nc})};
//	})
//})
// 添加购物车
//server.get("/tj",(req,res)=>{
//	var obj=req.query;
//	var spmc=obj.spmc;
//	var spsl=obj.spsl;
//	var spjg=obj.spjg;
//	var yhid=obj.yhid;
//	var url=obj.url;
//	var sql="INSERT INTO tdxm_yhgwc VALUES(?,?,?,?,?,?);"
//	pool.query(sql,[null,spmc,spsl,spjg,yhid,url],(err,result)=>{
//		if(err)throw err;
//		if(result.affectedRows>0){
//			res.send({code:1})
//		}else{
//			res.send({code:0})
//		}
//	})
//})
//// 显示购物车
//server.get("/gwc",(req,res)=>{
//	var yhid=req.query.yhid;
//	var sql="SELECT id,spmc,spsl,spjg,sptp FROM tdxm_yhgwc WHERE yhid=?"
//	pool.query(sql,[yhid],(err,result)=>{
//		if(err)throw err;
//		if(result.length>0){
//			res.send({code:1,data:result})
//		}else{
//			res.send({code:0})
//		}
//	})
//})
//// 如果数量为0,删除此购物车
//server.get("/sc",(req,res)=>{
//	var id=req.query.id;
//	var sql="DELETE FROM tdxm_yhgwc WHERE id=?"
//	pool.query(sql,[id],(err,result)=>{
//		if(err)throw err;
//		if(result.affectedRows>0){
//			res.send("删除成功")
//		}else{
//			res.send("删除失败")
//		}
//	})
//})