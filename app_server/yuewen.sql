#阅文数据库
SET NAMES UTF8;
DROP DATABASE IF EXISTS yw;
CREATE DATABASE yw CHARSET=UTF8;
USE yw;
#表格
CREATE TABLE yw_index_carousel(
    carousel_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    subtitle VARCHAR(255),
    img_url VARCHAR(255)
);
INSERT INTO yw_index_carousel VALUES(1,'数字阅读，文创未来','引领行业的正版数字阅读平台和文学 IP 培育平台','http://127.0.0.1:3000/img/index-1.jpg');
INSERT INTO yw_index_carousel VALUES(2,'以梦为马，不负韶华','加入阅文，携手共铸文学梦','http://127.0.0.1:3000/img/index-2.jpg');




#全版权运营
CREATE TABLE yw_copyright(
    copyright_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),    
    img_url VARCHAR(255)
);
INSERT INTO yw_copyright VALUES(1,'《步步惊心》是作家桐华创作的穿越小说。同名改编的电视剧于2012年在湖南卫视上映并在中日韩同时热播，荣获2012年第七届首尔国际电视节最佳海外电视剧大奖，并于2016年再度翻拍成《步步惊心：丽》。','http://127.0.0.1:3000/img/bubujingxin.jpg');
INSERT INTO yw_copyright VALUES(2,'《盗墓笔记》最初连载于起点中文网，是南派三叔成名代表作。2015年网剧开播首日点击破亿，开启了盗墓文学 IP 年。电影于2016年上映，由井柏然、鹿晗、马思纯等主演，累计票房10亿元。','http://127.0.0.1:3000/img/daomubiji.jpg');
INSERT INTO yw_copyright VALUES(3,'《斗破苍穹》是天蚕土豆首发于起点中文网的古装玄幻小说。其改编的动漫、游戏均广受欢迎，同名电视剧也即将上映。电影由万达影业、腾讯影业和阅文集团联合打造，将于2018年上映。','http://127.0.0.1:3000/img/doupocangqiong.jpg');
INSERT INTO yw_copyright VALUES(4,'《扶摇皇后》是阅文集团旗下潇湘书院金牌女作家天下归元的经典力作，该作在连载期间，屡屡打破网站古言类作品订阅纪录，点击量超百亿，收藏量达数十万。改编电视剧《扶摇》于2018年播出 。','http://127.0.0.1:3000/img/fuyao.jpg');
INSERT INTO yw_copyright VALUES(5,'《鬼吹灯》是天下霸唱创作的经典悬疑盗墓小说，连载于起点中文网。先后进行过漫画、游戏、电影、网络电视剧的改编，均取得不俗的成绩，是当之无愧的超级IP。','http://127.0.0.1:3000/img/guichuideng.jpg');
INSERT INTO yw_copyright VALUES(6,'《将夜》是阅文白金作家猫腻的第四部玄幻小说，首发于起点中文网。同名改编古装电视剧将于2018年上映，腾讯影业、阅文集团参与出品。','http://127.0.0.1:3000/img/jiangye.jpg');
INSERT INTO yw_copyright VALUES(7,'《琅琊榜》是首发在起点女生网上的一本架空权谋类小说，作者海宴。改编电视剧2015年播出后，口碑收视双红，胡歌饰演的梅长苏等角色深入人心。','http://127.0.0.1:3000/img/langyabang.jpg');
INSERT INTO yw_copyright VALUES(8,'《从前有座灵剑山》是国王陛下在创世中文网连载的仙侠类小说。2014年由腾讯动漫改编漫画，2016年由 Studio DEEN 制作动画并在日本播出，成为国漫创新之作。','http://127.0.0.1:3000/img/lingjianshan.png');
INSERT INTO yw_copyright VALUES(9,'《《芈月传》是蒋胜男的原创小说，电子版由阅文独家首发。小说进行了电视剧、游戏等多种形式的改编，一度掀起芈月热潮。','http://127.0.0.1:3000/img/minyuezhuan.jpg');
INSERT INTO yw_copyright VALUES(10,'《全职高手》最初连载于起点中文网，是阅文白金作家蝴蝶蓝的封神之作。改编动漫受到热捧，在腾讯视频播放量超10亿，成为2017国漫标杆。','http://127.0.0.1:3000/img/quanzhigaoshou3.jpg');
INSERT INTO yw_copyright VALUES(11,'《圣墟》是阅文集团白金作家辰东所著的第六部小说，2016年首发于起点中文网和创世中文网。一经推出，各大公司就争相了解版权情况，目前同名游戏火热上线中。','http://127.0.0.1:3000/img/shengxu.jpg');
INSERT INTO yw_copyright VALUES(12,'《武动乾坤》自2011年于起点中文网连载起，便常居起点热销榜前列，目前全网点击量达数十亿，积累了大量的读者粉丝。同名改编电视剧由阅文集团携手深蓝影业、优酷等联合出品，2018年在东方卫视周播剧场首播，并在优酷视频同步播出。','http://127.0.0.1:3000/img/wudongqiankun.jpg');
INSERT INTO yw_copyright VALUES(13,'《一念永恒》是阅文白金作家耳根在起点中文网的又一力作，新书提笔不久便吸引一响天开影业掷千万重金夺下影视版权。在影游联动的互助驱动下，其游戏改编权的市场价值有望再刷新高。','http://127.0.0.1:3000/img/yinianyongheng.jpg');
INSERT INTO yw_copyright VALUES(14,'《《择天记》于创世中文网首发，是阅文白金作家猫腻的第五部玄幻作品。作为阅文重点 IP，进行了影视、游戏、动漫的联合开发，成为阅文集团全版权运营的标杆之作。','http://127.0.0.1:3000/img/zetianji.jpg');
INSERT INTO yw_copyright VALUES(15,'《诛仙》是阅文大神作家萧鼎的经典作品，文风干练，辞藻唯美。2016年改编电视剧《诛仙：青云志》上映，还原著粉十年「诛仙梦」。','http://127.0.0.1:3000/img/zhuxian.jpg');



