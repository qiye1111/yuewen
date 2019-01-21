const express=require("express");
const router=express.Router();
const pool=require("../pool");


/*招聘类别*/
router.get('/joinin',(req,res)=>{
    var sql='SELECT jc_id,title,detail,href,img_url FROM joinin';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

/*工作收获*/
router.get('/gain',(req,res)=>{
    var sql='SELECT jg_id,title,detail,img_url FROM joinin_gain';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})

/*话*/

router.get('/talking',(req,res)=>{
    var sql='SELECT jt_id,title,school,detail,img_url,book_url FROM joinin_talking';
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})









module.exports=router;