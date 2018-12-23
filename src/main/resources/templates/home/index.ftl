<!DOCTYPE HTML>
<html>
<head>
    <meta name="baidu-site-verification" content="SiJT5J8lsv" />
    <title>developer1.cn</title>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta name="keywords" content="赵长辉的个人博客">
    <meta name="description" content="developer1博客系统，一个站在php,java开发之路上的草根程序员个人博客网站。">
    <LINK rel="Bookmark" href="/favicon.ico" >
    <LINK rel="Shortcut Icon" href="/favicon.ico" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="/staticRes/js/html5shiv.js"></script>
    <script type="text/javascript" src="/staticRes/js/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/lw/plugin/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="/lw/plugin/Hui-iconfont/1.0.8/iconfont.min.css" />
    <link rel="stylesheet" type="text/css" href="/lw/css/common.css" />
    <link rel="stylesheet" type="text/css" href="/lw/plugin/pifu/pifu.css" />
    <!--[if lt IE 9]>
    <link href="/staticRes/lib/h-ui/css/H-ui.ie.css" rel="stylesheet" type="text/css" />
    <![endif]-->

    <style>
        *{
            font-family: -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", sans-serif;
        }
    </style>

    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } function showSide(){$('.navbar-nav').toggle();}</script>
</head>
<body>
<header class="navbar-wrapper">
    <div class="navbar navbar-fixed-top">
        <div class="container cl">
            <a class="navbar-logo hidden-xs" href="/">
                <#--<img class="logo" src="/lw/img/logo.png" alt="developer1博客" />--> <div style="width:177px;height: 43px;line-height:43px;float: left;">developer1.cn</div>
            </a>
            <a class="logo navbar-logo-m visible-xs" href="/">developer1博客</a>
            <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:void(0);" onclick="showSide();">&#xe667;</a>
            <nav class="nav navbar-nav nav-collapse w_menu" role="navigation">
                <ul class="cl">
                    <li class="active"> <a href="/" data-hover="首页">首页</a> </li>
                    <li> <a href="/sort?sort=react-native" data-hover="react-native">react-native</a> </li>
                    <li> <a href="/sort?sort=php" data-hover="php">php</a> </li>
                    <li> <a href="/mood" data-hover="碎言碎语">碎言碎语</a> </li>
                <#--<li><a href="#" data-hover="学无止尽">学无止尽</a></li>-->
                <#--<li> <a href="#" data-hover="留言板">留言板</a> </li>-->
                    <li> <a href="/about" data-hover="关于我">关于我</a> </li>
                </ul>
            </nav>
            <nav class="navbar-nav navbar-userbar hidden-xs hidden-sm " style="top: 0;">
                <ul class="cl">
                    <li class="userInfo dropDown dropDown_hover">
                        <!--<a href="javascript:;" ><img class="avatar radius" src="/lw/img/40.jpg" alt="丶似浅 "></a>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="/app/loginOut">退出</a></li>
                        </ul>-->
                        <#--<a href="#" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" ><img class="avatar size-S" src="/lw/img/qq.jpg" title="登入">登入</a>-->

                        <#if userid==-1>
                             <a href="/home/login">登录</a>
                        <a href="/home/reg">注册</a>
                        <#else>
                            <a href="#">欢迎你：${nickname}</a>
                        </#if>


                    </li>
                </ul>
            </nav>
        </div>
    </div>
</header>

