$(function(){
    /*头部定时器移动事件*/
    $(`.sh-per:eq(0)`).addClass('pre-active');/*首先由默认的情况*/
    var i=0;
    setInterval(function(){
        i++;             
      $('.sh-per').removeClass('pre-active');     
      $(`.sh-per:eq(${i})`).addClass('pre-active');      
      if(i>=2){i=0} 
    },3000)
    /*滚动事件*/
    $(window).scroll(function(){
        var topp = $(document).scrollTop();
        if(topp>20){
            $('.bar').addClass('bar-active');
            $('.bc-h').css({"background": "url('http://127.0.0.1:3000/img/index/logo2.png') no-repeat","background-size":"cover"});
            $('.btn-a').css({"color":"#3385ff","border":"1px solid #3385ff"});
            $('.bc-one').css({"color": "#717678"})
        }else if(topp<20){
            $('.bar').removeClass('bar-active');
            $('.bc-h').removeAttr('style');
            $('.btn-a').removeAttr('style');
            $('.bc-one').removeAttr('style')
        }
    })
    /*校招流程*/
    $.ajax({
        url:'http://127.0.0.1:3000/school/process',
        type:'get',
        dataType:'json',
        success:function(res){
            var html='';
            for(var p of res){
                var {process_id,title,pname}=p;
                html+=`<li class="sp-item">
                <p class="sp-item-title">${title}</p>
                <p class="sp-item-time">${pname}</p>                
                </li> `
            }
            $('.sp').html(html);
        }
    })
    /*校招亮点*/
    $.ajax({
        url:'http://127.0.0.1:3000/school/point',
        type:'get',
        dataType:'json',
        success:function(res){           
            var html=''
            for(var p of res){
                var {point_id,title,detail,img_url_1,img_url_2,img_url_3}=p;
                html+=`<div class="s-hl">
                    <div class="shl-carousel">
                    <div class="carousel" data-ride="carousel" id="demo1">
                        <div class="carousel-item active"><img src="${img_url_1}" alt=""/></div>
                        <div class="carousel-item"><img src="${img_url_2}" alt=""/></div>
                        <div class="carousel-item"><img src="${img_url_3}" alt=""/></div>
                    </div>
                    <ul class="carousel-indicators">
                        <li class="active" data-target="#demo1" data-slide-to="0"></li>
                        <li class="" data-target="#demo1" data-slide-to="1"></li>
                        <li class="" data-target="#demo1" data-slide-to="2"></li>
                    </ul>
                </div>
                <div class="shl-caption">
                    <h4>
                        <i><img src="http://127.0.0.1:3000/img/school/school-arrl.png" alt=""/></i>
                        ${title} 
                    </h4>
                    <p>${detail}</p>
                </div>
            </div>`
            }
            $('.shl').html(html);
            $('.s-hl:eq(0)').addClass('one');
            $('.s-hl:eq(1)').addClass('two');
        }
    })
    /*校招职位*/
    $.ajax({
       url:'http://127.0.0.1:3000/school/job',
       type:'get',
       dataType:'json',
       success:function(res){           
           var html='';
           for(var p of res){
                var {job_id,title,img_url}=p;
                html+=`<li class="sw-item"><a href="society.html" class="sw-item-a"><i class="sw-item-i" style='background:url(${img_url}) no-repeat'></i>${title}</a></li>`                
            }
            $('.sw').html(html);
       } 
    })
    /*校招咨询*/
    $.ajax({
        url:'http://127.0.0.1:3000/school/msg',
        type:'get',
        dataType:'json',
        success:function(res){            
            var html='';
           for(var p of res){
               var {msg_id,title,detail,img_url}=p;
               html+=`<div class="s-nav-item" data-index='${msg_id}'>
                    <img src="${img_url}" alt=""/>
                    <div class="nav-msg">
                   <h4 class="nav-item-h4">${title}</h4>
                   <p class="nav-msg-p">${detail}</p>
                    </div>
                    </div>`
           }
           $('.s-nav').html(html);
           $('.s-msg li').hide();
           $('.s-msg li:eq(0)').show();
        }
    }).then(res=>{
        $('.s-nav').on('click','.s-nav-item',function(){
            var id=$(this).attr('data-index');
            $('.s-msg li').hide();
            $(`.s-msg li:eq(${id-1})`).show();
        })
    })
})
