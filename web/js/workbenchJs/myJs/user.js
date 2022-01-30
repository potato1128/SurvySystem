//退出系统
function loginOut() {
    layer.alert('确定退出系统吗？', {
        time: 0 //不自动关闭
        ,btn: ['确定', '取消']
        ,yes: function(index){
            layer.close(index);
            location.href = "/blog/user/loginOut";
        }
    });
}

//异步更新用户信息
function updateUser() {
    //判断两次输入的密码是否一致
   if( $("#newPwd").val()!=$("#rePwd").val()){
     layer.msg("两次输入的密码不一致,请重新输入！")
       return;
   }
    //表单序列化 能够把表单的内容拼接成 key=值&key=值...,返回值是字符串
    var form = $('#updateUserForm').serialize();
    $.post("/blog/user/updateUser",form,function (data) {
        if(data=="success") {
            layer.msg("用户信息修改成功,请重新登录！")
            setTimeout(function () {
                //重新登录,跳转到登录页面
                //setTimeout:隔多长时间执行指定代码
                location.href = "/blog/index.jsp";
            }, 1500);
        }

    },"text");
}
