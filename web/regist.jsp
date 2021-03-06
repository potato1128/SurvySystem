<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="js/framework/bootstrap-3.4.1-dist/css/bootstrap.css" />
    <!-- <link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet"> -->
    <link href="./js/framework/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/css.css">
    <link rel="stylesheet" href="./css/upload.css">
    <link rel="stylesheet" href="./css/style.css">

    <script src="js/framework/jquery.js"></script>
    <script src="js/framework/bootstrap-3.4.1-dist/js/bootstrap.js"></script>
    <script src="./js/myjs.js"></script>
    <!-- <script src="http://cdn.bootcss.com/masonry/4.1.1/masonry.pkgd.min.js"></script> -->
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
                <li><a href="./login.jsp"><span class="glyphicon glyphicon-user"></span>注册</a></li>
                <li><a href="./login.jsp"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-offset-3 col-md-6">
            <form class="form-horizontal">
                <span class="heading">学生注册</span>
                <div class="form-group">
                    <input type="email" class="form-control" id="inputEmail3" placeholder="学号">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group help">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="密 码"
                           onblur="return checkpass();">
                    <td id="passts"
                        style="width: 150px;text-align: left;font-size: 12px;"></td>
                    <i class="fa fa-lock"></i>
                    <a href="#" class="fa fa-question-circle"></a>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3" placeholder="姓名">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" id="inputEmail3" placeholder="班级">
                    <i class="fa fa-user"></i>
                </div>
                <div class="form-group">
                    <!-- <div class="main-checkbox">
                        <input type="checkbox" value="None" id="checkbox1" name="check"/>
                        <label for="checkbox1"></label>
                    </div>
                    <span class="text">Remember me</span> -->
                    <button type="submit" class="btn btn-default">注册</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- 底部 -->
<%--</div>--%>
<%--<div style="border: 1px black; width: 1536px;height: 52px;background-color: black; position: absolute; top: 675px;"></div>--%>
</body>


</html>