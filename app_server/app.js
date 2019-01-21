const express=require('express');
const bodyParser=require('body-parser');
const session=require('express-session');
const cors=require('cors');
/*引入路由模块*/
const index=require('./routes/index');
const inyuewen=require('./routes/inyuewen');
const society=require('./routes/society');
const school=require('./routes/school');
const join=require('./routes/join')
var app=express();
app.listen(3000);
app.use(express.static(__dirname+'/public'));
app.use(cors({
    origin:["http://127.0.0.1:3001",
    "http://localhost:3001",'http://127.0.0.1:5500'],
    credentials:true
}));
app.use(express.static(__dirname+'/public'));
app.use(bodyParser.urlencoded({
    extended:false
}));
app.use(session({
    secret:'128位随机字符', //安全字符
    resave:false,         //请求保存
    saveUninitialized:true,  //初始化保存
    cookie:{
        maxAge:1000*60*60*24
    }
}));
/*使用路由模块*/
app.use('/index',index);
app.use('/inyuewen',inyuewen);
app.use('/society',society);
app.use('/school',school)
app.use('/join',join)