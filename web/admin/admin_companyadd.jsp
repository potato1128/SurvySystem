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

<div class="main-wrap">
    <div class="crumb-wrap">
        <div class="crumb-list"><a href="admin_index.jsp">首页</a><span class="crumb-step">&gt;</span><a class="crumb-name" href="/jscss/admin/design/">企业管理</a><span class="crumb-step">&gt;</span><span>新增企业用户</span></div>
    </div>
    <div class="result-wrap">
        <div class="result-content">
            <form action="${pageContext.request.contextPath}/AdminServlet?action=addUser" method="post" id="myform" name="myform">
                <input type="hidden" name="pageNum" value="${param.lastPageNum}">
                <table class="insert-tab" width="100%">
                    <tbody>
                    <tr>
                        <th><i class="require-red">*</i>公司名：</th>
                        <td>
                            <input class="common-text required" id="uid" name="firmName" size="50" value="${requestScope.user.firmName}"  type="text">
                        </td>
                    </tr>
                    <tr>
                        <th><i class="require-red">*</i>用户名：</th>
                        <td>
                            <input class="common-text required" id="admin_name" name="username" size="50" value="${requestScope.user.username}" type="text">
                        </td>
                    </tr>
                    <tr>
                        <th><i class="require-red">*</i>密码：</th>
                        <td>
                            <input class="common-text required" id="admin_pwd" name="userPwd" size="50" value="${requestScope.user.password}" type="text">
                        </td>
                    </tr>



                    <tr>
                        <th></th>
                        <td>
                            <input class="btn btn-primary btn6 mr10" value="添加" type="submit" id="sub">
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
        if($("#uid").val()==""){
            alert("学号不能为空！")
            return false;
        }
        if($("#admin_name").val()==""){
            alert("学生姓名不能为空！")
            return false;
        }
        if($("#admin_pwd").val()==""){
            alert("登录密码不能为空！")
            return false;
        }
        if($("#admin_class").val()==""){
            alert("班级信息不能为空！")
            return false;
        }

    })
</script>
</html>
