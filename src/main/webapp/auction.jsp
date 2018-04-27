<%--
  Created by IntelliJ IDEA.
  User: alda
  Date: 18-3-1
  Time: 下午7:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>在线拍卖系统-拍品详情</title>
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
    <div class="items sg-font lf">
        <ul class="rows">
            <li>名称：</li>
            <li class="borderno">${sessionScope.auctioninfor.auctionname}</li>
        </ul>
        <ul class="rows">
            <li>描述：</li>
            <li class="borderno">${sessionScope.auctioninfor.auctiondesc}</li>
        </ul>
        <ul class="rows">
            <li>开始时间：</li>
            <li class="borderno">${sessionScope.auctioninfor.auctionstarttime}</li>
        </ul>
        <ul class="rows">
            <li>结束时间：</li>
            <li class="borderno">${sessionScope.auctioninfor.auctionendtime}</li>
        </ul>
        <ul class="rows border-no">
            <li>起拍价：</li>
            <li class="borderno">${sessionScope.auctioninfor.auctionstartprice}</li>
        </ul>
    </div>
    <div class="rg borders"><img src="${sessionScope.auctioninfor.auctionpic}" width="270" height="185" alt="" /></div>
    <div class="cl"></div>
    <div class="top10 salebd">
        <form action="doauction" method="post">
        <p>
            <label for="sale">出价：</label>
            <input type="text"  class="inputwd" id="sale" name="sale" value=""/>
           <input name="" type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom" />
        </p>
        <p class="f14 red">不能低于最高竞拍价</p>
        </form>
    </div>
    <div class="top10">
        <a href="/auction/${sessionScope.auctioninfor.auctioid}.action"><input name="" type="submit" value="刷 新" class="spbg buttombg f14" /></a>
        <a href="/showlist/0.action"><input name="" type="submit" value="返回列表" class="spbg buttombg f14" /></a>
    </div>
    <div class="offer">
        <h3>出价记录</h3>
        <div class="items sg-font">
            <ul class="rows even strong">
                <li>竞拍时间</li>
                <li>竞拍价格</li>
                <li class="borderno">竞拍人</li>
            </ul>

         <c:forEach var="recordInfor" items="${sessionScope.recordInfor}">
            <ul class="rows">
                <li>${recordInfor.auctiontime}</li>
                <li>${recordInfor.auctionprice}</li>
                <li class="borderno">${recordInfor.user.username}</li>
            </ul>
         </c:forEach>
        </div>
    </div>
    <!-- main end-->
</div>
</body>
</html>
