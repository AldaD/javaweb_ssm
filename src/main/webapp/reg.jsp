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
    <title>在线拍卖系统-用户注册</title>
    <link href="/css/common.css" rel="stylesheet" type="text/css" />
    <link href="/css/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript"  src="http://libs.baidu.com/jquery/2.0.0/jquery.js">

    </script>
    <script type="text/javascript">
//         var xhr;
//         function isNameEx() {
//             var name = document.getElementById("username");
//
//             if (name.value!=""){
//                 //创建对象
//                 xhr = new XMLHttpRequest();
//                 //打开链接
//                 xhr.open("get","reg?username="+name.value,true);
//                 //设置回调函数
//                 xhr.onreadystatechange=getResult;
//                 //发送请求
//                 xhr.send(null);
//             }
//         }
//         function getResult() {

//                 if (xhr.responseText == "exist"){
// //                    alert(xhr.responseText)
//                     document.getElementById("usernameexist").style.color="red"
//                     document.getElementById("usernameexist").innerText="用户名已存在"
//                 }else {
//                     document.getElementById("usernameexist").style.color="green"
//                     document.getElementById("usernameexist").innerText="用户名可用"
//                 }
//
//             }
//         }

        function ifsub() {
            var a= document.getElementById("userSpan");
            var b = document.getElementById("password");
            var c = document.getElementById("password2");
            if(a.value=="用户名可用" && b.value!=""&& c.value!="" && b.value==c.value){

                return true;
            }else if (a.value=="用户名已存在"||b.value=="" || c.value==""|| b.value!=c.value){

                return false;
            }
        }
        function pussisnull() {
            var psaa= document.getElementById("password");
            var ifpassnull = document.getElementById("ifpassnull")
            if(psaa.value==""){
                ifpassnull.style.color="red"
                ifpassnull.innerText="密码不能为空";
            }else{
                ifpassnull.innerText="";
            }
        }
        function passerr() {
            var password2 =document.getElementById("password2")
//
//
            if (password.value != password2.value) {
                var passnull = document.getElementById("passnull")
                passnull.style.color="red";
                passnull.innerText="两次输入密码不一致";
//                alert("密码不一致！");
            }else {
                var passnull = document.getElementById("passnull")
                passnull.innerText="";
            }
        }
    </script>
</head>

<body>
<form action="/reg.action"method="post" id="adduser">
<div class="wrap">
    <!-- main begin-->

    <div class="zclf login logns">
        <h1  class="blue">用户注册</h1>
        <dl>
            <dd>
                <label> <small>*</small>用户名</label>
                <input type="text" class="inputh lf" value="" name="username" id="username"  onblur="isNameEx()"/>

            </dd>
            <dd><span id="userSpan"></span></dd>
            <dd>
                <label> <small>*</small>密码</label>
                <input type="password" class="inputh lf" value="" name="password" id="password" onblur="pussisnull()"/>

            </dd>
            <dd><span id="ifpassnull"></span></dd>

            <dd>
                <label> <small>*</small>确认密码</label>
                <input type="text" class="inputh lf" value="" name="password2" id="password2" onblur="passerr()"/>


            </dd>
            <dd><span id="passnull" style="color: red"></span></dd>


            <dd class="hegas">
                <label>&nbsp;</label>
                <input name="" type="submit" value="立即注册" form="adduser"  onclick="return ifsub()" class="spbg buttombg buttombgs f14 lf" />
            </dd>
        </dl>
    </div>
    <!-- main end-->
    <!-- footer begin-->

</div>
<!--footer end-->

</div>
</form>

</body>
<script type="text/javascript">

        function isNameEx() {

            var username=$("#username").val();

            $.ajax({
                url:"usernamecheck.action",
                type:"post",
                data:{"username":username},
                dataType:"json",
                success:function(data){
                    alert(data);
                    if (data!=null ) {
                        $("#userSpan").text("用户名已存在");
                        $("#username").val('');
                    }else if(data==null && username !=''){
                        $("#userSpan").text("用户名可用");
                    }
                }
            });

    }
</script>
</html>
