<!DOCTYPE HTML>
<html>
<head>
    <title>developer1.cn</title>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <meta name="keywords" content="赵长辉的个人博客">
    <meta name="description" content="developer1博客系统，一个站在php,java开发之路上的草根程序员个人博客网站。">
    <LINK rel="Bookmark" href="/favicon.ico">
    <LINK rel="Shortcut Icon" href="/favicon.ico"/>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="/staticRes/js/html5shiv.js"></script>
    <script type="text/javascript" src="/staticRes/js/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/lw/plugin/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="/lw/plugin/Hui-iconfont/1.0.8/iconfont.min.css"/>
    <link rel="stylesheet" type="text/css" href="/lw/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/lw/plugin/pifu/pifu.css"/>
    <link rel="stylesheet" type="text/css" href="/lw/plugin/wangEditor/css/wangEditor.min.css">
    <!--[if lt IE 9]>
    <link href="/staticRes/lib/h-ui/css/H-ui.ie.css" rel="stylesheet" type="text/css"/>
    <![endif]-->

    <style>
        *{
            font-family: -apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei", sans-serif;
        }
    </style>

    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    }

    function showSide() {
        $('.navbar-nav').toggle();
    }</script>
</head>
<body>
<header class="navbar-wrapper">
    <div class="navbar navbar-fixed-top">
        <div class="container cl">
            <a class="navbar-logo hidden-xs" href="/">
            <#--<img class="logo" src="/lw/img/logo.png" alt="developer1博客" />-->
                <div style="width:177px;height: 43px;line-height:43px;float: left;">developer1.cn</div>
            </a>
            <a class="logo navbar-logo-m visible-xs" href="/">developer1博客</a>
            <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:void(0);"
               onclick="showSide();">&#xe667;</a>
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
                        <#--<a href="#" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})"><img-->
                                <#--class="avatar size-S" src="/lw/img/qq.jpg" title="登入">登入</a>-->
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
    <div class="container"><i class="Hui-iconfont">&#xe67f;</i> <a href="/" class="c-primary">首页</a> <span
            class="c-gray en">&gt;</span> <span class="c-gray"><a href="/sort?sort=${note.stype}"
                                                                  class="c-primary">${note.stype}</a></span> <span
            class="c-gray en">&gt;</span> <span class="c-gray">${note.title}</span></div>
</nav>

