/**
 *
 */
$(function() {
    if (user != null) {
        $("input[name=username]").val(user.trim());
    }
    $(".register-form .default-btn").click(function() {
        let username = $("input[name=username]").val();
        let password = $("input[name=password]").val();
        let repeatPassword = $("input[name=repeatPassword]").val();
        if (username === "") {
            layer.msg('用户名不能为空');
            return;
        }
        if (username.indexOf(" ") != -1) {
            layer.msg('用户名不能有空格');
            return;
        }
        if (username.length < 6) {
            layer.msg('用户名长度至少3位');
            return;
        }
        if (username.length > 20) {
            layer.msg('用户名长度至多20位');
            return;
        }
        if (password === "") {
            layer.msg('密码不能为空');
            return;
        } if (password.indexOf(" ") != -1) {
            layer.msg('密码不能有空格');
            return;
        }
        if (password.length < 6) {
            layer.msg('密码长度至少3位');
            return;
        }
        if (password.length > 20) {
            layer.msg('密码长度至多20位');
            return;
        }
        if (password != repeatPassword) {
            layer.msg('两次输入密码不一致');
            return;
        }
        let url = ctx + "/register";
        $.ajax({
            url: url,
            method: "post",
            dataType: "json",//没有方法的js对象
            data: {
                username:username,
                password:password
            },
            success: function(resp) {//回调函数
                if (resp.success) {
                    layer.msg(resp.prompt, { icon: 1 });
                    setTimeout (function(){
                        location.href = ctx + "index";
                    },"2000");
                } else {
                    layer.msg(resp.prompt, { icon: 1 });
                }
            },
            error: function(resp) {
                layer.msg("出错", { icon: 1 });
            },
            traditional: true
        });

    });
});