#首页移动部分表
CREATE TABLE yw_app(
    app_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    logo VARCHAR(255),
    title VARCHAR(255),
    href VARCHAR(255),    
    img_url VARCHAR(255)
);
INSERT INTO yw_app VALUES(1,'http://127.0.0.1:3000/img/qq.png','海量原著，想读就读。个性推荐，拥有你的专属书城；精致排版，感受个性阅读体验。','http://127.0.0.1:5500/public/mobile.html?id=1','http://127.0.0.1:3000/img/qq-new.png');
INSERT INTO yw_app VALUES(2,'http://127.0.0.1:3000/img/qd.png','看原创正版小说，追大神作家；广大读者的选择，百万作家在此创作；热门影视、游戏 IP 发源地。','http://127.0.0.1:5500/public/mobile.html?id=2','http://127.0.0.1:3000/img/qd-new.png');
INSERT INTO yw_app VALUES(3,'http://127.0.0.1:3000/img/zj.png','随身记录乍现灵感，发布专属自己的作品，与数亿读者分享你的故事。','http://127.0.0.1:5500/public/mobile.html?id=3','http://127.0.0.1:3000/img/qq-new.png');
INSERT INTO yw_app VALUES(4,'http://127.0.0.1:3000/img/wbn.png','面向全球的网络文学阅读与原创平台','http://127.0.0.1:5500/public/mobile.html?id=4','http://127.0.0.1:3000/img/wbn-new.png');
INSERT INTO yw_app VALUES(5,'http://127.0.0.1:3000/img/hx.png','女频 IP 抢先看，女生爱看的小说都在这','http://127.0.0.1:5500/public/mobile.html?id=5','http://127.0.0.1:3000/img/hx-new.png');




