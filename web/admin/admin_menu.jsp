<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="/js/framework/jquery.js"></script>
    <meta charset="UTF-8"/>
    <title>后台管理</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin/main.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin/common.css"/>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="${pageContext.request.contextPath}/admin/admin_index.jsp" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on" href="admin_index.jsp">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/ListServlet?action=ListFirstTitle&eid=1" target="_blank">网站首页</a></li>
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li><a href="#">管理员</a></li>
                <li><a href="#">修改密码</a></li>
                <li><a href="${pageContext.request.contextPath}/UserServlet?action=logout" id="logout">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
    <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a href="${pageContext.request.contextPath}/admin/admin_index.jsp">常用操作</a>
                    <ul class="sub-menu">
                        <li><a href="${pageContext.request.contextPath}/AdminServlet?action=ShowStudentPaging">学生管理</a></li>
                        <li><a href="${pageContext.request.contextPath}/AdminServlet?action=ShowUserPaging">企业管理</a></li>
                        <li><a href="admin_cate.jsp">评测指标管理</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <script type="text/javascript">
      var a=  document.querySelector("#logout")
      a.onclick=function (){
      return  window.confirm("您确定要退出吗?")
      }
    </script>