<section class="container pt-20">

    <div class="row w_main_row">


        <div class="col-lg-9 col-md-9 w_main_left">
            <div class="panel panel-default  mb-20">
                <div class="panel-body pt-10 pb-10">
                    <h2 class="c_titile">${note.title}</h2>
                    <p class="box_c"><span class="d_time">发布时间：${note.create_time}</span><span>编辑：<a
                            href="mailto:2636190619@qq.com">zch</a></span><span>阅读（88646）</span></p>
                    <ul class="infos">
                        <p style="color:#5F9421;">${note.brief}</p>
                        <p style="background:#F2FFE4;text-indent: 0px;">${note.content}</p>

                        <!--
                              <p>之前服务器放在电信机房， 联通用户访问速度很不稳定，经常出现访问速度慢的问题，换到阿里云解决了之前的问题。很多人都问我的博客选得什么空间，一年的费用得多少钱，今天我列个表出来，供大家参考。</p>
                        <p>&nbsp;<img src="temp/at1.png" alt="个人博客阿里云空间选择" width="700" height="886"></p>
                        <p>对于访问量不大，小型网站带宽可以选择1M的，每个月<span class="cny" style="margin: 0px 1px; padding: 0px; border: 0px; font-family: Arial; line-height: 20px; font-size: 20px; vertical-align: baseline; color: rgb(255, 102, 0); white-space: nowrap;">¥</span><span class="money" style="margin: 0px; padding: 0px; border: 0px; font-family: 微软雅黑, 'Microsoft Yahei', 'Hiragino Sans GB', tahoma, arial, 宋体; line-height: 20px; font-size: 20px; vertical-align: baseline; color: rgb(255, 102, 0); white-space: nowrap;">56.80</span>一年也就568块钱，每天投入也就不到2块钱。</p>
                        <p><img src="temp/at2.png" alt="个人博客阿里云空间选择"></p>
                        <p><strong>1、为什么选Linux？</strong></p>
                        <p>程序用PHP，速度快，配置低（windows必选1G的内存Linux选512MB能同样达到要求）。Linux的系统安全性非常高。Linux服务器的维护与扩展到性价比和性能都高于Windows。</p>
                        <p>1) 最流行的服务器端操作系统，强大的安全性和稳定性</p>
                        <p>2) 免费且开源，轻松建立和编译源代码</p>
                        <p>3) 通过SSH方式远程访问您的云服务器</p>
                        <p>4) 一般用于高性能web等服务器应用，支持常见的PHP/Python等编程语言，支持MySQL等数据库（需自行安装)</p>
                        <p><strong>2、操作系统为什么选CentOS 安全加固版（推荐）？</strong></p>
                        <p>在原 CentOS镜像的基础上，系统进一步安全加固，安装了阿里云独有的入侵防御系统，系统中会出现aegis进程，该系统增加了实时后门，Webshell检测，更加智能的暴力破解防御和多种入侵行为监控，让服务器更加安全可靠。</p>
                        <p><a href="http://www.aliyun.com/product/ecs" target="_blank"><strong><span style="color: rgb(0, 0, 255);">前往阿里云官网购买&gt;&gt;</span></strong></a></p>
                        <p>&nbsp;</p><p align="center" class="pageLink"></p>
                        -->

                    </ul>

                    <div class="keybq">
                        <p><span>关键字</span>：<a class="label label-default">个人博客</a><a
                                class="label label-default">腾讯云</a><a class="label label-default">空间</a></p>
                    </div>

                    <input type="hidden" name="note_id" id='note_id' value="${note.id}"/>
                    <div class="nextinfo">
                        <p class="last">上一篇：
                            <#if prevId!=-1>
                                 <a href="/detail?id=${prevId}"> ${prevTitle} </a>
                            <#else>
                            <a href="#">无</a>
                            </#if>
                        </p>
                        <p class="next">下一篇：
                         <#if nextId!=-1>
                                 <a href="/detail?id=${nextId}"> ${nextTitle} </a>
                         <#else>
                            <a href="#">无</a>
                         </#if>
                        </p>
                    </div>

                </div>
            </div>

            <div class="panel panel-default  mb-20">
                <div class="tab-category">
                    <a href=""><strong>评论区</strong></a>
                </div>
                <div class="panel-body">
                    <div class="panel-body" style="margin: 0 3%;">
                        <div class="mb-20">
                            <ul class="commentList">
                                <li class="item cl"><a href="#"><i class="avatar size-L radius"><img alt=""
                                                                                                     src="http://qzapp.qlogo.cn/qzapp/101388738/1CF8425D24660DB8C3EBB76C03D95F35/100"></i></a>
                                    <div class="comment-main">
                                        <header class="comment-header">
                                            <div class="comment-meta"><a class="comment-author" href="#">nickname</a>
                                                <time title="2014年8月31日 下午3:20" datetime="2014-08-31T03:54:20"
                                                      class="f-r">2014-8-31 15:20
                                                </time>
                                            </div>
                                        </header>
                                        <div class="comment-body">
                                            <p> 是的</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="item cl"><a href="#"><i class="avatar size-L radius"><img alt=""
                                                                                                     src="http://qzapp.qlogo.cn/qzapp/101388738/696C8A17B3383B88804BA92ECBAA5D81/100"></i></a>
                                    <div class="comment-main">
                                        <header class="comment-header">
                                            <div class="comment-meta"><a class="comment-author" href="#">nickname</a>
                                                <time title="2014年8月31日 下午3:20" datetime="2014-08-31T03:54:20"
                                                      class="f-r">2014-8-31 15:20
                                                </time>
                                            </div>
                                        </header>
                                        <div class="comment-body">
                                            <p> +1</p>
                                        </div>
                                    </div>
                                </li>

                            </ul>

                        </div>
                        <div class="line"></div>
                        <!--用于评论-->

                        <form action="" method="post" class="form form-horizontal responsive" id="demoform"
                              novalidate="novalidate">

                            <input type="hidden" name="nickname" id="nickname" value="${nickname}">

                        </form>

                        <div class="mt-20" id="ct">
                            <div id="err" class="Huialert Huialert-danger hidden radius">成功状态提示</div>


                            <textarea id="textarea1" name="comment" style="height:200px;"
                                      placeholder="看完不留一发？"> </textarea>
                            <div class="text-r mt-10">
                                <button onclick="getPlainTxt()" class="btn btn-primary radius"> 发表评论</button>
                            </div>
                        </div>
                        <!--用于回复-->
                        <div class="comment hidden mt-20">
                            <div id="err2" class="Huialert Huialert-danger hidden radius">成功状态提示</div>
                            <textarea class="textarea" style="height:100px;"> </textarea>
                            <button onclick="hf(this);" type="button" class="btn btn-primary radius mt-10">回复</button>
                            <a class="cancelReply f-r mt-10">取消回复</a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-3 col-md-3">


            <!--搜索-->
            <div class="bg-fff box-shadow radius mb-20">
                <div class="tab-category-item">
                    <input type="text" name="search" id="search" style="height:20px;" value="">
                    <button id="search-btn">搜索</button>
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


            <!--热门推荐-->
            <div class="bg-fff box-shadow radius mb-20">
                <div class="tab-category">
                    <a href=""><strong>热门推荐</strong></a>
                </div>
                <div class="tab-category-item">
                    <ul class="index_recd">

                      <#list  groom as gm>
                          <li>
                              <a href="detail?id=${gm.id}">${gm.title}</a>
                              <p class="hits"><i class="Hui-iconfont" title="点击量">&#xe6c1;</i> 276° </p>
                          </li>

                      </#list>

                    </ul>
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

        </div>
    </div>

</section>