#首页旗下品牌
CREATE TABLE yw_brand(
    brand_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    href VARCHAR(255), 
    detail VARCHAR(255),   
    img_url VARCHAR(255)
);
INSERT INTO yw_brand VALUES(1,'起点中文网','http://www.qidian.com','起点中文网创建于2002年5月，是国内引领行业的原创文学门户网站和写作平台，隶属于数字阅读综合平台——阅文集团。起点中文网前身为起点原创文学协会，长期致力于原创文学作者的挖掘与培养工作，并以推动中国文学原创事业为发展宗旨，并以此为契机开创了在线收费阅读即电子出版的新模式。','http://127.0.0.1:3000/img/brand/brand1.png');
INSERT INTO yw_brand VALUES(2,'创世中文网','http://chuangshi.qq.com','创世中文网成立于2013年，是由资深网络文学团队精心打造的集阅读、创作、互动社区、版权运营于一体的全开放网络文学平台。依托阅文集团，基于团队经验和影响力以及旗下大批知名网络作家，致力于推进网络文学泛娱乐运营、用户阅读和互动体验、原创扶持力度的升级，成为网络文学行业格局的主要变革者。','http://127.0.0.1:3000/img/brand/brand2.png');
INSERT INTO yw_brand VALUES(3,'云起书院','http://yunqi.qq.com','云起书院是引领行业的女性文学创作基地，成就无数平民作者的文学梦想。作为网络文学产业的重要细分市场，女性文学有着巨大的市场想象空间。云起书院将肩负起打造全新女性文学产业生态的重任，基于腾讯强大的资源平台和运营体系，促进中国女性文学市场的健康、持续发展，迎接“全民阅读”时代的到来。','http://127.0.0.1:3000/img/brand/brand3.png');
INSERT INTO yw_brand VALUES(4,'红袖添香','http://hongxiu.com','红袖添香创办于1999年，国内引领行业的女性文学数字版权运营商。 红袖添香为用户提供涵盖小说、散文、杂文、诗歌、歌词、剧本、日记等体裁的高品质创作和阅读服务，在言情、职场小说等女性文学写作及出版领域具有巨大影响力。','http://127.0.0.1:3000/img/brand/brand4.png');
INSERT INTO yw_brand VALUES(5,'潇湘书院','http://xxsy.net','潇湘书院一直以做中国最好的女生原创网站为目标，立志为广大的原创作者提供一个公平、公正、健康的文学发展平台。优秀的工作团队和人性化的管理模式，使潇湘书院成为女性原创作者群体以及读者群体中具备强大吸引力和归属感的原创网站。','http://127.0.0.1:3000/img/brand/brand5.png');
INSERT INTO yw_brand VALUES(6,'起点女生网','https://www.qdmm.com/','起点女生网成立于2009年11月，其前身是「起点女生频道」，致力于对女性网络原创文学及作者的培养和挖掘。起点女生网依托起点中文网的成熟运作机制，成功实现了女性网络原创文学的商业化发展模式。囊括了《步步惊心》、《搜索》、《毒胭脂》等多部热门影视剧的原著小说版权。','http://127.0.0.1:3000/img/brand/brand6.png');
INSERT INTO yw_brand VALUES(7,'小说阅读网','https://www.readnovel.com/','小说阅读网是国内优质文学版权运营商，网站拥有海量原创作品、签约作家、签约编剧及用户群，自 2009 年 4 月新版上线、开通 VIP 系统以来，打造出数部点击过亿的超人气签约作品，迅速创下单部作品点击逾两亿、单章订阅超三万、月稿酬收入过六万等各项辉煌记录，缔造出白金高薪网络作家十多人，月薪过万作家一百五十多人。','http://127.0.0.1:3000/img/brand/brand7.png');
INSERT INTO yw_brand VALUES(8,'言情小说吧','https://www.xs8.cn/','言情小说吧成立于2005年，从建立之初至今，一直秉承着为用户提供优质的言情小说阅读体验平台，打造全球华语言情小说阅读基地的理念，在网络文学界走出了一条专业化的独特发展道路。言情小说吧拥有人气超高的论坛、方便快捷的网游以及站内家园等，能给用户提供读书、休闲、娱乐的多方位体验。','http://127.0.0.1:3000/img/brand/brand8.png');
INSERT INTO yw_brand VALUES(9,'天方听书网','http://www.tingbook.com/','天方听书网创建于2004年，经过多年的运营和发展，已经成为国内引领行业的听书网站。天方听书网专注于有声读物的研发和市场运作，为广大听友提供时尚前沿的听书资讯和听书内容。网站内容涉及经济管理、中外文学、古典文学、现代文学、儿童文学、探案悬疑、科幻文学、百科知识等近20个大类。','http://127.0.0.1:3000/img/brand/brand9.png');
INSERT INTO yw_brand VALUES(10,'懒人听书','http://www.lrts.me/','懒人听书成立于2012年，专注移动互联网有声数字领域，立足移动音频行业，为用户提供所需的书籍节目以及有声数字交流服务等高品质内容。 上线至今，懒人听书始终坚持产品第一、用户至上，不断优化产品，丰富平台资源，形成多项行业优势，业已成为移动音频行业优质品牌。
','http://127.0.0.1:3000/img/brand/brand10.png');
INSERT INTO yw_brand VALUES(11,'QQ阅读','https://www.yuewen.com/app.htm','最早始于 WAP 版 QQ书城的 QQ阅读，早在前智能手机年代就积累了大量用用户基础。有着优良用户体验和海量原创作品的QQ阅读早已覆盖 iOS 、Android 等主流移动设备，是目前市面上广受用户欢迎的移动读书软件。','http://127.0.0.1:3000/img/brand/brand11.png');
INSERT INTO yw_brand VALUES(12,'起点读书','https://www.yuewen.com/app.html#appqd','起点读书是起点中文网首创「在线收费阅读」服务的移动应用，原创作家与读者在此互动创作，10 年来大神作家群星璀璨，积累了数百万部优秀原创作品。让亿万书友在 iOS、Android 等移动设备随时随地，畅享阅读。','http://127.0.0.1:3000/img/brand/brand12.png');
INSERT INTO yw_brand VALUES(13,'作家助手','https://www.yuewen.com/app.html#appzj','作家助手是阅文集团诚意打造的一款移动创作应用，覆盖 Android、iOS 等主流移动平台，凭借流畅的用户体验、强大的创作工具、可视化的统计分析等优势，迅速成为市场上深受作家喜爱的移动创作应用之一。','http://127.0.0.1:3000/img/brand/brand3.png');
INSERT INTO yw_brand VALUES(14,'WEBNOVEL','https://www.yuewen.com/app.html#appwbn','Webnovel作为阅文全球化策略的重要产品，提供高质量的英文虚构小说内容给全球英文读者。全面覆盖各个终端，除了优秀体验的网页以外，也一如既往的为 iOS 和 Android 等主流移动设备提供服务，是优秀的英文网文内容平台。','http://127.0.0.1:3000/img/brand/brand14.png');
INSERT INTO yw_brand VALUES(15,'红袖读书','https://www.yuewen.com/app.html#apphxds','自千禧年来，红袖一直致力于为用户提供原创作品，并成为孕育中国原创文化的沃土，成功打造出多部诸如《裸婚》、《欢乐颂》、《萌妻食神》等一批高质量的IP作品。而经红袖精心开发出的红袖读书APP，兼顾优良的用户体验以及海量的书城作品两大特色，已覆盖iOS以及Android等主流移动设备，当前在女性阅读市场独占鳌头。','http://127.0.0.1:3000/img/brand/brand15.png');
INSERT INTO yw_brand VALUES(16,'元气阅读','https://m.yqacg.com/','元气阅读创建于2018年3月，是国内领先的二次元网络文学网站，隶属于数字阅读综合平台--阅文集团。元气阅读以推动中国二次元文学事业为宗旨，长期致力于二次元文学的挖掘与培养，并取得了巨大成就。','http://127.0.0.1:3000/img/brand/brand16.png');
INSERT INTO yw_brand VALUES(17,'中智博文','javascript:;','中智博文图书有限公司成立于2003年，是一家专业从事图书策划、营销推广和发行代理的民营图书企业。公司以高品质、高效率、高市场敏锐度和实用性、艺术性相结合的原则，成功策划、出版发行了上千种图书品种，内容涵盖史地文化、少儿百科、经管励志、健康生活、学生读物、世界名著等诸多方面。','http://127.0.0.1:3000/img/brand/brand17.png');
INSERT INTO yw_brand VALUES(18,'聚石文华','javascript:;','聚石文华的运营团队以专业出版策划人为主体，汇集行业精英凝聚而成；公司的整体运作主要包括图书的策划出版及发行 ，立志于为出版市场提供卓越的文学作品。自筹备阶段起，聚石文华已然洽谈并签约数名国内一流作家新作；并携手搜狐、腾讯、新浪、起点、晋江、红袖、四月天、17K等原创文学网站搭建出版文学的战略合作平台。','http://127.0.0.1:3000/img/brand/brand18.png');
INSERT INTO yw_brand VALUES(19,'华文天下','javascript:;','天津华文天下图书有限公司成立于2001年，是中国民营书业具有深远影响力的公司之一。公司策划了大量优秀畅销图书。其中多本图书单品销量超过百万册，在版权引进和国内原创作家的打造上，探索出一整套畅销书运营模式。','http://127.0.0.1:3000/img/brand/brand19.png');


#新闻中心
CREATE TABLE yw_news(
    news_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    ntime VARCHAR(255), 
    detail VARCHAR(255),   
    img_url VARCHAR(255)
);
INSERT INTO yw_news VALUES(1,'上海市副市长陈群率队赴阅文集团调研指导','2018-12-29','12月20日下午，上海市副市长陈群在市文旅局、市经信委、市知产局以及浦东新区领导的陪同下莅临阅文集团调研指导，并与阅文集团联席CEO吴文辉、副总裁朱佳就网络文学行业的发展情况进行深入交流。','http://127.0.0.1:3000/img/news/news-01.jpg');
INSERT INTO yw_news VALUES(2,'阅文集团获选“2018中国互联网300强”前100强唯一数字阅读企业','2018-12-29','最近，在由中国科学院旗下《互联网周刊》联合eNet研究院发布的《2018中国互联网300强》榜单中，阅文集团凭借今年来取得的成绩，成为唯一进入前100强的数字阅读企业。','http://127.0.0.1:3000/img/news/news-02.jpg');
INSERT INTO yw_news VALUES(3,'《曼巴精神：科比自传》登陆QQ阅读 阅文海量名人传记等你PICK','2018-12-17','近日，篮球巨星科比·布莱恩特亲自撰写，科比亲自官方认证的个人自传《曼巴精神：科比自传》重磅上市，分中文版与英文版于全球同步发售。阅文集团独家引进该书电子版权，第一时间为球迷读者送上惊喜。','http://127.0.0.1:3000/img/news/news-03.jpg');
INSERT INTO yw_news VALUES(4,'阅文持续探索海外市场 起点国际见面会菲律宾掀热潮','2018-12-10','近日，阅文集团旗下海外门户起点国际（Webnovel）在菲律宾举办了首场海外粉丝见面会。起点国际业务团队，菲律宾当地作者、编辑，以及东南亚译者齐聚马尼拉，与到场的数百名海外粉丝畅聊全球网文创作与翻译。本次活动不仅得到了广大读者的热烈响应，还受到了当地媒体的高度关注，众多当地知名媒体刊发大幅报道，介绍起点国际的内容品类、商业模式及对作者的培育扶持。此外，数十家菲律宾本土科技、娱乐、生活类网站，以及多位菲律宾人气明星亦纷纷为起点国际点赞，在东南亚掀起一波中国网文热潮。','http://127.0.0.1:3000/img/news/news-04.jpg');

#联系我们部分
CREATE TABLE yw_contact(
    contact_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    cname VARCHAR(255), 
    phone VARCHAR(255),   
    email VARCHAR(255)
);
INSERT INTO yw_contact VALUES(1,'IP衍生品合作','朱女士','电话：021-61870500-82012','邮箱：zhudandan@yuewen.com');
INSERT INTO yw_contact VALUES(2,'影视合作 (联合开发出品和制作)','李女士','电话：021-61870500-82029','邮箱：liqianru@yuewen.com');
INSERT INTO yw_contact VALUES(3,'活动推广','卫先生','电话：021-61870500-82005','邮箱：bqkf@yuewen.com');
INSERT INTO yw_contact VALUES(4,'动画合作','高女士','电话：021-61870500-82040','邮箱：gaolihua@yuewen.com');
INSERT INTO yw_contact VALUES(5,'市场商务合作','张先生','电话：021-61870500-81005','邮箱：zhangtao@yuewen.com');
INSERT INTO yw_contact VALUES(6,'海外商务合作','张先生','电话：021-61870500-81007','邮箱：zhangdongdong@yuewen.com');
INSERT INTO yw_contact VALUES(7,'App推广合作','张女士','电话：021-61870500-81004','邮箱：zhanglin@yuewen.com');
INSERT INTO yw_contact VALUES(8,'音频业务合作','苏女士','电话：021-61870500-81018','邮箱：sufei@yuewen.com');
INSERT INTO yw_contact VALUES(9,'影视及游戏改编授权','杨娟','电话：021-61870500-82035','邮箱：yangjuan@yuewen.com');
INSERT INTO yw_contact VALUES(10,'出版版权合作','李先生','电话：021-61870500-82024','邮箱：lilinglong@yuewen.com');




#招聘首页-招聘分类
CREATE TABLE joinin(
    jc_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    detail VARCHAR(255),
    href VARCHAR(255),
    img_url VARCHAR(255)   
);
INSERT INTO joinin VALUES(1,'校园招聘','文字力量，托起梦想人生。','school.html','http://127.0.0.1:3000/img/join/school-pic.png');
INSERT INTO joinin VALUES(2,'社会招聘','勇者无惧，强者无敌。','society.html','http://127.0.0.1:3000/img/join/social-pic.png');


#招聘首页-工作收获
CREATE TABLE joinin_gain(
    jg_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    detail VARCHAR(255),    
    img_url VARCHAR(255)   
);
INSERT INTO joinin_gain VALUES(1,'收获事业','阅文的原创小说已覆盖行业半壁江山，以QQ阅读为中心触达数亿的用户。而员工的成就感也是阅文所追求的目标之一。','http://127.0.0.1:3000/img/join/bag-icon.png');
INSERT INTO joinin_gain VALUES(2,'收获成长','我们希望每一个阅文人都能在阅文茁壮成长。我们坚持并相信，当你工作体验到达最佳之时，你也会产生最好的工作和输出。','http://127.0.0.1:3000/img/join/up-icon.png');
INSERT INTO joinin_gain VALUES(3,'收获成功','作为一个快速成长中的企业，我们有着良好的开端，我们也坚信能提供给员工最好的机遇，相互合作，获取成功。','http://127.0.0.1:3000/img/join/award-icon.png');


#招聘首页-话
CREATE TABLE joinin_talking(
    jt_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    school VARCHAR(255),
    detail VARCHAR(255),    
    img_url VARCHAR(255),
    book_url VARCHAR(255)   
);
INSERT INTO joinin_talking VALUES(1,'张老师','设计部前端开发华中科技大学','代码如诗，运行完美，开心溢于言表，伸伸懒腰，窗外远眺，绿树成荫，梢头朝霞安好，隆隆地铁眼前悠然而过，载着多少青春和梦想在前进与成长，想想眼下的自己亦是如此，和阅文相伴的这趟人生旅程，有诗，有远方，有自由，有梦想，也在不断前进与成长。','http://127.0.0.1:3000/img/join/zxx.jpg','');
INSERT INTO joinin_talking VALUES(2,'QR','阅文影业总制片人英国莱斯特大学','从加入阅文至今，经手项目无数，如热门IP《黄金瞳》、《庆余年》等，流水N亿级别，除了要与书中人物过招还要与影中人物打交道。感谢阅文，让我有了同时可以和二次元偶像与三次元偶像共同作业的机会。（花痴脸）','http://127.0.0.1:3000/img/join/zxx.jpg','http://127.0.0.1:3000/img/join/qingyunian.jpg');
INSERT INTO joinin_talking VALUES(3,'美景','技术部后台开发上海交通大学','掐指一算，来到阅文已经将近两年。从刚开始小黑屋封闭的“圆桌会议室”办公，到后面的排排坐，再到现在高大上的六号楼。办公环境越来越好，身边小伙伴越来越多，就连小肚子也越来越突出。经过了三次元的项目洗礼，再成功穿越到二次元的网文世界，一起协作，进取，虽然时而辛苦，但乐此不疲。','http://127.0.0.1:3000/img/join/lc.jpg','');
INSERT INTO joinin_talking VALUES(4,'阿堂','版权部执行制片人厦门大学','作为《全职高手》动画的制片人，我的日常就是在叶修大神的带领下，偶尔刷刷副本、抢野图BOSS、上头条...（一脸满足）。从二次元粉丝蜕变为执行制片人，最开心的事情当然就是在评论和弹幕中看到粉丝们的好评~','http://127.0.0.1:3000/img/join/lst.jpg','http://127.0.0.1:3000/img/join/quanzhigaoshou.jpg');
INSERT INTO joinin_talking VALUES(5,'小怡','市场部新媒体运营上海交通大学','阅文，让人真正发挥所长，让人迅速成长。在这里，作为一个新人依然可以自由地表达自我，也有机会接触各种大大小小的有趣项目。市场部每个同事都是一个段子手，每天都能笑到喷饭。只要你炒得一盘好吃的炒蛋，立刻能让你掌握这里话语权。欢迎刚毕业的你加入到我们这么充满活力的团队里来！','http://127.0.0.1:3000/img/join/cxy.jpg','');
INSERT INTO joinin_talking VALUES(6,'Aggie','公关中心公关剑桥大学','我曾参与宣传《斗破苍穹》。在阅文，你可以尽情享受扣人心弦的文字，以及由这些文学IP衍生而成的影视、动漫、游戏……你可以与充满进取心的小伙伴协作共进，更有机会结识网文圈的各路大神作家，快来加入我们吧！','http://127.0.0.1:3000/img/join/mxw.jpg','http://127.0.0.1:3000/img/join/doupocangqiong.jpg');
INSERT INTO joinin_talking VALUES(7,'四帅','设计部设计师上海交通大学','在阅文工作一年半，非常切身地感受到了部门乃至公司的成长。正如网文世界的包罗万象，设计工作中也有着非常大的发挥空间，能够把自己的创意和想法在部门或公司内其他同事的支持下变成实际项目产出，就是我最有成就感的事。','http://127.0.0.1:3000/img/join/zwt.jpg','');
INSERT INTO joinin_talking VALUES(8,'雯雯','技术部算法工程师华东师范大学','爱二次元，爱技术，更爱部门里的下午茶。你以为我们是只会写代码的码农？不不不，我们还可以是lo娘、JK、撸铁狂魔……我是技术部团宠杨雯，我和沐雨橙风在阅文5楼等你~~','http://127.0.0.1:3000/img/join/yw.jpg','http://127.0.0.1:3000/img/join/quanzhigaoshou.jpg');
INSERT INTO joinin_talking VALUES(9,'Star','产品部产品经理上海师范大学','在努力的工作中学习如何聪明地工作。我不只是产品经理，更是集各种才能于一身的斜杠青年，对所有出现的新事物都抱持一颗好奇的心，不断尝试挑战自我。每天起床的动力就是等着我的十几万起点社区用户和抖音上的560个粉丝。','http://127.0.0.1:3000/img/join/wmx.jpg','');
INSERT INTO joinin_talking VALUES(10,'萌萌','原创内容部编辑苏州大学','工作环境超活泼~从导师到同事都超可爱~帅气又迷人！每天还会做各种各样好吃的。在工作上，被各种优质书籍包围，再也不用担心书荒了~还有幸负责了《凤囚凰》和《美人谋：凤凰无双》的推广。唯一的缺点就是太开心胃口太好导致重了好几斤……','http://127.0.0.1:3000/img/join/yzm.jpg','http://127.0.0.1:3000/img/join/fengqiuhuang.jpg');







#校园招聘-校招流程
CREATE TABLE school_process(
    process_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    pname VARCHAR(255)   
);
INSERT INTO school_process VALUES(1,'网申','8.24-10.10');
INSERT INTO school_process VALUES(2,'空中宣讲会','9.18');
INSERT INTO school_process VALUES(3,'在线笔试（技术）','10.12');
INSERT INTO school_process VALUES(4,'面试','10月下旬');
INSERT INTO school_process VALUES(5,'offer发放','11月');

#校园招聘-校招亮点
CREATE TABLE school_point(
    point_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    detail VARCHAR(255),
    img_url_1 VARCHAR(255),
    img_url_2 VARCHAR(255),
    img_url_3 VARCHAR(255)   
);
INSERT INTO school_point VALUES(1,'封闭式培训','《我们的船》校招生封闭培训项目旨在让初入职场的应届生更快融入团队，熟悉彼此，提高人际关系满意度；培养应届生对互联网及网络文学行业、公司（文化、品牌、业务）的了解；提高、培养应届生职业素养；清晰职业生涯发展。','http://127.0.0.1:3000/img/school/4.jpg','http://127.0.0.1:3000/img/school/5.jpg','http://127.0.0.1:3000/img/school/6.jpg');
INSERT INTO school_point VALUES(2,'导师计划','阅文为每位校招生配备一名导师，从实习入职开始就会有为期6个月的辅导，导师会为学生制定详细的辅导计划，规划清晰的成才路线，帮助校招生快速融入团队，理解业务，了解工作流程。每一位导师亦师亦友， 他们就是学生的职场领航人。','http://127.0.0.1:3000/img/school/1.jpg','http://127.0.0.1:3000/img/school/2.jpg','http://127.0.0.1:3000/img/school/3.jpg');

#校园招聘-职位列表
CREATE TABLE school_job(
    job_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    img_url VARCHAR(255)
);
INSERT INTO school_job VALUES(1,'技术','http://127.0.0.1:3000/img/school/schoolg-icons-1.png');
INSERT INTO school_job VALUES(2,'设计','http://127.0.0.1:3000/img/school/schoolg-icons-2.png');
INSERT INTO school_job VALUES(3,'产品和运营','http://127.0.0.1:3000/img/school/schoolg-icons-3.png');
INSERT INTO school_job VALUES(4,'内容编辑','http://127.0.0.1:3000/img/school/schoolg-icons-4.png');
INSERT INTO school_job VALUES(5,'版权','http://127.0.0.1:3000/img/school/schoolg-icons-5.png');
INSERT INTO school_job VALUES(6,'商务','http://127.0.0.1:3000/img/school/schoolg-icons-6.png');
INSERT INTO school_job VALUES(7,'职能','http://127.0.0.1:3000/img/school/schoolg-icons-7.png');


#校园招聘-校招咨询
CREATE TABLE school_msg(
    msg_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    detail VARCHAR(255),
    img_url VARCHAR(255)
);
INSERT INTO school_msg VALUES(1,'阅文集团2019校招空中宣讲会','文字力量，托起梦想人生','http://127.0.0.1:3000/img/school/001.png');
INSERT INTO school_msg VALUES(2,'师兄师姐快问快答','听听前辈们的工作感受','http://127.0.0.1:3000/img/school/002.jpg');
INSERT INTO school_msg VALUES(3,'最想和导师说的一句话','校招生封陪项目学员感言','http://127.0.0.1:3000/img/school/003.jpg');
INSERT INTO school_msg VALUES(4,'阅文搞事情天团集锦','搞笑，我们是认真的','http://127.0.0.1:3000/img/school/004.jpg');

#社会招聘
CREATE TABLE society_job(
    job_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    img_url VARCHAR(255),       
    img_active_url VARCHAR(255)
);
INSERT INTO society_job VALUES(1,'技术','http://127.0.0.1:3000/img/society/job01.png','http://127.0.0.1:3000/img/society/job01-active.png');
INSERT INTO society_job VALUES(2,'设计','http://127.0.0.1:3000/img/society/job02.png','http://127.0.0.1:3000/img/society/job02-active.png');
INSERT INTO society_job VALUES(3,'产品和运营','http://127.0.0.1:3000/img/society/job03.png','http://127.0.0.1:3000/img/society/job03-active.png');
INSERT INTO society_job VALUES(4,'内容编辑','http://127.0.0.1:3000/img/society/job04.png','http://127.0.0.1:3000/img/society/job04-active.png');
INSERT INTO society_job VALUES(5,'版权','http://127.0.0.1:3000/img/society/job05.png','http://127.0.0.1:3000/img/society/job05-active.png');
INSERT INTO society_job VALUES(6,'商务','http://127.0.0.1:3000/img/society/job06.png','http://127.0.0.1:3000/img/society/job06-active.png');
INSERT INTO society_job VALUES(7,'职能','http://127.0.0.1:3000/img/society/job07.png','http://127.0.0.1:3000/img/society/job07-active.png');


#社会招聘-职位
CREATE TABLE society_position(
    sp_id TINYINT PRIMARY KEY AUTO_INCREMENT,    
    title VARCHAR(255),
    workplace VARCHAR(255), 
    job_id INT,      
    department VARCHAR(255)
);
INSERT INTO society_position VALUES(1,'业务数据开发','上海市',1,'技术部');
INSERT INTO society_position VALUES(2,'Android研发工程师','上海市',1,'技术部');
INSERT INTO society_position VALUES(3,'iOS研发工程师','上海市',1,'技术部');
INSERT INTO society_position VALUES(4,'服务端中/高级JAVA开发','北京市',1,'技术部');
INSERT INTO society_position VALUES(5,'运维开发工程师-QQ阅读','北京市',1,'技术部');
INSERT INTO society_position VALUES(6,'Java开发工程师（业务支持组）','上海市',1,'技术部');
INSERT INTO society_position VALUES(7,'Android/iOS客户端架构师','上海市',1,'技术部');
INSERT INTO society_position VALUES(8,'Java开发工程师','北京市',1,'技术部');
INSERT INTO society_position VALUES(9,'PHP开发工程师','上海市',1,'技术部');
INSERT INTO society_position VALUES(10,'Android高级开发工程师','上海市',1,'技术部');

INSERT INTO society_position VALUES(11,'交互设计师','上海市',2,'体验设计部');
INSERT INTO society_position VALUES(12,'界面视觉设计师','上海市',2,'体验设计部');
INSERT INTO society_position VALUES(13,'运营视觉设计师','北京市',2,'体验设计部');
INSERT INTO society_position VALUES(14,'Web前端开发工程师（体验方向）','北京市',2,'体验设计部');
INSERT INTO society_position VALUES(15,'Java后端开发主管（海外产品）','上海市',2,'体验设计部');
INSERT INTO society_position VALUES(16,'运营视觉设计师-QQ阅读','上海市',2,'体验设计部');

INSERT INTO society_position VALUES(17,'高级手游平台运营','上海市',3,'运营部');
INSERT INTO society_position VALUES(18,'漫画平台运营','上海市',3,'运营部');
INSERT INTO society_position VALUES(19,'手游平台运营','上海市',3,'运营部');
INSERT INTO society_position VALUES(20,'运营策划','上海市',3,'运营部');
INSERT INTO society_position VALUES(21,'资深数据分析架构师','上海市',3,'运营部');
INSERT INTO society_position VALUES(22,'数据产品经理（数据平台）','上海市',3,'运营部');

INSERT INTO society_position VALUES(23,'运营编辑','上海市',4,'原创编辑部');
INSERT INTO society_position VALUES(24,'责任编辑','上海市',4,'原创编辑部');
INSERT INTO society_position VALUES(25,'QQ阅读资深运营专员','上海市',4,'原创编辑部');
INSERT INTO society_position VALUES(26,'二次元运营编辑','上海市',4,'原创编辑部');
INSERT INTO society_position VALUES(27,'责任编辑（二次元品类）','上海市',4,'原创编辑部');


INSERT INTO society_position VALUES(28,'IP内容策划','上海市',5,'原创编辑部');
INSERT INTO society_position VALUES(29,'版权内容策划经理','上海市',5,'原创编辑部');
INSERT INTO society_position VALUES(30,'版权内容策划高级经理/总监','上海市',5,'原创编辑部');
INSERT INTO society_position VALUES(31,'漫画平台美术编辑','上海市',5,'原创编辑部');
INSERT INTO society_position VALUES(32,'影视制片人','上海市',5,'原创编辑部');

INSERT INTO society_position VALUES(33,'手游平台运营','上海市',6,'运营部');
INSERT INTO society_position VALUES(34,'运营策划','上海市',6,'运营部');
INSERT INTO society_position VALUES(35,'资深数据分析架构师','上海市',6,'运营部');
INSERT INTO society_position VALUES(36,'二次元运营编辑','上海市',6,'原创编辑部');


INSERT INTO society_position VALUES(37,'版权内容策划高级经理/总监','上海市',7,'原创编辑部');
INSERT INTO society_position VALUES(38,'漫画平台美术编辑','上海市',7,'原创编辑部');
INSERT INTO society_position VALUES(39,'影视制片人','上海市',7,'原创编辑部');
INSERT INTO society_position VALUES(40,'责任编辑','上海市',7,'原创编辑部');
INSERT INTO society_position VALUES(41,'QQ阅读资深运营专员','上海市',7,'原创编辑部');





#阅文生活-阅文文化
CREATE TABLE life_culture(
    lc_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    detail VARCHAR(255), 
    img_url VARCHAR(255)
);
INSERT INTO life_culture VALUES(1,'热爱','女娲补天告诉我们任何惊人之举皆始于热爱，真诚的对待身边的人，为挚爱的事业不懈奋斗，是我们对大爱精神的最高礼赞。','http://127.0.0.1:3000/img/life/life-icon1.png');
INSERT INTO life_culture VALUES(2,'进取','部族领袖夸父认为世间是没有做不成的事情。对目标的不懈追逐和执着挑战是先人留给我们的进取精神，像红日般指引后人前进的步伐。','http://127.0.0.1:3000/img/life/life-icon2.png');
INSERT INTO life_culture VALUES(3,'协作','古有愚公苦于山峰阻碍出行，携子子孙孙移山通路。当拥有共同志向的人集合一起鼎力协作，便拥有了改天换地塑造传奇的力量。','http://127.0.0.1:3000/img/life/life-icon3.png');
INSERT INTO life_culture VALUES(4,'创新','大禹打破上古之时传统的治水方式平定水患，正是因为敢于突破、用于挑战的创新精神，让人变得高效，更让创意最终实现价值。','http://127.0.0.1:3000/img/life/life-icon4.png');




#阅文生活-工作环境
CREATE TABLE life_work_img(
    lw_img_id TINYINT PRIMARY KEY AUTO_INCREMENT,    
    img_url VARCHAR(255)
);
INSERT INTO life_work_img  VALUES(1,'http://127.0.0.1:3000/img/inyuewen/7.1.jpg');
INSERT INTO life_work_img  VALUES(2,'http://127.0.0.1:3000/img/inyuewen/8.1.jpg');
INSERT INTO life_work_img  VALUES(3,'http://127.0.0.1:3000/img/inyuewen/9.1.jpg');
INSERT INTO life_work_img  VALUES(4,'http://127.0.0.1:3000/img/inyuewen/10.1.jpg');
INSERT INTO life_work_img  VALUES(5,'http://127.0.0.1:3000/img/inyuewen/11.1.jpg');
INSERT INTO life_work_img  VALUES(6,'http://127.0.0.1:3000/img/inyuewen/12.1.jpg');
INSERT INTO life_work_img  VALUES(7,'http://127.0.0.1:3000/img/inyuewen/13.1.jpg');
INSERT INTO life_work_img  VALUES(8,'http://127.0.0.1:3000/img/inyuewen/14.1.jpg');
INSERT INTO life_work_img  VALUES(9,'http://127.0.0.1:3000/img/inyuewen/15.1.jpg');
INSERT INTO life_work_img  VALUES(10,'http://127.0.0.1:3000/img/inyuewen/16.1.jpg');
INSERT INTO life_work_img  VALUES(11,'http://127.0.0.1:3000/img/inyuewen/17.1.jpg');
INSERT INTO life_work_img  VALUES(12,'http://127.0.0.1:3000/img/inyuewen/18.1.jpg');
INSERT INTO life_work_img  VALUES(13,'http://127.0.0.1:3000/img/inyuewen/19.1.jpg');
INSERT INTO life_work_img  VALUES(14,'http://127.0.0.1:3000/img/inyuewen/20.1.jpg');
INSERT INTO life_work_img  VALUES(15,'http://127.0.0.1:3000/img/inyuewen/21.1.jpg');
INSERT INTO life_work_img  VALUES(16,'http://127.0.0.1:3000/img/inyuewen/22.1.jpg');
INSERT INTO life_work_img  VALUES(17,'http://127.0.0.1:3000/img/inyuewen/23.1.jpg');
INSERT INTO life_work_img  VALUES(18,'http://127.0.0.1:3000/img/inyuewen/24.1.jpg');

CREATE TABLE life_work_activity(
    lw_act_id TINYINT PRIMARY KEY AUTO_INCREMENT,    
    title_id INT,
    title VARCHAR(255),
    activity VARCHAR(255)
);
INSERT INTO life_work_activity VALUES(1,1,'工作环境','免费饮料');
INSERT INTO life_work_activity VALUES(2,1,'工作环境','健身房与舞蹈室');
INSERT INTO life_work_activity VALUES(3,1,'工作环境','图书馆');
INSERT INTO life_work_activity VALUES(4,1,'工作环境','游戏室');
INSERT INTO life_work_activity VALUES(5,1,'工作环境','花园与停车场');
INSERT INTO life_work_activity VALUES(6,1,'工作环境','个性化工位');
INSERT INTO life_work_activity VALUES(7,1,'工作环境','影音放映厅');
INSERT INTO life_work_activity VALUES(8,2,'文化活动','女生节活动');
INSERT INTO life_work_activity VALUES(9,2,'文化活动','家庭日');
INSERT INTO life_work_activity VALUES(10,2,'文化活动','圣诞交换礼物');
INSERT INTO life_work_activity VALUES(11,2,'文化活动','员工大会');
INSERT INTO life_work_activity VALUES(12,2,'文化活动','公司年会');
INSERT INTO life_work_activity VALUES(13,2,'文化活动','团队建设');
INSERT INTO life_work_activity VALUES(14,2,'文化活动','趣味运动会');
INSERT INTO life_work_activity VALUES(15,3,'福利地图','节日津贴');
INSERT INTO life_work_activity VALUES(16,3,'福利地图','生日礼包');
INSERT INTO life_work_activity VALUES(17,3,'福利地图','婚育礼金');
INSERT INTO life_work_activity VALUES(18,3,'福利地图','补充住房公积金');
INSERT INTO life_work_activity VALUES(19,3,'福利地图','全薪病假与商业保险');
INSERT INTO life_work_activity VALUES(20,3,'福利地图','员工体检和父母体检');
INSERT INTO life_work_activity VALUES(21,3,'福利地图','福利餐贴和通讯补贴');

#阅文生活-经典培训项目
CREATE TABLE life_training(
    lt_id TINYINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    detail VARCHAR(255), 
    img_url VARCHAR(255)
);
INSERT INTO life_training VALUES(1,'N.E.W.S 新员工培养','N.E.W.S 新员工培养项目通过体验式学习，让阅文新人快速体验我们的文化、团队和同事，迅速融入公司。同时，了解企业的职业发展框架，助力员工在阅文能够树立积极健康的职业生涯规划，获得最大的程度的发展。','http://127.0.0.1:3000/img/life/life-01.png');
INSERT INTO life_training VALUES(2,'杜拉拉升职「计」','阅文学堂诚邀业界权威外训师、腾讯大学认证讲师倾力打造杜拉拉升职「计」项目，旨在通过职场工具类、个人管理类、思维方法类等通用技能类课程学习，让大家掌握职场的成长智慧。','http://127.0.0.1:3000/img/life/life-02.png');
INSERT INTO life_training VALUES(3,'管理干部训练营','领导力是员工能力的重要一环，亦是组织能力的核心，LeaderShop-卓越领导力商城计划，通过引进先进的管理理念和方法，促进集团管理水平持续提升，为集团朝着基业长青的目标不断迈进。','http://127.0.0.1:3000/img/life/life-03.png');
INSERT INTO life_training VALUES(4,'TED阅文兼职讲师','阅文TED兼职讲师项目旨在通过系统课程的传授与演练，使得阅文各专业条线的牛人们将丰富的经验、领先的技术等令人热血沸腾的干货，通过课程的形式向阅文的伙伴们进行展现，实现职业技能的共同提升。','http://127.0.0.1:3000/img/life/life-04.png');


#
