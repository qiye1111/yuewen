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
    /*招聘类型*/
    $.ajax({
        url:'http://127.0.0.1:3000/join/joinin',
        type:'get',
        dataType:'json',
        success:function(res){            
            var html='';
            for(var p of res){
                var {jc_id,title,detail,href,img_url}=p;
                html+=`<div class='bj-item'>       
                    <div class='bj-item-left'>
                    <span class='bj-item-title'>${title}</span>
                    <span class='bj-item-label'>${detail}</span>
                    <a href="${href}">查看详情</a>
                    </div>
                    <img src="${img_url}" >
                </div>`
            }
            $('.bj-body').html(html);
        }
    })
    /*工作收获*/
    $.ajax({
        url:'http://127.0.0.1:3000/join/gain',
        type:'get',
        dataType:'json',
        success:function(res){           
            var html=''
            for(var p of res){
                var {jg_id,title,detail,img_url}=p;
                html+=`<div class='bg-item '>
                <img src="${img_url}" >
                <div class='bg-item-right'>
                    <p class='bg-item-title'>${title}</p>
                    <span class='bg-item-label'>${detail}</span>
                </div>
                </div>`
            }
            $('.bg-body').html(html);
        }
    })
    /*话*/
    $.ajax({
        url:'http://127.0.0.1:3000/join/talking',
        type:'get',
        success:function(res){
            console.log(res)
            var html='';
            for(var p of res){
                var {jt_id,title,school,detail,img_url,book_url}=p;
                html+=`<div class=' talking-item'>
                <div class='talking-item-top'>
                    <img src="${img_url}" >
                    <div class='item-top'>
                        <p class='item-top-name'>${title}</p>
                        <p class='item-top-position'>${school}  </p>
                    </div>
                </div>
                <div class='talking-item-bottom book'>${detail}
                </div>
                <img src="${book_url}" alt="" class='talking-item-img'>
                </div>`
            }
            console.log()
            $('.talking-body').html(html);
            $('.talking-item').hide();
            $('.talking-item:eq(0)').show();
            $('.talking-item:eq(1)').show();
        }
    })
})