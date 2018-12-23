<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>zch的后台系统</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
    <link rel="stylesheet" href="/layui/layer/theme/default/layer.css">
    <script src="/layui/layui.js"></script>
    <script src="/layui/layer/layer.js"></script>
    <script src="/layui/jquery.min.js"></script>

</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">ZCH的panel</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="/myadmin/list">文章管理</a></li>
            <li class="layui-nav-item"><a href="/myadmin/index">用户管理</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    贤心
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退了</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">文章管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/myadmin/list">文章列表</a></dd>
                        <dd><a href="/myadmin/add">添加文章</a></dd>
                    </dl>
                </li>
                <!--  <li class="layui-nav-item">
                      <a href="javascript:;">解决方案</a>
                      <dl class="layui-nav-child">
                          <dd><a href="javascript:;">列表一</a></dd>
                          <dd><a href="javascript:;">列表二</a></dd>
                          <dd><a href="">超链接</a></dd>
                      </dl>
                  </li>
                  <li class="layui-nav-item"><a href="">云市场</a></li>
                  <li class="layui-nav-item"><a href="">发布商品</a></li>  -->
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;"><h2>添加文章</h2></div>


        <div class="layui-form-item">
            <label class="layui-form-label">分类</label>
            <div class="layui-input-block">
                <select name="colId" lay-verify="required" class="layui-input" id="form-stype">
                    <option value="">请选择</option>
                    <option value="php">php</option>
                    <option value="python">python</option>
                    <option value="java">java</option>
                    <option value="react-native">react native</option>
                    <option value="react">react/react native</option>
                    <option value="react">react</option>
                    <option value="linux">linux</option>
                    <option value="golang">golang</option>
                    <option value="django">django</option>
                    <option value="blockchain">区块链</option>
                    <option value="c">c/c++</option>
                    <option value="mysql">mysql</option>
                    <option value="web">前端开发</option>
                    <option value="go">golang</option>
                </select>
            </div>
        </div>

        <form class="layui-form" action="/myadmin/_add/" method="post" enctype="multipart/form-data" onsubmit="return checkForm();">

            <input type="hidden" name="stype" value="" id="stype">

            <div class="layui-form-item">
                <label class="layui-form-label">标题</label>
                <div class="layui-input-block">
                    <input class="layui-input" id="title" name="title" size="50" value="" type="text">
                </div>
            </div>


            <div class="layui-form-item">
                <label class="layui-form-label">作者</label>
                <div class="layui-input-block">
                    <input class="layui-input" name="author" size="50" value="admin" type="text">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">缩略图</label>
                <div class="layui-input-block">
                    <input name="smallimg" id="" type="file" class="layui-input">
                </div>
            </div>


            <div class="layui-form-item">
                <label class="layui-form-label">简介</label>
                <div class="layui-input-block">
                    <textarea name="brief" class='layui-textarea' id="brief" cols="30" style="width: 98%;" rows="5"></textarea>
                </div>
            </div>


            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">内容</label>
                <div class="layui-input-block">
                    <textarea name="content" id="editor" style="width: 99%;height: 483px;"></textarea>
                </div>
            </div>


            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>




    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © zch
    </div>
</div>


<!--编辑器基本配置-->

<script type="text/javascript" src="/layui/ueditor/ueditor.config.js"></script>

<!--编辑器完整代码-->

<script type="text/javascript"  src="/layui/ueditor/ueditor.all.js"> </script >

<script>

    //实例化编辑器

    var ue = UE.getEditor( 'editor', {

        autoHeightEnabled: true,

        autoFloatEnabled: true,

       // initialFrameWidth: '80%'',

     //   initialFrameHeight: 483

    });


    function checkForm() {

        var selectVal = $("#form-stype").val();

        if(selectVal.length>1){
            $("#stype").val(selectVal);
        }

        var colID = $("#stype").val();
        if(colID.length<1){

            layer.msg("分类必选");
            return false;
        }

        return true;
    }


    $("#form-stype").change(function () {
        var name = $(this).val();
        $("#stype").val(name);

    })
</script>

</body>
</html>














