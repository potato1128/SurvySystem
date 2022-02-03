<%--
  Created by IntelliJ IDEA.
  User: paigubuxianglema
  Date: 2021/9/30
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="admin_menu.jsp" %>
<link href="../js/framework/bootstrap-3.4.1-dist/css/bootstrap.css">
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>

<!--/sidebar-->
<div class="main-wrap">
    <div class="crumb-wrap">
        <div class="crumb-list"><a href="${pageContext.request.contextPath}/admin/admin_index.jsp">首页</a><span
                class="crumb-step">&gt;</span><span class="crumb-name">企业管理</span></div>
    </div>
    <div class="search-wrap">
        <div class="search-content">
            <form action="#" method="post">
                <table class="search-tab">
                    <tr>


                        <th width="70">关键字:</th>
                        <td><input class="common-text" placeholder="关键字" name="keywords" value="" id="" type="text">
                        </td>
                        <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div class="result-wrap">
        <form name="myform" id="myform" method="post">
            <div class="result-title">
                <div class="result-list">
                    <a href="/Test01Project/backstage/admin_useradd.jsp">新增用户</a>
                </div>
            </div>
            <div class="result-content" style="margin-left: 15px">
                <table class="result-tab" width="100%">
                    <th>序号</th>
                    <th>公司名</th>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>操作</th>
                    <c:forEach items="${requestScope.userPageInfo.list}" var="user">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.firmName}</td>
                            <td>${user.username}</td>
                            <td>${user.password}</td>
                            <td>
                                <div>
                                    <a href="#" style="float: left ">修改</a>
                                </div>
                                <div>
                                    <a href="${pageContext.request.contextPath}/AdminServlet?action=deleteStudent&id=${student.id}&pageNum=${requestScope.studentPageInfo.pageNum}&pageSize=${requestScope.studentPageInfo.pageSize}&studentClass=${requestScope.studentClass}&size=${requestScope.studentPageInfo.size}"
                                       style="margin-left: 5px" class="thedelete">删除</a>
                                </div>
                            </td>

                        </tr>
                    </c:forEach>
                </table>
                <div style="position: absolute;left: 550px ;top: 575px ">
                    <div class="list-page">
                        <a href="/Survey/AdminServlet?action=ShowUserPaging&pageNum=1&pageSize=7">首页</a>
                        <a href="#" id="previousPage">上一页</a>
                        <span id="currentPage">${empty requestScope.currentPage1?1:requestScope.currentPage1}</span>/${requestScope.userPageInfo.pages}
                        页
                        <a href="#" id="nextPage">下一页</a>
                        <a href="/Survey/AdminServlet?action=ShowUserPaging&pageNum=${requestScope.userPageInfo.pages}&pageSize=7">尾页</a>
                        第
                        <input type="text" style="width: 40px" id="selectPage">
                        页

                        <br>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!--/main-->
</div>

<script type="text/javascript">

    var nextPage = document.querySelector("#nextPage")
    var currentPage = document.querySelector("#currentPage")
    var previousPage = document.querySelector("#previousPage")
    var selectPage = document.querySelector("#selectPage")
    //上一页
    previousPage.onclick = function () {
        if (Number(currentPage.innerHTML) > 1) {
            currentPage.innerHTML = Number(currentPage.innerHTML) - 1
            location.href = "/Survey/AdminServlet?action=ShowUserPaging&pageNum=" + currentPage.innerHTML + "&pageSize=7"
        } else {
            currentPage.innerHTML = "1"
        }
    }
    //下一页
    nextPage.onclick = function () {
        if (Number(currentPage.innerHTML) <${requestScope.userPageInfo.pages}) {
            currentPage.innerHTML = Number(currentPage.innerHTML) + 1
            location.href = "/Survey/AdminServlet?action=ShowUserPaging&pageNum=" + currentPage.innerHTML + "&pageSize=7"
        } else {
            currentPage.innerHTML =
            ${requestScope.userPageInfo.pages}
        }

    }
    //选择页数
    selectPage.onblur = function () {
        var val = selectPage.value
        if (val < 1 || val >${requestScope.userPageInfo.pages}) {
            alert("页数超出范围！")
        } else {
            location.href = "/Survey/AdminServlet?action=ShowUserPaging&pageNum=" + val + "&pageSize=7"

        }
    }

</script>
</body>
</html>