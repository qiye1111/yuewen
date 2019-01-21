const express=require("express");
const router=express.Router();
const pool=require("../pool");

/*阅文文化*/
router.get('/culture',(req,res)=>{
    var sql='SELECT lc_id,title,detail,img_url FROM  life_culture';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
/*阅文工作环境*/
router.get('/carousel',(req,res)=>{
    var sql='SELECT lw_img_id,img_url FROM life_work_img';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

/*工作活动*/
router.get('/activity',(req,res)=>{
    var sql='SELECT lw_act_id,title_id,title,activity FROM life_work_activity';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
/*经典培训项目*/
router.get('/training',(req,res)=>{
    var sql='SELECT  lt_id,title,detail,img_url FROM life_training';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

module.exports=router;