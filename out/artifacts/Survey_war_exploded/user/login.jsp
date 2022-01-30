<%@page contentType="text/html;charset=utf-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
<%--    <link rel="shortcut icon" href="" type="image/x-icon">--%>
    <link rel="stylesheet" href="../js/framework/bootstrap-3.4.1-dist/css/bootstrap.css" />
    <link href="../js/framework/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../css/css.css">
    <link rel="stylesheet" href="../css/upload.css">
    <link rel="stylesheet" href="../css/style.css">

    <script src="../js/framework/jquery.js"></script>
    <script src="../js/framework/bootstrap-3.4.1-dist/js/bootstrap.js"></script>
    <script src="../js/myjs.js"></script>
    <script src="../js/framework/layer-3.5.1/layer.js"></script>
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
            <i class="fa fa-codepen fa-1x"> H5</i></a>
        <div class="collapse navbar-collapse navbar-responsive-collapse">
            <ul class="nav navbar-nav">
                <li><a href="index.html"> 首页</a> </li>
                <li><a href="./main.html"> 课程大纲</a></li>
                <li><a href="./bao.html"> 优惠信息</a></li>
            </ul>
            <form action="#" class="navbar-form navbar-left">
                <input type="text" placeholder="搜索感兴趣的课程" class="form-control">
                <button type="submit">
                    <span class="glyphicon glyphicon-search"></span>
                </button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="regist.jsp"><span class="glyphicon glyphicon-user"></span>注册</a></li>
                <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form action="${pageContext.request.contextPath}/UserServlet" method="post" class="form-horizontal" >
                 <input type="hidden" name="action" id="status1" value="stulogin">

                <span class="heading">用户登录</span>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3" placeholder="学号" name="email">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="密　码" name="password">
                    <i class="fa fa-lock"></i>
                    <a href="#" class="fa fa-question-circle"></a>
                </div>
                <div class="form-group">
                      <!-- 学生按钮 -->
                    <div class="main-checkbox">
                        <input type="checkbox" value="0" id="check1" name="check" checked='true'/>
                        <label for="check1"></label>
                    </div>
                    <span class="text">学生</span>
                    <button type="submit" id="sub" class="btn btn-default">登录</button>
                        <!-- 企业按钮 -->
                    <div class="main-checkbox">
                        <input type="checkbox" value="1" id="check2" name="check"/>
                        <label for="check2"></label>
                    </div>
                    <span class="text">企业</span>
                  <!-- 企业按钮 -->
                  <div class="main-checkbox">
                    <input type="checkbox" value="2" id="check3" name="check"/>
                    <label for="check3"></label>
                </div>
                <span class="text">管理员</span>
             </div>       

                    
                <script>
                var check1= document.querySelector("#check1")
                var check2= document.querySelector("#check2")
                var check3= document.querySelector("#check3")
                var inputEmail3=document.querySelector("#inputEmail3")
                var inputPassword3=document.querySelector("#inputPassword3")
                var status1=document.querySelector("#status1")

                var sub=document.querySelector("#sub")
                //当选择一个选项时,排除其他选项
               
                   check1.onclick=function(){
                     check2.checked=false
                     check3.checked=false
                     inputEmail3.placeholder="学号"
                       status1.value="stulogin"

                   }
                   check2.onclick=function(){
                     check1.checked=false
                     check3.checked=false
                     inputEmail3.placeholder="企业账户"
                       status1.value="sublogin"

                   }
                   check3.onclick=function(){
                     check1.checked=false
                     check2.checked=false
                     inputEmail3.placeholder="管理员账户"
                       status1.value="admlogin"

                   }
                   sub.onclick=function(){
                    if(inputEmail3.value==null||inputEmail3.value==""){
                        layer.msg('用户名不能为空', {icon: 6});
                        return false;
                       }
                       if(inputPassword3.value==null||inputPassword3.value==""){
                        layer.msg('密码不能为空', {icon: 6});
                        return false;
                       }
                       if(inputEmail3.value.length>16){
                        layer.msg('用户名超出限制', {icon: 6});
                        return false;
                       }
                       if(inputEmail3.value.length<8){
                        layer.msg('用户名过短', {icon: 6});
                        return false;
                       }

                   }
                  
            
                        
                   
                   
                </script>
            </form>
        </div>
    </div>
    <!-- 底部 -->
</div>
<div style="border: 1px black; width: 1536px;height: 52px;background-color: black; position: absolute; top: 675px;"></div>
</body>
</html>