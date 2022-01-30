//后台登录界面背景粒子特效
$('body').particleground({
 dotColor: '#E8DFE8',
 lineColor: '#1b3273'
});

$('#loginBtn').click(function () {
 if ($('#username').val().length == 0) {
  layer.msg("用户名不能为空！")
  return;
 }
 if ($('#password').val().length == 0) {
  layer.msg("密码不能为空！")
  return;
 }
 if ($('#code').val().length == 0) {
  layer.msg("验证码不能为空！")
  return;
 }

 //进行后台校验

$.post("/blog/back/user/login",{
 "username":$("#username").val(),
 "password":$("#password").val(),
 "code":$("#code").val()
},function (data) {
 if(data=="codeWrong"){
  layer.msg("验证码错误!")

 }
 if(data=="fail"){
  layer.msg("账号或密码错误!")
 }
 if(data=="success"){
  //登录的特效
  $('.login').addClass('test'); //倾斜特效
  setTimeout(function () {
   $('.login').addClass('testtwo'); //平移特效
  }, 200);
  setTimeout(function () {
   $('.authent').show().animate({right: -320}, {
    easing: 'easeOutQuint',
    duration: 600,
    queue:false
   });
   $('.authent').animate({opacity: 1}, {
    duration: 200,
    queue: false
   }).addClass('visible');
  }, 200);
  //转发到指定视图 超时3秒用来显示登录特效
setTimeout(function () {
 location.href="/blog/workbench/index"
},1000)

 }

},'text')
});
code();
function code(){
$.get("/blog/code",function (data) {
 showCheck(data)
},'json')
}
//canvas绘制图片验证码
function showCheck(code) {
 var c = document.getElementById("myCanvas");
 var ctx = c.getContext("2d");
 ctx.clearRect(0, 0, 1000, 1000);
 ctx.font = "80px 'Hiragino Sans GB'";
 ctx.fillStyle = "#E8DFE8";
 ctx.fillText(code, 0, 100);
}

