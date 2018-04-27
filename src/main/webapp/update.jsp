<%--
  Created by IntelliJ IDEA.
  User: alda
  Date: 18-3-1
  Time: 下午7:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户登录</title>
    <link href="/css/common.css" rel="stylesheet" type="text/css" />
    <link href="/css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        //图片放大
        function showOriginal(img) {
            document.getElementById("imgFrame").style.display = "block";
           document.getElementById("imgbox").innerHTML = "<img src=' images/ad20.jpg' width='680px' height='480px'/>";
        //     images/ad20.jpg

        }
        function close() {
            document.getElementById("imgFrame").style.display = "none";
        }
    </script>
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
                <input type="text" class="inputh lf" placeholder="名称" />
                <div class="xzkbg spbg lf"></div>
            </dd>
            <dd>
                <label>起拍价：</label>
                <input type="text" class="inputh lf" placeholder="40000"/>
                <div class="lf red laba">必须为数字</div>
            </dd>
            <dd>
                <label>底价：</label>
                <input type="text" class="inputh lf" placeholder="40000"/>
                <div class="lf red laba">必须为数字</div>
            </dd>
            <dd>
                <label>开始时间：</label>
                <input type="text" class="inputh lf" placeholder="2010-01-05 12:30:00" />
                <div class="lf red laba">格式：2011-05-05 12:30:00</div>
            </dd>
            <dd>
                <label>结束时间：</label>
                <input type="text" class="inputh lf" placeholder="2010-05-06 12:30:00" />
                <div class="lf red laba">格式：2011-05-05 12:30:00</div>
            </dd>
            <dd class="dds">
                <label>描述：</label>
                <textarea name="" cols="" rows="" class="textarea"></textarea>
            </dd>
            <dd>
                <label>修改图片：</label>

                <div class="lf salebd"><a href="#"><img src="images/ad20.jpg" width="100" height="100" onclick="showOriginal(this)"/></a></div>
                <input name="" type="file" class="marg10" />

            </dd>
            <div id="imgFrame">
                <div>

                </div >
                <div id="imgbox"  onclick="close()"></div>
            </div>
            <dd class="hegas">
                <input name="" type="submit" value="保 存" class="spbg buttombg buttombgs f14 lf buttomb" />
                <input name="" type="submit" value="取 消" class="spbg buttombg buttombgs f14 lf buttomb" onclick="javascript:history.go(-1)"  />

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