<section class="container pt-20">
    <!--<div class="Huialert Huialert-info"><i class="Hui-iconfont">&#xe6a6;</i>成功状态提示</div>-->
    <!--left-->
    <div class="col-sm-9 col-md-9">
        <!--滚动图-->
        <div class="slider_main">
            <div class="slider">
                <div class="bd">
                    <ul>
                        <li><a href="#" target="_blank"><img src="/lw/temp/11-1.png"></a></li>
                        <li><a href="#" target="_blank"><img src="/lw/temp/11-2.png"></a></li>
                    </ul>
                </div>
                <ol class="hd cl dots">
                    <li>1</li>
                    <li>2</li>
                </ol>
                <a class="slider-arrow prev" href="javascript:void(0)"></a>
                <a class="slider-arrow next" href="javascript:void(0)"></a>
            </div>
        </div>

        <div class="mt-20 bg-fff box-shadow radius mb-5">
            <div class="tab-category">
                <a href=""><strong class="current">最新发布</strong></a>
            </div>
        </div>
        <div class="art_content">
            <ul class="index_arc">

                <#list notes as obj>
                      <li class="index_arc_item">
                          <a href="#" class="pic" style="display: none;">
                              <img class="lazyload" data-original="/lw/temp/art.jpg" alt="应该选" />
                          </a>
                          <h4 class="title"><a href="/detail?id=${obj.id}">${obj.title}</a></h4>
                          <div class="date_hits">
                              <span>admin</span>
                              <span>${obj.create_time}</span>
                              <span><a href="/article-lists/10.html">${obj.stype}</a></span>
                              <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
                              <p class="commonts"><i class="Hui-iconfont" title="点击量">&#xe622;</i> <span class="cy_cmt_count">20</span></p>
                          </div>
                          <div class="desc">${obj.brief}</div>
                      </li>
                </#list>




            </ul>
            <div class="text-c mb-20" id="moreBlog">
                <#if prev==true >
                      <a href="/?page=${page-1}" class="f-r"><input class="btn btn-success size-S" type="button" value="上一页"></a>
                <#else>
                 <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="上一页"></a>
                </#if>

                  <#if next==true >
                      <a href="/?page=${page+1}" class="f-r"><input class="btn btn-success size-S" type="button" value="下一页"></a>
                  <#else>
                     <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="下一页"></a>
                  </#if>

            </div>
        </div>
    </div>

    <!--right-->
    <div class="col-sm-3 col-md-3">




        <!--搜索-->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category-item">
                <input type="text" name="search" id="search" style="height:20px;" value=""> <button id="search-btn">搜索</button>
            </div>
        </div>


        <!--站点声明-->
        <div class="panel panel-default mb-20">
            <div class="panel-body">
                <i class="Hui-iconfont" style="float: left;">&#xe62f;&nbsp;</i>
                <div class="slideTxtBox">
                    <div class="bd">
                        <ul>
                            <li><a href="javascript:void(0);">developer1.cn博客测试版上线，欢迎访问</a></li>
                            <li><a href="javascript:void(0);">内容如有侵犯，请立即联系管理员删除</a></li>
                            <li><a href="javascript:void(0);">本站内容仅供学习和参阅，不做任何商业用途</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!--导航-->
        <div class="panel panel-primary mb-20">
            <div class="panel-body">
                <a href="/sort?sort=react-native" class="btn btn-primary radius nav-btn"> react-native</a>
                <a href="/sort?sort=php" class="btn btn-primary-outline radius nav-btn"> php</a>
                <a href="/sort?sort=java" class="btn btn-primary-outline radius nav-btn"> Java</a>
                <a href="/sort?sort=linux"  class="btn btn-primary-outline radius nav-btn"> linux</a>
                <a href="/sort?sort=python"  class="btn btn-primary-outline radius nav-btn"> python</a>
                <a href="/sort?sort=blockchain"  class="btn btn-primary-outline radius nav-btn"> 区块链</a>
                <a href="/sort?sort=c"  class="btn btn-primary-outline radius nav-btn"> c/c++</a>
                <a href="/sort?sort=mysql"  class="btn btn-primary-outline radius nav-btn"> mysql</a>
                <a href="/sort?sort=web"  class="btn btn-primary-outline radius nav-btn"> 前端开发</a>
                <a href="/sort?sort=go"  class="btn btn-primary-outline radius nav-btn"> golang</a>
                <a href="/sort?sort=react"  class="btn btn-primary-outline radius nav-btn"> react/RN</a>
            </div>
        </div>



        <!--博主信息-->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category">
                <a href=""><strong>博主信息</strong></a>
            </div>
            <div class="tab-category-item">
                <ul class="index_recd">
                    <li class="index_recd_item"><i class="Hui-iconfont">&#xe653;</i>姓名：赵长辉</li>
                    <li class="index_recd_item"><i class="Hui-iconfont">&#xe70d;</i>职业：PHP开发</li>
                    <li class="index_recd_item"><i class="Hui-iconfont">&#xe63b;</i>邮箱：<a href="mailto:2636190619@qq.com">2636190619qq.com</a></li>
                    <li class="index_recd_item"><i class="Hui-iconfont">&#xe671;</i>定位：北京 &middot; 昌平</li>
                </ul>
            </div>
        </div>


        <!--热门推荐-->
        <#--<div class="bg-fff box-shadow radius mb-20">-->
            <#--<div class="tab-category">-->
                <#--<a href=""><strong>热门推荐</strong></a>-->
            <#--</div>-->
            <#--<div class="tab-category-item">-->
                <#--<ul class="index_recd">-->
                    <#--<li>-->
                        <#--<a href="#">阻止a标签href默认跳转事件</a>-->
                        <#--<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>-->
                    <#--</li>-->
                    <#--<li >-->
                        <#--<a href="#">PHP面试题汇总</a>-->
                        <#--<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>-->
                    <#--</li>-->
                    <#--<li >-->
                        <#--<a href="#">阻止a标签href默认跳转事件</a>-->
                        <#--<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>-->
                    <#--</li>-->
                    <#--<li >-->
                        <#--<a href="#">阻止a标签href默认跳转事件</a>-->
                        <#--<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>-->
                    <#--</li>-->
                    <#--<li >-->
                        <#--<a href="#">PHP面试题汇总</a>-->
                        <#--<p class="hits"><i class="Hui-iconfont" title="点击量">&#xe622;</i> 276 </p>-->
                    <#--</li>-->
                <#--</ul>-->
            <#--</div>-->
        <#--</div>-->

        <!--点击排行-->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category">
                <a href=""><strong>点击排行</strong></a>
            </div>
            <div class="tab-category-item">
                <ul class="index_recd clickTop">
                    <#list  groom as gm>
                      <li>
                          <a href="detail?id=${gm.id}">${gm.title}</a>
                          <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
                      </li>

                    </#list>


                </ul>
            </div>
        </div>

        <!--标签-->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category">
                <a href=""><strong>标签云</strong></a>
            </div>
            <div class="tab-category-item">
                <div class="tags">
                    <a href="/sort?sort=php">PHP</a>
                    <a href="/sort?sort=java">Java</a>
                    <a href="/sort?sort=react">react</a>
                    <a href="/sort?sort=react-native">react native</a>
                    <a href="/sort?sort=db">mysql</a>
                    <a href="/sort?sort=linue">centos</a>
                    <a href="#">网站常用小图标</a>
                    <a href="#">web工具箱</a> <a href="#">网站常用背景素材</a>
                    <a href="#">H-ui阅读</a>
                    <a href="#">弹出层插件</a>
                    <a href="#">SuperSlide插件</a>
                    <a href="#">TouchSlide</a></div>
            </div>
        </div>
        <!--图片-->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category">
              <a href=""><strong>博主微信</strong></a>
            </div>
            <div class="tab-category-item">
                <img data-original="/lw/temp/wx.jpg" class="img-responsive lazyload" alt="响应式图片">
            </div>
        </div>

        <!--友情链接-->
        <#--<div class="bg-fff box-shadow radius mb-20">-->
            <#--<div class="tab-category">-->
                <#--<a href=""><strong>隔壁邻居</strong></a>-->
            <#--</div>-->
            <#--<div class="tab-category-item">-->
                <#--<span><i class="Hui-iconfont">&#xe6f1;</i><a href="#" class="btn-link">百度</a></span>-->
                <#--<span><i class="Hui-iconfont">&#xe6f1;</i><a href="#" class="btn-link">淘宝</a></span>-->
                <#--<span><i class="Hui-iconfont">&#xe6f1;</i><a href="#" class="btn-link">腾讯</a></span>-->
                <#--<span><i class="Hui-iconfont">&#xe6f1;</i><a href="#" class="btn-link">慕课网</a></span>-->
                <#--<span><i class="Hui-iconfont">&#xe6f1;</i><a href="#" class="btn-link">h-ui</a></span>-->
            <#--</div>-->
        <#--</div>-->
        <!--最近访客-->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category">
                <a href=""><strong>最近访客</strong></a>
            </div>
            <div class="panel-body">
                <ul class="recent">
                    <div class="item"><img src="/lw/img/40.jpg" alt=""></div>
                    <div class="item"><img src="/lw/img/40.jpg" alt=""></div>
                    <div class="item"><img src="/lw/img/40.jpg" alt=""></div>
                    <div class="item"><img src="/lw/img/40.jpg" alt=""></div>
                    <div class="item"><img src="/lw/img/40.jpg" alt=""></div>
                    <div class="item"><img src="/lw/img/40.jpg" alt=""></div>
                    <div class="item"><img src="/lw/img/40.jpg" alt=""></div>
                    <div class="item"><img src="/lw/img/40.jpg" alt=""></div>
                    <div class="item"><img src="/lw/img/40.jpg" alt=""></div>
                    <div class="item"><img src="/lw/img/40.jpg" alt=""></div>
                </ul>
            </div>
        </div>

        <!--分享-->
        <div class="bg-fff box-shadow radius mb-20">
            <div class="tab-category">
                <a href=""><strong>站点分享</strong></a>
            </div>
            <div class="panel-body">
                <div class="bdsharebuttonbox Hui-share"><a href="#" class="bds_weixin Hui-iconfont" data-cmd="weixin" title="分享到微信">&#xe694;</a><a href="#" class="bds_qzone Hui-iconfont" data-cmd="qzone" title="分享到QQ空间">&#xe6c8;</a> <a href="#" class="bds_sqq Hui-iconfont" data-cmd="sqq" title="分享到QQ好友">&#xe67b;</a> <a href="#" class="bds_tsina Hui-iconfont" data-cmd="tsina" title="分享到新浪微博">&#xe6da;</a> <a href="#" class="bds_tqq Hui-iconfont" data-cmd="tqq" title="分享到腾讯微博">&#xe6d9;</a></div>
            </div>
        </div>




    </div>

