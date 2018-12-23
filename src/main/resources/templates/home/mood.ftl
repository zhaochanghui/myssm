<!DOCTYPE HTML>
<html>
<head>
    <title>developer1.cn</title>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <meta name="keywords" content="赵长辉的个人博客">
    <meta name="description" content="zch的博客系统，一个站在php,java开发之路上的草根程序员个人博客网站。">
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
    <link rel="stylesheet" type="text/css" href="/lw/css/timeline.css" />
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
<!--导航条-->
<nav class="breadcrumb">
    <div class="container"><i class="Hui-iconfont">&#xe67f;</i> <a href="index.html" class="c-primary">首页</a> <span class="c-gray en">&gt;</span> <span class="c-gray">碎言碎语</span></div>
</nav>

<section class="container mt-20">
    <div class="container-fluid">
        <div class="timeline">

            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="/lw/css/timeline/cd-icon-location.svg" alt="position">
                </div>
                <div class="cd-timeline-content">
                    <h4>后台重构</h4>
                    <p>之前用的后台是用django开发的，现在改为springboot+springmvc+mybatis+mysql+jdbc,并已经完成第一版，django版正式停用。</p>
                    <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="更多"></a>
                    <span class="cd-date">2018年11月15日</span>
                </div>
            </div>

            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="/lw/css/timeline/cd-icon-location.svg" alt="position">
                </div>
                <div class="cd-timeline-content">
                    <h4>评论相关</h4>
                    <p>添加文章评论功能。需要输入自己的手机，微信等联系方式，也可以匿名评价，随便起一个自己喜欢的昵称。后面会开发用户模块，到时候注册也是需要填昵称等信息的</p>
                   <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="更多"></a>
                    <span class="cd-date">2018年11月11日</span>
                </div>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="/lw/css/timeline/cd-icon-location.svg" alt="position">
                </div>
                <div class="cd-timeline-content">
                    <h4>文章详情优化</h4>
                    <p>下班后完成的（今天是周六，但是我们部门加班的(因为是类似集团下的初创子公司)。本公司其他部门加班的不多:文章详情页底部显示上一篇文章，下一篇文章链接；评价页面编写</p>
                   <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="更多"></a>
                    <span class="cd-date">2018年11月10日</span>
                </div>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="/lw/css/timeline/cd-icon-location.svg" alt="position">
                </div>
                <div class="cd-timeline-content">
                    <h4>首页，列表页，详情页，搜索页views实现</h4>
                    <p>文章列表，详情，搜索，分类列表mapper,service,controller,view的实现。</p>
                   <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="更多"></a>
                    <span class="cd-date">2018年11月07日</span>
                </div>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="/lw/css/timeline/cd-icon-location.svg" alt="position">
                </div>
                <div class="cd-timeline-content">
                    <h4>搭建环境</h4>
                    <p>ide是IntelliJ IDEA，搭建springboot+springmvc+mybatis项目。配置数据库等，无xml配置文件。后台系统是用django开发好的。所以这个项目就是前台项目。</p>
                   <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="更多"></a>
                    <span class="cd-date">2018年11月06日</span>
                </div>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="/lw/css/timeline/cd-icon-location.svg" alt="position">
                </div>
                <div class="cd-timeline-content">
                    <h4>测试测试</h4>
                    <p>zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。</p>
                   <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="更多"></a>
                    <span class="cd-date">2018年12月01日</span>
                </div>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="/lw/css/timeline/cd-icon-location.svg" alt="position">
                </div>
                <div class="cd-timeline-content">
                    <h4>测试测试</h4>
                    <p>zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。</p>
                   <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="更多"></a>
                    <span class="cd-date">2018年12月01日</span>
                </div>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="/lw/css/timeline/cd-icon-location.svg" alt="position">
                </div>
                <div class="cd-timeline-content">
                    <h4>测试测试</h4>
                    <p>zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。</p>
                   <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="更多"></a>
                    <span class="cd-date">2018年12月01日</span>
                </div>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="/lw/css/timeline/cd-icon-location.svg" alt="position">
                </div>
                <div class="cd-timeline-content">
                    <h4>测试测试</h4>
                    <p>zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。</p>
                   <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="更多"></a>
                    <span class="cd-date">2018年12月01日</span>
                </div>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="/lw/css/timeline/cd-icon-location.svg" alt="position">
                </div>
                <div class="cd-timeline-content">
                    <h4>测试测试</h4>
                    <p>zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。</p>
                   <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="更多"></a>
                    <span class="cd-date">2018年12月01日</span>
                </div>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="/lw/css/timeline/cd-icon-location.svg" alt="position">
                </div>
                <div class="cd-timeline-content">
                    <h4>测试测试</h4>
                    <p>zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。</p>
                   <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="更多"></a>
                    <span class="cd-date">2018年12月01日</span>
                </div>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="/lw/css/timeline/cd-icon-location.svg" alt="position">
                </div>
                <div class="cd-timeline-content">
                    <h4>测试测试</h4>
                    <p>zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。</p>
                   <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="更多"></a>
                    <span class="cd-date">2018年12月01日</span>
                </div>
            </div>
            <div class="cd-timeline-block">
                <div class="cd-timeline-img cd-picture">
                    <img src="/lw/css/timeline/cd-icon-location.svg" alt="position">
                </div>
                <div class="cd-timeline-content">
                    <h4>测试测试</h4>
                    <p>zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。zch的博客测试版本上线。。</p>
                   <a href="#" class="f-r"><input class="btn btn-success size-S" type="button" value="更多"></a>
                    <span class="cd-date">2018年12月01日</span>
                </div>
            </div>

        </div>
    </div>

</section>
<footer class="footer mt-20">
    <div class="container-fluid" id="foot">
        <p>Copyright © 黔ICP备15013359号-4<br>
    </div>
</footer>
<script type="text/javascript" src="/lw/plugin/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/lw/plugin/layer/3.0/layer.js"></script>
<script type="text/javascript" src="/lw/plugin/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="/lw/plugin/pifu/pifu.js"></script>
<script type="text/javascript" src="/lw/js/common.js"></script>
<script> $(function(){ $(window).on("scroll",backToTopFun); backToTopFun(); }); </script>
<script>
    $(function () {
        //on scolling, show/animate timeline blocks when enter the viewport
        $(window).on('scroll', function () {
            $('.cd-timeline-block').each(function () {
                if ($(this).offset().top <= $(window).scrollTop() + $(window).height() * 0.75 && $(this).find('.cd-timeline-img').hasClass('is-hidden')) {
                    $(this).find('.cd-timeline-img, .cd-timeline-content').removeClass('is-hidden').addClass('bounce-in');
                }
                if ($(window).scrollTop() - $(this).offset().top > 0) {
                    $(this).find('.cd-timeline-img, .cd-timeline-content').addClass('is-hidden').removeClass('bounce-in');
                }

            });
            $('.cd-timeline-block').each(function(){
                if($(this).offset().top < $(window).scrollTop()+$(window).height()*0.75) {
                    $(this).find('.cd-timeline-img, .cd-timeline-content').removeClass('is-hidden');
                }
            });
        });
    });

</script>
</body>
</html>
