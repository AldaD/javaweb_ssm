<%--
  Created by IntelliJ IDEA.
  User: alda
  Date: 18-3-1
  Time: 下午7:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>无标题文档</title>
    <link href="/css/common.css" rel="stylesheet" type="text/css" />
    <link href="/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div class="wrap">
    <!-- main begin-->
    <div class="sale">
        <h1 class="lf">在线拍卖系统</h1>
        <div class="logout right"><a href="/signOut.action" title="注销">注销</a></div>
    </div>
    <div class="login logns produce">
        <h1 class="blues">拍卖品信息</h1>
        <dl>
            <dd >
                <label>名称：</label>
                <input type="text" class="inputh lf" value="" />
                <div class="xzkbg spbg lf"></div>
            </dd>
            <dd>
                <label>起拍价：</label>
                <input type="text" class="inputh lf" value="" />

            </dd>

            <dd>
                <label>开始时间：</label>
                <input type="text" class="inputh lf" value="" />

            </dd>
            <dd>
                <label>结束时间：</label>
                <input type="text" class="inputh lf" value="" />

            </dd>
            <dd class="dds">
                <label>拍卖品图片：</label>
                <div class="lf salebd">  <input name="" type="file" class="offset10 lf" /></div>

            </dd>
            <dd class="dds">
                <label>描述：</label>
                <textarea name="" cols="" rows="" class="textarea"></textarea>
            </dd>
            <dd class="hegas">
                <input name="" type="submit" value="保 存" class="spbg buttombg buttombgs buttomb f14 lf" />
                <input name="" type="submit" value="取 消" class="spbg buttombg buttombgs buttomb f14 lf" />
            </dd>
        </dl>
    </div>
    <!-- main end-->
    <!-- footer begin-->

</div>
<!--footer end-->

</div>
</body>
</html>
