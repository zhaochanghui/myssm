<!doctype html>
<html>
<head>
    <meta charset="UTF-8"/>
    <title>后台管理</title>
    <LINK rel="Bookmark" href="/favicon.ico">
    <LINK rel="Shortcut Icon" href="/favicon.ico"/>
    <link rel="stylesheet" href="/layui/css/layui.css">
    <link rel="stylesheet" href="/layui/layer/theme/default/layer.css">
    <script src="/layui/layui.js"></script>
    <script src="/layui/layer/layer.js"></script>
    <script src="/layui/jquery.min.js"></script>

    <style>
        .admin_login_wrap {position: absolute;width:400px;height:200px;left:50%;top:50%;
            margin-left:-200px;margin-top:-100px;border:0px solid #00F}
        /*css注释：为了方便截图，对CSS代码进行换行*/
    </style>

</head>
<body>
<div class="admin_login_wrap">


    <form class="layui-form" action="/myadmin/_login" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">登录名</label>
            <div class="layui-input-block">
                <input type="text" name="username" required  lay-verify="required" placeholder="" autocomplete="off" class="layui-input" style="width: 65%;">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码</label>
            <div class="layui-input-inline">
                <input type="password" name="password" required lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">

        <div class="layui-form-item">
            <div class="layui-input-block">
                <button class="layui-btn layui-btn-primary" lay-submit lay-filter="formDemo">登录</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>
    </form>

    <script>
        //Demo
        layui.use('form', function(){
            var form = layui.form;

            //监听提交
            form.on('submit(formDemo)', function(data){
                //layer.msg(JSON.stringify(data.field));
                $('form').submit();
            });
        });
    </script>



</div>
</body>
</html>