</section>
<footer class="footer mt-20">
    <div class="container-fluid" id="foot">
        <p>Copyright © 黔ICP备15013359号-4<br>
            <#--<a href="http://www.miitbeian.gov.cn/" target="_blank" rel="nofollow">Copyright © 黔ICP备15013359号-4</a>  <a href="http://www.mycodes.net/" target="_blank"></a><br>-->
        </p>
    </div>
</footer>
<script type="text/javascript" src="/lw/plugin/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/lw/plugin/layer/3.0/layer.js"></script>
<script type="text/javascript" src="/lw/plugin/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="/lw/plugin/pifu/pifu.js"></script>
<script type="text/javascript" src="/lw/js/common.js"></script>
<script> $(function(){ $(window).on("scroll",backToTopFun); backToTopFun(); }); </script>
<script type="text/javascript" src="/lw/plugin/jquery.SuperSlide/2.1.1/jquery.SuperSlide.min.js"></script>

<script>
    $(function(){
//幻灯片
        jQuery(".slider_main .slider").slide({mainCell: ".bd ul", titCell: ".hd li", trigger: "mouseover", effect: "leftLoop", autoPlay: true, delayTime: 700, interTime: 2000, pnLoop: true, titOnClassName: "active"})
//tips
        jQuery(".slideTxtBox").slide({titCell: ".hd ul", mainCell: ".bd ul", autoPage: true, effect: "top", autoPlay: true});
//标签
        $(".tags a").each(function(){
            var x = 9;
            var y = 0;
            var rand = parseInt(Math.random() * (x - y + 1) + y);
            $(this).addClass("tags"+rand)
        });

        $("img.lazyload").lazyload({failurelimit : 3});
    });

    $("#search-btn").click(function () {
        var input_text = $("#search").val().trim();
        location.href="/hunt?kw="+input_text;
    });



    var pic_len = $(".pic").length;
    $(".pic:first").show();
    for(var i=1;i<pic_len;i++){
        if((i-1)%3!=0){
            $(".pic:eq("+i+")").show();
        }else{
            $(".pic:eq("+i+")").parent().addClass("no_pic")
        }
    }

</script>

</body>
</html>
