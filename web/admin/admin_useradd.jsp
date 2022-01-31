<%--
  Created by IntelliJ IDEA.
  User: paigubuxianglema
  Date: 2021/9/30
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="admin_menu.jsp"%>
<html>
<head>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>
</head>
<body>
    <!--/sidebar-->
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="admin_index.jsp">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="/jscss/admin/design/">用户管理</a><span class="crumb-step">&gt;</span><span>新增用户</span></div>
        </div>
        <div class="result-wrap">
            <div class="result-content">
                <form action="${pageContext.request.contextPath}/AdminServlet?action=addStudent" method="post" id="myform" name="myform">
                 <input type="hidden" name="pageNum" value="${param.pageMaxNum}">
                    <table class="insert-tab" width="100%">
                        <tbody>
                        <tr>
                            <th><i class="require-red">*</i>学号：</th>
                            <td>
                                <input class="common-text required" id="uid" name="stuId" size="50"  type="text">
                            </td>
                        </tr>
                        <tr>
                            <th><i class="require-red">*</i>学生姓名：</th>
                            <td>
                                <input class="common-text required" id="admin_name" name="stuName" size="50" value="" type="text">
                            </td>
                        </tr>
                        <tr>
                            <th><i class="require-red">*</i>登录密码：</th>
                            <td>
                                <input class="common-text required" id="admin_pwd" name="stuPwd" size="50" value="" type="text">
                            </td>
                        </tr>
                        <tr>
                            <th><i class="require-red">*</i>班级：</th>
                            <td>
                                <input class="common-text required" id="admin_rePwd" name="stuClass" size="50" value="" type="text">
                            </td>
                        </tr>
                        <tr>
                            <th>性别：</th>
                            <td>
                                <input name="sex" value="1" type="radio" checked="checked">男
                                <input name="sex" value="0" type="radio">女
                            </td>
                        </tr>

                        <tr>
                            <th></th>
                            <td>
                                <input class="btn btn-primary btn6 mr10" value="提交" type="submit" id="sub">
                                <input class="btn btn6" onClick="history.go(-1)" value="返回" type="button">
                            </td>
                        </tr>
                        </tbody></table>
                </form>
            </div>
        </div>

    </div>
    <!--/main-->
</div>
</body>
<script type="text/javascript">
$("#sub").click(function (){
alert($("#uid").val())


})
</script>
</html>