<div id="modal-demo" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content radius">
            <div class="modal-header">
                <h3 class="modal-title">对话框标题</h3>
                <a class="close" data-dismiss="modal" aria-hidden="true" href="javascript:void();">×</a>
            </div>
            <div class="modal-body">
                <p>对话框内容…</p>
            </div>
            <div class="modal-footer">
                <button class="btn btn-primary">确定</button>
                <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
            </div>
        </div>
    </div>
</div>

<footer class="footer mt-20">
    <p>Copyright © 黔ICP备15013359号-4<br>
    <#--<a href="http://www.miitbeian.gov.cn/" target="_blank" rel="nofollow">Copyright © 黔ICP备15013359号-4</a>  <a href="http://www.mycodes.net/" target="_blank"></a><br>-->
    </p>
</footer>

<input type="hidden" id="noteId" value="${note.id}"/>

<script type="text/javascript" src="/lw/plugin/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/lw/plugin/layer/3.0/layer.js"></script>
<script type="text/javascript" src="/lw/plugin/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="/lw/plugin/pifu/pifu.js"></script>
<script type="text/javascript" src="/lw/js/common.js"></script>
<script> $(function () {
    $(window).on("scroll", backToTopFun);
    backToTopFun();
}); </script>
<script type="text/javascript" src="/lw/plugin/wangEditor/js/wangEditor.min.js"></script>
<script type="text/javascript">
    $(function () {
            getComments();

        $("img.lazyload").lazyload({failurelimit: 3});

        wangEditor.config.printLog = false;
        var editor1 = new wangEditor('textarea1');
        editor1.config.menus = ['insertcode', 'quote', 'bold', '|', 'img', 'emotion', '|', 'undo', 'fullscreen'];
        editor1.config.emotions = {
            'default': {title: '老王表情', data: 'plugin/wangEditor/emotions1.data'},
            'default2': {title: '老王心情', data: 'plugin/wangEditor/emotions3.data'},
            'default3': {title: '顶一顶', data: 'plugin/wangEditor/emotions2.data'}
        };
        editor1.create();

        //show reply
        $(".hf").click(function () {
            pId = $(this).attr("name");
            $(this).parents(".commentList").find(".cancelReply").trigger("click");
            $(this).parent(".comment-body").append($(".comment").clone(true));
            $(this).parent(".comment-body").find(".comment").removeClass("hidden");
            $(this).hide();
        });
        //cancel reply
        $(".cancelReply").on('click', function () {
            $(this).parents(".comment-body").find(".hf").show();
            $(this).parents(".comment-body").find(".comment").remove();
        });
    });


    $("#search-btn").click(function () {
        var input_text = $("#search").val().trim();
        location.href = "/hunt?kw=" + input_text;
    });


    function getPlainTxt() {
        var nickname = $("#nickname").val().trim();
        var content = $("#textarea1").val().trim();
        if(nickname==''){
            alert("请先登录！");
            window.location.href="/home/login";
            return false;
        }

        if (nickname.length < 1 || content.length < 1) {
            $.Huimodalalert('评论内容必填！', 2000);
            return false;
        }

        var nid = $("#noteId").val();

        $.post("/addcomment", {nickname: nickname, content: content, nid: nid}, function (result) {
            console.log(result);
            $.Huimodalalert('评论成功', 2000);
            getComments();
        });
    }


    function modaldemo() {
        $("#modal-demo").modal("show")
    }

    function modalalertdemo() {
        $.Huimodalalert('我是消息框，2秒后我自动滚蛋！', 2000)
    }


    function getComments() {

        var str3 = '';

        var nid = $("#noteId").val();
        $.get("/getcomments?nid=" + nid, function (data) {
            // var obj = eval("("+data+")");
            var obj = eval("("+data+")");

            console.log(obj)
            for(var i in obj){
                if(i%2==0){
                    str3= str3+' <li class="item cl"><a href="#"><i class="avatar size-L radius"><img alt="" src="http://qzapp.qlogo.cn/qzapp/101388738/1CF8425D24660DB8C3EBB76C03D95F35/100"></i></a> <div class="comment-main"> <header class="comment-header">   <div class="comment-meta"><a class="comment-author" href="#">'+(obj[i]['nickname'])+'</a>  <time title="2014年8月31日 下午3:20" datetime="2014-08-31T03:54:20"  class="f-r">'+(obj[i]['addtime'])+' </time> </div> </header> <div class="comment-body">  <p> '+(obj[i]['content'])+'</p> </div> </div> </li>';
                }else{
                    str3 = str3+' <li class="item cl"><a href="#"><i class="avatar size-L radius"><img alt=""  src="http://qzapp.qlogo.cn/qzapp/101388738/696C8A17B3383B88804BA92ECBAA5D81/100"></i></a> <div class="comment-main"> <header class="comment-header">  <div class="comment-meta"><a class="comment-author" href="#">'+(obj[i]['nickname'])+'</a><time title="2014年8月31日 下午3:20" datetime="2014-08-31T03:54:20" class="f-r">'+(obj[i]['addtime'])+'  </time>  </div></header> <div class="comment-body"> <p>'+(obj[i]['content'])+'</p> </div></div> </li>';
                }
                console.log(obj[i]['content'])

                $('.commentList').html(str3);
            }
        })
    }

</script>
</body>
</html>
