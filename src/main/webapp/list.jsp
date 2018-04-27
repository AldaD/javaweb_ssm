<%--
  Created by IntelliJ IDEA.
  User: alda
  Date: 18-3-1
  Time: 下午7:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>在线拍卖系统-拍卖信息</title>
    <link href="/css/common.css" rel="stylesheet" type="text/css" />
    <link href="/css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<span style="color: #3F3F3F">当前登录用户：</span><span style="color: red">${sessionScope.userinfo.username}</span>
<div class="wrap">
    <!-- main begin-->
    <div class="sale">
        <h1 class="lf">在线拍卖系统</h1>
        <div class="logout right"><a href="/signOut.action" title="注销">注销</a></div>
    </div>

    <div class="items">
        <ul class="rows even strong">
            <li>名称</li>
            <li class="list-wd">描述</li>
            <li>开始时间</li>
            <li>结束时间</li>
            <li>起拍价</li>
            <li class="borderno">操作</li>
        </ul>
        <c:forEach var="auctionlist" items="${sessionScope.auctionlist}">

        <ul class="rows">
            <li><a href="#" title="">${auctionlist.auctionname}</a></li>
            <li class="list-wd">${auctionlist.auctiondesc}</li>
            <li>${auctionlist.auctionstarttime}</li>
            <li>${auctionlist.auctionendtime}</li>
            <li>${auctionlist.auctionstartprice}</li>
            <li class="borderno red"><a href="/auction/${auctionlist.auctioid}.action">竞拍</a></li>
        </ul>

        </c:forEach>
        <div class="page">
            <a href="/showlist/0.action" title="">首页</a>

            <c:if test="${sessionScope.currpage==sessionScope.pagesize&&sessionScope.currpage!=1}">
            <a href="/showlist/${sessionScope.currpage-1}.action" title="">上一页</a>
            </c:if>

            <c:if test="${sessionScope.currpage<sessionScope.pagesize}">
            <a href="/showlist/${sessionScope.currpage+1}.action" title="">下一页</a>
            </c:if>

            <c:if test="${sessionScope.currpage>1&& sessionScope.currpage<sessionScope.pagesize}">

                <a href="/showlist/${sessionScope.currpage-1}.action">上一页</a>

                <a href="/showlist/${sessionScope.currpage+1}.action">下一页</a>
            </c:if>
            <a href="/showlist/${sessionScope.pagesize}.action" title="">尾页</a>
        </div>
    </div>
    <!-- main end-->
</div>
</body>
</html>
