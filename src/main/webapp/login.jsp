<%--
  Created by IntelliJ IDEA.
  User: alda
  Date: 18-3-1
  Time: 下午7:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>在线拍卖系统-用户登录</title>
    <link href="/css/common.css" rel="stylesheet" type="text/css" />
    <link href="/css/style.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">
        function  login() {
            var name =document.getElementById("username")
            var pass =document.getElementById("password")
            if (name.value!=""||pass.value!=""){

                //使用form对象的submit()方法，实现提交。
                document.form1.submit();

            }else{
                alert("用户名或密码不能为空！")
            }
        }
    </script>
</head>

<body>
<div class="wrap">
    <!-- main begin-->
    <div class="main">
        <div class="sidebarg fnone">
            <form name="form1" action="/login.action" method="post" >
                <div class="login">
                    <dl>
                        <dt>用户登陆</dt>
                        <dd><label for="username">用户名：</label><input type="text" class="inputh"  id="username" name="username"/></dd>
                        <dd><label for="password">密 码：</label><input type="password" class="inputh"  id="password" name="password"/></dd>
                        <dd><span style="color: red">${sessionScope.loginner}</span></dd>

                        <dd class="buttom">
                            <input name="" type="button" value="登 录" class="spbg buttombg buttomb f14 lf" ONCLICK="login()"/>
                            <input name="signup" type="button" value="注 册"  class="spbg buttombg buttomb f14 lf" onclick="javascript:location.href='reg.jsp'" />

                            <div class="cl"></div>
                        </dd>

                    </dl>
                </div>
            </form>
        </div>
        <div class="cl"></div>
    </div>
    <!-- main end-->

    <!-- footer begin-->
</div>
<!--footer end-->

</div>
</body>
</html>

