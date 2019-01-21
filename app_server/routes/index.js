const express=require("express");
const router=express.Router();
const pool=require("../pool");

/*首页轮播图*/
router.get('/image',(req,res)=>{
    var sql='SELECT carousel_id,title,subtitle,img_url FROM  yw_index_carousel';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
/*全版权运营*/
router.get('/copyrightImage',(req,res)=>{
    var sql='SELECT copyright_id,img_url FROM  yw_copyright';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
router.get('/copyrightTitle',(req,res)=>{
    var sql='SELECT copyright_id,title FROM  yw_copyright';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
/*移动端部分*/
router.get('/app',(req,res)=>{   
    var app_id=req.query.id;    
    var sql='SELECT app_id,title,logo,href,img_url FROM  yw_app WHERE app_id=?';    
    pool.query(sql,app_id,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

/*旗下品牌*/
router.get('/brand',(req,res)=>{
    var sql=`SELECT brand_id,title,href,img_url FROM  yw_brand`;
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
router.get('/brandDetail',(req,res)=>{
    var sql='SELECT brand_id,detail FROM  yw_brand';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

/*新闻部分*/
router.get('/news',(req,res)=>{
    var sql='SELECT news_id,title,ntime,detail,img_url FROM  yw_news';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

/*联系我们*/
router.get('/contact',(req,res)=>{
    var sql='SELECT contact_id,title,cname,phone,email FROM  yw_contact';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})




module.exports=router;