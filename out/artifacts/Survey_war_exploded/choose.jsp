<%--
  Created by IntelliJ IDEA.
  User: paigubuxianglema
  Date: 2022/1/17
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ include file="head.jsp"%>
<head></head>
<html>
<body onbeforeunload="return myFunction()">
<div class="details-content left">
    <p class="font-20 color-blue font-bold bac-f5 pad-20">清洁生产对标评价</p>
    <form  class="company-search" method="post" action="/epIndexNewsAction!cloud_list.htm?state=1&epColumnId=1">
        <input class="input-title" type="button" value="标题名称或内容关键字:"/>
        <input class="in-text" type="text" name="name" placeholder="标题名称或内容关键字" />
        <input class="company-submit" type="submit" value="搜索"/>
    </form>
    <ul>
        <c:forEach items="${firstTitles}" var="firstTitle">
        <a href="${pageContext.request.contextPath}/list_show.jsp">
            <li class="new-card clearfix">
                <img class="left" src="img/choose/black-san.png"/>
                <p class="one-more new-title left"> ${firstTitle.message}</p>
            </li>
        </a>
        </c:forEach>
    </ul>
</div>
</div>
<!--footer-->
<footer style='position:fixed;bottom:0; width:100%;'>
    <div class="footer" style="height: 32px">
        <div class="footer1">
            <p>
                <a href="/epIndexNewsAction!dealMoClt.htm?op=footer">关于本站</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
                <!-- <a href="#">联系我们</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp; -->
                <a href="/epIndexNewsAction!dealMoClt.htm?op=footer3">地理位置</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="/epIndexNewsAction!dealMoClt.htm?op=footer2">隐私声明</a>
            </p>
        </div>
    </div>
</footer>
</body>
</html>
<script type="text/javascript">
    window.onload=function (){
        var i="${sessionScope.firstTitles}"
        if(i==null||i.length<=0){
            location.href="/Survey/ListServlet?action=ListFirstTitle&eid=1"
            $.post("/Survey/ListServlet",{
                "action":"ListFirstTitle",
                "eid":"1"
            },function (data){},'text')
        }
    }
    function  myFunction(){
        location.href="/Survey/ListServlet?action=ListFirstTitle&eid=1"
}
</script>
</html>
</body>