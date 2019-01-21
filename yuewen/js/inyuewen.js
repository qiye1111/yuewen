$(function(){
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
    /*阅文文化*/
    $.ajax({
        url:'http://127.0.0.1:3000/inyuewen/culture',
        type:'get',
        dataType:'json',
        success:function(res){            
            var html='';
            for(var p of res){
                var {lc_id,title,detail,img_url}=p;
                html+=`<li class="iyc-history-item col-lg-3 col-md-6 col-sm-12">
                <img src="${img_url}">
                <div class="iyc-hi">
                    <p class="iyc-hi-title">${title}</p>
                    <p class="iyc-hi-subtitle">${detail}</p>
                </div>
            </li>`
            }
            $('.iyc-history').html(html)
        }
    })
    /*阅文生活*/
    $.ajax({
        url:'http://127.0.0.1:3000/inyuewen/carousel',
        type:'get',
        dataType:'json',
        success:function(res){            
            var res1=res.slice(0,9)            
            var html='';
            for(var p of res1){
                var {lw_img_id,img_url}=p;
                html+=`<div class="carousel-item"><img src="${img_url}" /></div>`
            }
            $('#demo2>.carousel-inner').html(html).show();
            var res2=res.slice(9,18)            
            var html='';
            for(var p of res2){
                var {lw_img_id,img_url}=p;
                html+=`<div class="carousel-item"><img src="${img_url}" /></div>`
            }
            $('#demo1>.carousel-inner').html(html).hide();
            $('#demo3>.carousel-inner').hide();
        }
    }).then(res=>{
        $('#demo1>.carousel-inner>.carousel-item:eq(0)').addClass('active');
        $('#demo2>.carousel-inner>.carousel-item:eq(0)').addClass('active');
        $.ajax({
            url:'http://127.0.0.1:3000/inyuewen/activity',
            type:'get',
            dataType:'json',
            success:function(res){                
                var res1=res.slice(0,7);
                var html='';
                for(var p of res1){
                    var {lw_act_id,title_id,title,activity}=p;              
                    html+=`<li>◇${activity}</li>`
                }
                $('#tDemo1').html(html)
                var res2=res.slice(7,14);
                var html='';
                for(var p of res2){
                    var {lw_act_id,title_id,title,activity}=p;              
                    html+=`<li>◇${activity}</li>`
                }
                $('#tDemo2').html(html)
                var res3=res.slice(14,21);
                var html='';
                for(var p of res3){
                    var {lw_act_id,title_id,title,activity}=p;              
                    html+=`<li>◇${activity}</li>`
                }
                $('#tDemo3').html(html)
            }
        }).then(res=>{
            $('#t-demo1').on('click','.nav-item',function(){
                var $li=$(this);
                var id=$li.attr('data-index')
                $('.carousel-inner').hide();
                $(`#demo${id}>.carousel-inner`).show();
            })
        })
    })
    /*经典培训*/
    $.ajax({
        url:'http://127.0.0.1:3000/inyuewen/training',
        type:'get',
        dataType:'json',
        success:function(res){
            console.log(res);
            var html='';
            for(var p of res){
                var {lt_id,title,detail,img_url }=p;
                html+=`<div class="col-lg-3 col-md-6 col-sm-12">
                        <div class="iyt-item">
                        <img src="${img_url}" />
                        <div class="iyt-item-i">
                        <h3 class="iyt-title">${title}</h3>
                        <p class="iyt-int">${detail}</p>
                        </div>
                        </div>
                        </div>`
            }
            $('.iy-training>.row').html(html)
        }
    })
})