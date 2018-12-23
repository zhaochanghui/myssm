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

<!--导航条-->
<nav class="breadcrumb">
    <div class="container"> <i class="Hui-iconfont">&#xe67f;</i> <a href="/" class="c-primary">首页</a> <span class="c-gray en">&gt;</span>  <span class="c-gray">关于</span> </div>
</nav>

<section class="container">
    <div class="container-fluid">
        <div class="about">
            <h2>Just about me</h2>
            <ul>
                <p>来自：贵州</p>
                <p>毕业于：贵州大学</p>
                <p>专业：文化产业管理</p>
                <p>一枚正在努力进步的php程序员。专长领域为Web开发、服务器端开发，目前正在向全栈工程师进发。。。</p>
            </ul>
            <h2>About my blog</h2>
            <ul>
                <p>域  名：www.developer1.cn 注册于2018年02月02日</p>
                <p>服务器：腾讯云服务器 ，于2018年02月23日完成备案</p>
                <p>备案号： 黔ICP备15013359号-4</p>
                <p>本站定位为IT技术博客站，博客内容主要涉及编程语言、前端开发、服务端开发及一些热门技术等方面，同时分享实用的开发资料。</p>
            </ul>
            <h2>Contact  me</h2>
            <ul>
                <p><i class="Hui-iconfont">&#xe67b;</i>qq : 2636190619 </p>
                <p><i class="Hui-iconfont">&#xe6d1;</i>git：https://github.com/zhaochanghui</p>
                <p><i class="Hui-iconfont">&#xe63b;</i>email : 2636190619@qq.com</p>
            </ul>
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
</body>
</html>
