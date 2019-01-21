const express=require("express");
const router=express.Router();
const pool=require("../pool");


/*获取职位类别*/
router.get('/job',(req,res)=>{
    var sql='SELECT  job_id ,title,img_url,img_active_url FROM society_job';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

/*职位表*/
router.get('/work',(req,res)=>{
    var sql='SELECT  sp_id,title,workplace,job_id,department FROM society_position'
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})


module.exports=router;