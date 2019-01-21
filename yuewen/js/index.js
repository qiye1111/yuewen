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
    /*首页轮播图*/
    $.ajax({
        url:'http://127.0.0.1:3000/index/image',
        tyep:'get',
        dataType:'json',
        success:function(res){            
            var html='';
            for(var p of res){
                var {title,subtitle,img_url}=p;                           
                html+=`<div class="carousel-item">
                <img src="${img_url}" class="w-100">
                <div class="carousel-caption m-auto">
                    <h1>${title}</h1>
                    <P class="font-large">${subtitle}</P>
                </div>
            </div>`            
            }
            var $div=$('#demo>.carousel-inner');
            $div.html(html);
            $('#demo>.carousel-inner>.carousel-item:first-child').addClass('active');
        }
    });
    /*全版权运营*/
    // $.ajax({
    //     url:'http://127.0.0.1:3000/index/copyrightImage',
    //     type:'get',
    //     dataType:'json',
    //     success:function(res){
    //         console.log(res);
    //         var html='';            
    //         for(var p of res){
    //             var {copyright_id,img_url}=p;                            
    //             html+=`<li class='poster-item'><img src="${img_url}" class="yw-book-pic" data-id=${copyright_id} "/></li>`;  
    //             $('.ywBookShow').html(html);                                        
    //         };            
    //     }       
    // })
    /*移动端*/    
    $.ajax({
        url:'http://127.0.0.1:3000/index/app',
        type:'get',
        data:{id:1},              
        success:function(res){           
            var id=1;             
            var {logo,title,herf,img_url}=res[0];
            var html=`<div class="yw-app-desc">
            <h3 class="yw-app-slogon yw-slogon-qq"><img src="${logo}" /></h3>
            <p class="yw-app-desc-detail">${title}</p>
            <p><a href="${herf}" class="btn-aa">了解更多</a></p></div>
            <div class="yw-app-img-x">
            <img src="${img_url}" >
            </div>`
            $('#tabpanel1').html(html);
            $('.tab-bg-line').css({transform:`translateX(${100*id-90}px)`,width:'80px'});                      
        }
    }) ;          
    $('#floor-three>.tabApp').on('click','a.app-tab',function(){        
        var $a=$(this);        
        var id=$a.attr('data-app_id');
        $.ajax({
            url:'http://127.0.0.1:3000/index/app',
            data:{id:id},
            tyep:'get',
            dataType:'json',
            success:function(res){                
                var {logo,title,herf,img_url}=res[0];
                var html=`<div class="yw-app-desc">
                <h3 class="yw-app-slogon yw-slogon-qq"><img src="${logo}" /></h3>
                <p class="yw-app-desc-detail">${title}</p>
                <p><a href="${herf}" class="btn-aa">了解更多</a></p></div>
                <div class="yw-app-img-x">
                <img src="${img_url}" >
                </div>`
                $('.app-mobile').hide();                
                $(`#tabpanel${id}`).html(html).show();
                $('.tab-bg-line').css({transform:`translateX(${100*id-90}px)`,width:'80px'});    
            }
        })   
    });
    /*旗下品牌*/
    $.ajax({
        url:'http://127.0.0.1:3000/index/brand',
        type:'get',
        dataType:'json',
        success:function(res){            
            var html='';
            for(var p of res){
                var {brand_id,title,href,img_url}=p;
                html+=`<a href="${href}" target='_blank' title="${title}" class="brandNav-item">
                <img src="${img_url}"  class="brand-img" data-index="${brand_id}" />
                <h4 class="brand-h4">${title}</h4>
            </a>`
            }
            $('#brandNavX').html(html); 
        }
    }).then(res=>{
        $.ajax({
            url:'http://127.0.0.1:3000/index/brandDetail',
            type:'get',
            dataType:'json',
            success:function(res){            
                var html='';
                for(var p of res){
                    var {brand_id,detail}=p;
                    html+=`<li class="yw-brand-desc-li out''>
                    <p class="brandDesc-p">${detail}</p>
                    </li>`
                }
                $('#brandDescX').html(html);
                $(`.yw-brand-desc-li:eq(0)`).removeClass('out').addClass('in');
            }
         }).then(res=>{
            $('#brandNavX>.brandNav-item>.brand-img').mouseover(function(){            
                var $img=$(this);            
                var id=$img.attr('data-index');
                $('.yw-brand-desc-li').each(function(){
                    if($(this).hasClass('in')){
                        $(this).removeClass('in').addClass('out')
                    }
                })              
                $(`.yw-brand-desc-li:eq(${id-1})`).removeClass('out').addClass('in');
                
            })
         })
    })
    /*新闻部分*/
    $.ajax({
        url:'http://127.0.0.1:3000/index/news',
        type:'get',
        dataType:'json',
        success:function(res){
            console.log(res)
            var arr=res.slice(0,2);
            console.log(arr)
            var html='';
            for(var p of res){
                var {news_id,title,ntime,detail,img_url}=p;
                html+=`<div class="news-item">
                <a href="#" class="news-img"><img src="${img_url}" /></a>
                <div class="news-msg">
                    <h5 class="news-title"><a href="#">${title}</a></h5>
                    <div class="news-time"><span>${ntime}</span></div>
                    <p class="news-subtitle">${detail}</p>
                    <p class="news-more"><a href="#">阅读详情<i class="news-arr"></i></a></p>
                </div>
            </div>`
            }
            $('.news-content').html(html);
        }
    })
    /*联系我们*/
    $.ajax({
        url:'http://127.0.0.1:3000/index/contact',
        type:'get',
        dataType:'json',
        success:function(res){           
            var res1=res.slice(0,4);            
            var html1='';
            for(var p of res1){
                var {contact_id,title,cname,phone,email}=p;
                html1+=`<ul class="cc-item" data-index='${contact_id}'>
                        <li class="cc-desc">
                        <p>${title}</p>
                        <ul class="cc-con ">
                        <li>${cname}</li>
                        <li>${phone}</li>
                        <li>${email}</li>
                        </ul>
                        </li>
                        </ul>`
            }
            $('#cc1').html(html1);
            var res2=res.slice(4,8);            
            var html2='';
            for(var p of res2){
                var {contact_id,title,cname,phone,email}=p;
                html2+=`<ul class="cc-item" data-index='${contact_id}'>
                        <li class="cc-desc">
                        <p>${title}</p>
                        <ul class="cc-con ">
                        <li>${cname}</li>
                        <li>${phone}</li>
                        <li>${email}</li>
                        </ul>
                        </li>
                        </ul>`
            }
            $('#cc2').html(html2);
            var res3=res.slice(8,10);            
            var html3='';
            for(var p of res3){
                var {contact_id,title,cname,phone,email}=p;
                html3+=`<ul class="cc-item" data-index='${contact_id}'>
                        <li class="cc-desc">
                        <p>${title}</p>
                        <ul class="cc-con cheight">
                        <li>${cname}</li>
                        <li>${phone}</li>
                        <li>${email}</li>
                        </ul>
                        </li>
                        </ul>`
            }
            $('#cc3').html(html3);
        }
    }).then(res=>{  
            console.log($('.cc-item'))      
            $('.cc-item').mouseover(function(){ 
                var id=$(this).attr('data-index');
                console.log(id)                      
              $('.cc-con').each(function(){
                  if($(this).hasClass('cheight')){
                      $(this).removeClass('cheight')
                  }
                 
              })
              console.log($(`.cc-con`))
              console.log($(`.cc-con:eq(1)`))
              $(`.cc-con:eq(${id-1})`).addClass('cheight')
            })
            
        })
})

