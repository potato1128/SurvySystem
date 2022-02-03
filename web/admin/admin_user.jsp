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


    <link href="../js/framework/bootstrap-3.4.1-dist/css/bootstrap.css" rel="stylesheet">
    <link href="../js/framework/bootstrap-3.4.1-dist/css/bootstrap-theme.css" rel="stylesheet">
    <link href="../js/framework/bootstrap-3.4.1-dist/js/bootstrap.js" rel="stylesheet">
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>

<div class="main-wrap">
    <div class="crumb-wrap">
        <div class="crumb-list"><a href="${pageContext.request.contextPath}/admin/admin_index.jsp">首页</a><span class="crumb-step">&gt;</span>
            <span class="crumb-name">学生管理</span></div>
    </div>
    <div class="search-wrap">
        <div class="search-content">
            <form action="#" method="post">
                <table class="search-tab">
                    <tr>
                        <th width="120">选择班级:</th>
                        <td>
                            <select name="search-sort" id="allClass" >
                                    <option value="${empty requestScope.studentClass?'全部班级':requestScope.studentClass}">${empty requestScope.studentClass?'全部班级':requestScope.studentClass}</option>
                                <c:if test="${not empty requestScope.studentClass}">
                                    <option value="全部班级" >全部班级</option>
                                </c:if>
                                 <c:forEach items="${sessionScope.classRoom}" var="classroom">
                                   <option value="${classroom}">${classroom}</option>
                                 </c:forEach>
                            </select>
                        </td>
                        <td><input class="btn btn-primary btn2" id="btn1" name="sub" value="查询" type="button"></td>
                        <th width="70">关键字:</th>
                        <td><input class="common-text" placeholder="键入学生学号" name="keywords"   id="text2" type="text">
                        </td>
                        <td><input class="btn btn-primary btn2" id="btn2" name="sub" value="查询" type="button"></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div class="result-wrap">
        <div class="result-title">
            <div class="result-list">
                <a href="${pageContext.request.contextPath}/admin/admin_useradd.jsp?pageMaxNum=${(requestScope.studentPageInfo.total%requestScope.studentPageInfo.pageSize!=0)?requestScope.studentPageInfo.pages:requestScope.studentPageInfo.pages+1 }"  style="margin-left: 15px">新增学生</a>
            </div>
        </div>
        <div class="result-content" style="margin-left: 15px">
            <table class="result-tab" width="100%">
                <tr>
                    <th>编号</th>
                    <th>学生姓名</th>
                    <th>性别</th>
                    <th>学号</th>
                    <th>密码</th>
                    <th>班级</th>
                    <th>成绩</th>
                    <th>操作</th>
                </tr>

                <c:if test="${ requestScope.studentPageInfo.pages==0}">
                    <div style="position: absolute;top: 300px;left: 675px"><strong >暂无数据！</strong></div>
                </c:if>
                <c:if test="${ requestScope.studentPageInfo.pages!=0}">
                    <c:forEach items="${requestScope.studentPageInfo.list}" var="student" varStatus="num">
                        <tr>
                            <td>${student.id}</td>
                            <td>${student.studentName}</td>
                            <td>${student.gender==0?'女':'男'}</td>
                            <td>${student.studentId}</td>
                            <td>${student.password}</td>
                            <td>${student.studentClass}</td>
                            <td><a href="#">查看成绩</a>
                            <td >
                                <div>
                                  <a href="#"  style="float: left ">修改</a>
                                </div>
                                <div>
                                  <a href="${pageContext.request.contextPath}/AdminServlet?action=deleteStudent&id=${student.id}&pageNum=${requestScope.studentPageInfo.pageNum}&pageSize=${requestScope.studentPageInfo.pageSize}&studentClass=${requestScope.studentClass}&size=${requestScope.studentPageInfo.size}" style="margin-left: 5px" class="thedelete"  >删除</a>
                                </div>

                        </td>

                         </tr>
                    </c:forEach>
                </c:if>

            </table>
            <div style="position: absolute;left: 550px ;top: 575px ">
                <div class="list-page">
                    <a href="/Survey/AdminServlet?action=ShowStudentPaging&pageNum=1&pageSize=7&studentClass=${empty requestScope.studentClass?'全部班级':requestScope.studentClass}">首页</a>
                    <a href="#" id="previousPage">上一页</a>
                    <span id="currentPage">
                        ${empty requestScope.currentPage?1:requestScope.currentPage}
                    </span>/${requestScope.studentPageInfo.pages}
                    页
                    <a href="#" id="nextPage">下一页</a>
                    <a href="/Survey/AdminServlet?action=ShowStudentPaging&pageNum=${requestScope.studentPageInfo.pages}&pageSize=7&studentClass=${empty requestScope.studentClass?'全部班级':requestScope.studentClass}">尾页</a>
                    第
                    <input type="text" style="width: 40px" id="selectPage">
                    页

                    <br>
                </div>
            </div>
    <!--/main-->
</div>
    </div>
<script type="text/javascript">

    var nextPage = document.querySelector("#nextPage")
    var currentPage = document.querySelector("#currentPage")
    var previousPage = document.querySelector("#previousPage")
    var selectPage = document.querySelector("#selectPage")
    var allClass = document.querySelector("#allClass")
    var btn1 = document.querySelector("#btn1")
    var btn2 = document.querySelector("#btn2")
    var text2 = document.querySelector("#text2")

    //上一页
    $(".thedelete").click(function (){
        return confirm("确定要删除该学生吗?")
    })
    previousPage.onclick = function () {
        if (Number(currentPage.innerHTML) > 1) {
            currentPage.innerHTML = Number(currentPage.innerHTML) - 1
            location.href = "/Survey/AdminServlet?action=ShowStudentPaging&pageNum=" + currentPage.innerHTML + "&pageSize=7&studentClass="+allClass.value

        } else {
            currentPage.innerHTML = "1"
        }
    }
    //下一页
    nextPage.onclick = function () {
        if (Number(currentPage.innerHTML) <${requestScope.studentPageInfo.pages}) {
            currentPage.innerHTML = Number(currentPage.innerHTML) + 1
            location.href = "/Survey/AdminServlet?action=ShowStudentPaging&pageNum=" + currentPage.innerHTML + "&pageSize=7&studentClass="+allClass.value

        } else {
            currentPage.innerHTML =
            ${requestScope.studentPageInfo.pages}
        }
    }
    //选择页数
    selectPage.onblur = function () {
        var val = selectPage.value
        if (val < 1 || val >${requestScope.studentPageInfo.pages}) {
            alert("页数超出范围！")
        } else {
            location.href = "/Survey/AdminServlet?action=ShowStudentPaging&pageNum=" + val + "&pageSize=7&studentClass="+allClass.value

        }
    }
    btn1.onclick=function (){
        location.href = "/Survey/AdminServlet?action=ShowStudentPaging&pageNum=1&pageSize=7&studentClass="+allClass.value

    }
    btn2.onclick=function (){
        location.href = "/Survey/AdminServlet?action=ShowStudentPaging&studentId="+text2.value+"&pageNum=1&pageSize=7&studentClass="+allClass.value

    }

</script>
    </body>
    </html>