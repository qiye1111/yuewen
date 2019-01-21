const express=require("express");
const router=express.Router();
const pool=require("../pool");

/*校招流程*/
router.get('/process',(req,res)=>{
    var sql='SELECT process_id,title,pname FROM school_process';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)

    })
})
/*校招亮点*/
router.get('/point',(req,res)=>{
    var sql=`SELECT point_id,title,detail,img_url_1,img_url_2,img_url_3 FROM school_point`
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

/*校招职位*/
router.get('/job',(req,res)=>{
    var sql=`SELECT job_id,title,img_url FROM school_job`
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

/*校招信息*/
router.get('/msg',(req,res)=>{
    var sql=`SELECT msg_id,title,detail,img_url FROM school_msg`
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
module.exports=router;