<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>zch的后台系统</title>
    <link rel="stylesheet" href="/layui/css/layui.css">
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
        <div style="padding: 15px;"><h3>文章列表</h3></div>

        <table class="layui-table">
            <colgroup>
                <col width="150">
                <col width="200">
                <col>
            </colgroup>
            <thead>
            <tr>
                <th><input class="allChoose" name="" type="checkbox"></th>
                <th> <div style="width: 40px;">ID</div></th>
                <th>标题</th>
                <#--<th>简介</th>-->
                <th>创建时间</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
               <#list notes as note>
               <tr>
                   <td class="tc"><input name="id[]" value="59" type="checkbox"></td>
                   <td>
                       ${note.id}
                   </td>
                   <td>${note.title}</td>
                   <#--<td>${note.brief}</td>-->
                   <td>${note.create_time}</td>
                   <td>
                       <a class="layui-btn layui-btn-xs layui-btn-primary" href="/myadmin/update/?id=${note.id}">修改</a>
                       <a class="layui-btn layui-btn-xs layui-btn-primary"  href="/myadmin/del/?id=${note.id}">删除</a>
                   </td>
               </tr>
               </#list>
            </tbody>
        </table>

        <div class="list-page">
                       <#if prev==true >
                      <a href="/myadmin/list?page=${page-1}" class="layui-btn layui-btn-xs layui-btn-primary">上一页</a>
                       <#else>
                 <a href="#" class="layui-btn layui-btn-xs layui-btn-primary">上一页></a>
                       </#if>

                  <#if next==true >
                      <a href="/myadmin/list?page=${page+1}" class="layui-btn layui-btn-xs layui-btn-primary">下一页</a>
                  <#else>
                     <a href="#" class="layui-btn layui-btn-xs layui-btn-primary">下一页</a>
                  </#if>

        </div>

    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © zch
    </div>
</div>
<script src="/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>