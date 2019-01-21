$(function(){
    /*滚动事件*/
    $(window).scroll(function(){
        var topp = $(document).scrollTop();
        if(topp>20){
            $('.bar').addClass('active');
            $('.bc-h').css({"background": "url('http://127.0.0.1:3000/img/index/logo2.png') no-repeat","background-size":"cover"});
            $('.btn-a').css({"color":"#3385ff","border":"1px solid #3385ff"});
            $('.bc-one').css({"color": "#717678"})
        }else if(topp<20){
            $('.bar').removeClass('active');
            $('.bc-h').removeAttr('style');
            $('.btn-a').removeAttr('style');
            $('.bc-one').removeAttr('style')
        }
    })
    /*职位类别*/
    $.ajax({
        url:'http://127.0.0.1:3000/society/job',
        type:'get',
        dataType:'json',
        success:function(res){                        var html='';
            for(var p of res){
                var {job_id ,title,img_url,img_active_url}=p;
                html+=`<a href="#" data-id='${job_id}'><img src="${img_url}" />${title}</a>`
            }
            $('.sjm-tab').html(html);
            $('.sjm-tab>a:first-child').css({'border-bottom':'3px solid #3385ff','padding-bottom':'20px'});
            $('.sjm-desc-class').hide();            
            $('.sjm-desc-class:first-child').show();
        }
    }).then(res=>{
        $('.sjm-tab').on('click','a',function(){
            $('.sjm-tab>a').css({'border-bottom':'0'})
            var $a=$(this); 
            $a.css({'border-bottom':'3px solid #3385ff','padding-bottom':'20px'}) ;   
            var id=$a.attr('data-id');
            $('.sjm-desc-class').hide();
            $(`.sjm-desc-class:eq(${id-1})`).show();
            
        })
        $.ajax({
            url:'http://127.0.0.1:3000/society/work',
            type:'get',
            dataType:'json',
            success:function(result){                 var res1=result.slice(0,10);
                var html='';
                for(var p of res1){
                    var {sp_id,title,workplace,job_id,department}=p;
                    html+=`<li class="sjm-desc-item">
                        <a href="javascript:;">立即申请</a>
                        <a href="#">
                        <div class="sjm-desc-item-title">
                            <h2 class=sjm-hh>${title}</h2>
                            <p class="sjm-pp">${workplace}</p>
                        </div>
                        <div class="sjm-desc-item-sub">
                            <h5 class="sjm-h5">${department}</h5>
                            <i class="sjm-i"></i>
                        </div>
                        </a>
                        <div class="sjm-desc-item-p" >                        
                        </div>
                        </li>`;                    
                }
                $('#page1').html(html);
                var res2=result.slice(10,16);
                var html='';
                for(var p of res2){
                    var {sp_id,title,workplace,job_id,department}=p;
                    html+=`<li class="sjm-desc-item">
                        <a href="javascript:;">立即申请</a>
                        <a href="#">
                        <div class="sjm-desc-item-title">
                            <h2 class=sjm-hh>${title}</h2>
                            <p class="sjm-pp">${workplace}</p>
                        </div>
                        <div class="sjm-desc-item-sub">
                            <h5 class="sjm-h5">${department}</h5>
                            <i class="sjm-i"></i>
                        </div>
                        </a>
                        <div class="sjm-desc-item-p" >                        
                        </div>
                        </li>`;                    
                }
                $('#page2').html(html);
                var res3=result.slice(16,22);
                var html='';
                for(var p of res3){
                    var {sp_id,title,workplace,job_id,department}=p;
                    html+=`<li class="sjm-desc-item">
                        <a href="javascript:;">立即申请</a>
                        <a href="#">
                        <div class="sjm-desc-item-title">
                            <h2 class=sjm-hh>${title}</h2>
                            <p class="sjm-pp">${workplace}</p>
                        </div>
                        <div class="sjm-desc-item-sub">
                            <h5 class="sjm-h5">${department}</h5>
                            <i class="sjm-i"></i>
                        </div>
                        </a>
                        <div class="sjm-desc-item-p" >                        
                        </div>
                        </li>`;                    
                }
                $('#page3').html(html);
                var res4=result.slice(22,27);
                var html='';
                for(var p of res4){
                    var {sp_id,title,workplace,job_id,department}=p;
                    html+=`<li class="sjm-desc-item">
                        <a href="javascript:;">立即申请</a>
                        <a href="#">
                        <div class="sjm-desc-item-title">
                            <h2 class=sjm-hh>${title}</h2>
                            <p class="sjm-pp">${workplace}</p>
                        </div>
                        <div class="sjm-desc-item-sub">
                            <h5 class="sjm-h5">${department}</h5>
                            <i class="sjm-i"></i>
                        </div>
                        </a>
                        <div class="sjm-desc-item-p" >                        
                        </div>
                        </li>`;                    
                }
                $('#page4').html(html);
                var res5=result.slice(27,32);
                var html='';
                for(var p of res5){
                    var {sp_id,title,workplace,job_id,department}=p;
                    html+=`<li class="sjm-desc-item">
                        <a href="javascript:;">立即申请</a>
                        <a href="#">
                        <div class="sjm-desc-item-title">
                            <h2 class=sjm-hh>${title}</h2>
                            <p class="sjm-pp">${workplace}</p>
                        </div>
                        <div class="sjm-desc-item-sub">
                            <h5 class="sjm-h5">${department}</h5>
                            <i class="sjm-i"></i>
                        </div>
                        </a>
                        <div class="sjm-desc-item-p" >                        
                        </div>
                        </li>`;                    
                }
                $('#page5').html(html);
                var res6=result.slice(32,36);
                var html='';
                for(var p of res6){
                    var {sp_id,title,workplace,job_id,department}=p;
                    html+=`<li class="sjm-desc-item">
                        <a href="javascript:;">立即申请</a>
                        <a href="#">
                        <div class="sjm-desc-item-title">
                            <h2 class=sjm-hh>${title}</h2>
                            <p class="sjm-pp">${workplace}</p>
                        </div>
                        <div class="sjm-desc-item-sub">
                            <h5 class="sjm-h5">${department}</h5>
                            <i class="sjm-i"></i>
                        </div>
                        </a>
                        <div class="sjm-desc-item-p" >                        
                        </div>
                        </li>`;                    
                }
                $('#page6').html(html);
                var res7=result.slice(36,41);
                var html='';
                for(var p of res7){
                    var {sp_id,title,workplace,job_id,department}=p;
                    html+=`<li class="sjm-desc-item">
                        <a href="javascript:;">立即申请</a>
                        <a href="#">
                        <div class="sjm-desc-item-title">
                            <h2 class=sjm-hh>${title}</h2>
                            <p class="sjm-pp">${workplace}</p>
                        </div>
                        <div class="sjm-desc-item-sub">
                            <h5 class="sjm-h5">${department}</h5>
                            <i class="sjm-i"></i>
                        </div>
                        </a>
                        <div class="sjm-desc-item-p" >                        
                        </div>
                        </li>`;                    
                }
                $('#page7').html(html);
            }
        }).then(res=>{
            var html=`<ol>
            <h5>岗位职责</h5>
            <li>○主要负责阅文集团（QQ阅读、起点、各分子公司）业务数据结算系统开发与维护；</li>
            <li>○负责实时数据业务开发。</li>
            </ol>
            <ol>
            <h5>任职要求：</h5>
            <li>○2年以上工作经验，数据库基础扎实，熟悉主流数据库产品、如MySQL，精通SQL、存储过程开发，有较好SQL性能调优经验；</li>
            <li>○至少熟练使用Python、Shell、Perl等脚本语言之一；</li>
            <li>○熟悉hadoop、hive、spark、storm等分布式系统开发与维护，有流式计算开发经验者优先；</li>
            <li>○熟悉ETL开发、数据建模，有数据仓库设计实施经验者优先；</li>
            <li>○有数据分析、机器学习经验者优先；</li>
            <li>○学习能力强，抗压能力强；具备耐心/细心的品质。</li>
            </ol>`
            $('.sjm-desc-item-p').html(html).hide();     
            $('.sjm-desc-item').on('click',function(){
                var $li=$(this)
                var div=$li.children().last().attr('style').indexOf('block');              
                if(div==-1){
                    $li.children().last().show();  
                }else{
                    $li.children().last().hide(); 
                }
            })
        })
    })
})