
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html >
<head>
    <title>登录</title>
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./js/framework/bootstrap-3.4.1-dist/css/bootstrap.css" />
    <link href="./js/framework/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/css.css">
    <link rel="stylesheet" href="./css/upload.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet"/>

    <script src="js/framework/jquery.js"></script>
    <script src="js/framework/bootstrap-3.4.1-dist/js/bootstrap.js"></script>
    <script src="./js/myjs.js"></script>
    <script src="./js/framework/layer-3.5.1/layer.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle btn btn-primary" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="fa fa-bars fa-1x"></span>
            </button>
        </div>
        <a class="navbar-brand navbar-collapse collapse" href="index.html">
            <i class="fa fa-codepen fa-1x " > H5</i></a>
        <div class="collapse navbar-collapse navbar-responsive-collapse">
            <ul class="nav navbar-nav">
                <li><a href="#"  id="title">清洁生产信息化公共服务练习平台</a> </li>--%>

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="regist.jsp"><span class="glyphicon glyphicon-user"></span>注册</a></li>
                <li><a href="./login.jsp"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal" action="/Survey/UserServlet" method="post" >
                <%--  通过隐藏域传参--%>
                <input type="hidden" name="action" value="stuLogin" id="action">
                <span class="heading">用户登录</span>
                    <span ><a><em>${sessionScope.msg}</em></a></span>
                <div class="form-group">
                    <input type="text" class="form-control" value="${sessionScope.uname}" name="username" id="inputEmail3" placeholder="学号">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" name="password" id="inputPassword3" placeholder="密　码">
                    <i class="fa fa-lock"></i>
                    <a href="#" class="fa fa-question-circle"></a>
                </div>
                <div class="form-group">
                      <!-- 学生按钮 -->
                    <div class="main-checkbox">
                        <input type="checkbox" value="1"  id="check1" name="check" checked='true'/>
                        <label for="check1"></label>
                    </div>
                    <span class="text">学生</span>
                    <button type="submit" id="sub" value="None" class="btn btn-default">登录</button>
                        <!-- 企业按钮 -->
                    <div class="main-checkbox">
                        <input type="checkbox" value="2"  id="check2" name="check" />
                        <label for="check2"></label>
                    </div>
                    <span class="text">企业</span>
                  <!-- 企业按钮 -->
                  <div class="main-checkbox">
                    <input type="checkbox" value="3" id="check3" name="check"/>
                    <label for="check3"></label>
                </div>
                <span class="text">管理员</span>

             </div>       
                </div>

                <script>
                var check1= document.querySelector("#check1")
                var check2= document.querySelector("#check2")
                var check3= document.querySelector("#check3")
                var inputEmail3=document.querySelector("#inputEmail3")
                var inputPassword3=document.querySelector("#inputPassword3")
                var action=document.querySelector("#action")

                var sub=document.querySelector("#sub")
                //当选择一个选项时,排除其他选项

                 if("${sessionScope.check}"=="1"){
                     check1.checked=true
                     check2.checked=false
                     check3.checked=false
                     action.value="stuLogin"
                 }
                if("${sessionScope.check}"=="2"){
                    check2.checked=true
                    check1.checked=false
                    check3.checked=false
                    action.value="userLogin"
                }
                if("${sessionScope.check}"=="3"){
                    check3.checked=true
                    check1.checked=false
                    check2.checked=false
                    action.value="adminLogin"

                }
                   check1.onclick=function(){
                     check2.checked=false
                     check3.checked=false
                     inputEmail3.placeholder="学号"
                       action.value="stuLogin"

                   }
                   check2.onclick=function(){
                     check1.checked=false
                     check3.checked=false
                     inputEmail3.placeholder="企业账户"
                       action.value="userLogin"

                   }
                   check3.onclick=function(){
                     check1.checked=false
                     check2.checked=false
                     inputEmail3.placeholder="管理员账户"
                       action.value="adminLogin"

                   }
                   sub.onclick=function(){
                    if(inputEmail3.value==null||inputEmail3.value==""){
                        layer.msg('用户名不能为空', {icon: 8});
                        return false;
                       }
                       if(inputPassword3.value==null||inputPassword3.value==""){
                        layer.msg('密码不能为空', {icon: 2});
                        return false;
                       }
                       if(inputEmail3.value.length>16){
                        layer.msg('用户名超出限制', {icon: 4});
                        return false;
                       }


                   }

                   
                </script>
            </form>
        </div>
    </div>
    <!-- 底部 -->
</div>
</footer>
</body>
</html>