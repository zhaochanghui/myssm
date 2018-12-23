<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>注册</title>
    <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles.">
    <meta name="author" content="Vincent Garreau" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link rel="stylesheet" media="screen" href="/login/css/style.css">
    <link rel="stylesheet" type="text/css" href="/login/css/reset.css"/>
</head>
<body>

<div id="particles-js">
    <div class="login">
        <div class="login-top">
            登录
        </div>
        <div class="login-center clearfix">
            <div class="login-center-img"><img src="/login/img/name.png"/></div>
            <div class="login-center-input">
                <input type="text" name="nickname" id="nickname" value="" placeholder="请输入您的用户名" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的昵称'"/>
                <div class="login-center-input-text">昵称</div>
            </div>
        </div>
        <div class="login-center clearfix">
            <div class="login-center-img"><img src="/login/img/password.png"/></div>
            <div class="login-center-input">
                <input type="password" name="pwd"  id="pwd" value="" placeholder="请输入您的密码" onfocus="this.placeholder=''" onblur="this.placeholder='请输入您的密码'"/>
                <div class="login-center-input-text">密码</div>
            </div>
        </div>

        <div id="nickerror"></div>
        <div class="login-button">
            登录
        </div>
    </div>
    <div class="sk-rotating-plane"></div>
</div>

<!-- scripts -->
<script src="/login/js/particles.min.js"></script>
<script src="/login/js/app.js"></script>
<script src="/lw/js/jquery.min.js"></script>
<script type="text/javascript">
    function hasClass(elem, cls) {
        cls = cls || '';
        if (cls.replace(/\s/g, '').length == 0) return false; //当cls没有参数时，返回false
        return new RegExp(' ' + cls + ' ').test(' ' + elem.className + ' ');
    }

    function addClass(ele, cls) {
        if (!hasClass(ele, cls)) {
            ele.className = ele.className == '' ? cls : ele.className + ' ' + cls;
        }
    }

    function removeClass(ele, cls) {
        if (hasClass(ele, cls)) {
            var newClass = ' ' + ele.className.replace(/[\t\r\n]/g, '') + ' ';
            while (newClass.indexOf(' ' + cls + ' ') >= 0) {
                newClass = newClass.replace(' ' + cls + ' ', ' ');
            }
            ele.className = newClass.replace(/^\s+|\s+$/g, '');
        }
    }

    $("#nickname").blur(function () {
        $.post("/home/checknickname",{nickname:$(this).val().trim()},function (data) {
            if(data=='has'){
                $("#nickerror").css({'color':'red','padding-left':"100px"});
                $("#nickerror").html("");
            }else{
                    $("#nickerror").css({'color':'red','padding-left':"100px"});
                $("#nickerror").html("昵称不存在");
            }

        })
    });

    document.querySelector(".login-button").onclick = function(){

        var res = 1;

        if(($("#nickerror").html())=="昵称不存在"){
            alert("昵称不存在");
            return false;
        }

        var nickname = $("#nickname").val().trim();
        var pwd = $("#pwd").val().trim();
        if(nickname.length<2){
            alert("昵称必填，不能少于3位！");
            return false;
        }
        if(pwd.length<=2){
            alert("密码必填，不能少于3位！");
            return false;
        }

        $.post("/home/_login",{nickname:nickname,pwd:pwd},function (data) {
           if(data=='error'){
               res =2;
               return false;
           }
        });


        addClass(document.querySelector(".login"), "active")
        setTimeout(function(){
            addClass(document.querySelector(".sk-rotating-plane"), "active")
            document.querySelector(".login").style.display = "none"
        },800)
        setTimeout(function(){
            removeClass(document.querySelector(".login"), "active")
            removeClass(document.querySelector(".sk-rotating-plane"), "active")
            document.querySelector(".login").style.display = "block"

            if(res==1) {
                alert("登录成功")
                window.location.href = "/";
            }else{
                alert('密码错误');
            }
        },5000)
    }
</script>
<div style="text-align:center;">
    <p>直接进入：<a href="/">首页</a></p>
</div>
</body>
</html>