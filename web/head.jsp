<%--
  Created by IntelliJ IDEA.
  User: paigubuxianglema
  Date: 2022/1/17
  Time: 14:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="author" content="Jonas">
    <meta name="keywords" content>
    <meta name="description" content>
    <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
    <meta charset="UTF-8">
    <!-- <title>清洁网首页</title> -->
    <link rel="stylesheet" href="css/common.css"/>
    <link rel="stylesheet" href="css/bill-style.css?v=1.0"/>
    <script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
    <link href="js/framework/bootstrap-3.4.1-dist/css/bootstrap.css" rel="stylesheet">
    <script src="js/laypage/laypage.js"></script>
    <script type="text/javascript" src=js/bill.js"></script>
    <title>广东省清洁生产信息化公共服务平台</title>
</head>
<body>
<!--head start-->
<div class="head">
    <div class="head-content-box" style="background: url(img/choose/bg.png);">
        <div class="head-content clearfix">
            <div class="head-title">
                <p class="font-30 color-f">清洁生产信息化公共服务练习平台</p>
            </div>
        </div>
    </div>
    <!--head-nav start-->
    <div class="nav-box">
        <ul class="head-nav clearfix">
            <li class="nav-card  ">
                <a class="nav-a" href="#" id="title1">清洁生产对标评价</a>
            </li>
            <li class="nav-card ">
                <a class="nav-a" href="#">清洁生产潜力诊断</a>
            </li>
            <li class="nav-card ">
                <a class="nav-a" href="#">清洁生产方案评估</a>
            </li>
        </ul>
    </div>
    <!--head-nav end-->
</div>
<!--head end-->
<script type="text/javascript">
 var title1=  document.querySelector("#title1")
</script>

<div class="central-content clearfix">
    <!--location-->
    <div class="location">
        <img src="img/choose/location.png"/>
        <span class="color-gary">&nbsp;&nbsp;当前位置：</span>
        <span>首页&nbsp;&nbsp;&nbsp;&nbsp;>&nbsp;&nbsp;&nbsp;&nbsp;清洁生产对标评价诊断</span>

        <c:if test="${tag==1}">
            <span style="display: inline-block; float: right">欢迎您:${user.studentName}</span>
        </c:if>
        <c:if test="${tag==2}">
            <span style="display: inline-block; float: right">欢迎您:${user.firmName}</span>
        </c:if>
        <c:if test="${tag==3}">
            <span style="display: inline-block; float: right">欢迎您:${user.username}</span>
            <a href="${pageContext.request.contextPath}/admin/admin_index.jsp" title="后台管理" class="glyphicon glyphicon-compressed" style="position: absolute;left: 1300px ;top: 191px"></a>

        </c:if>

<a href="/Survey/UserServlet?action=logout" title="退出登录" class="glyphicon glyphicon-log-out" style="position: absolute;left: 1330px ;top: 191px"></a>
    </div>



