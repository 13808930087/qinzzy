/**
 * 
 */
$(function() {
	let referrer;
	if (document.referrer == ""||document.referrer == null) {
		// 没有来源页面信息的时候，改成首页URL地址
		referrer="index";
	}else {
		referrer=  document.referrer;
	}
	console.log(referrer);
	if (user != null) {
		$("input[name=username]").val(user.trim());
	}
	$("#identify-img").on('click',function (){
		// 点击验证码那个图片的时候，我们输入的验证码那个框就会清空
		$('#identify-input').val('')
		//而且我们点击验证码的时候，希望它可以改变验证码内容，其实是通过发送新请求来改变验证码内容
		$('#identify-img').attr('src','/identifyImage?'+Math.random())
	})
	function login(){
		$("#login").css("display","block");
		$("#register").css("display","none");
		$(".page-title-content .active").text("登录");
	}
	function register(){
		$("#login").css("display","none");
		$("#register").css("display","block");
		$(".page-title-content .active").text("注册");
	}
	login();
	if(sign!=null&&sign==="0"){
		register();
	}
	$(".register-form #registerTurning").click(function (){
		login();
	});

	$(".login-form #loginTurning").click(function (){
		register();
	});
	$(".login-form .default-btn").click(function() {
		let username = $(".login-form input[name=username]").val();
		let password = $(".login-form input[name=password]").val();
		let identifyCode = $(".login-form input[name=identifyCode]").val();
		if (username === "") {
			layer.msg('用户名不能为空');
			return;
		}
		if (username.indexOf(" ") != -1) {
			layer.msg('用户名不能有空格');
			return;
		}
		if (username.length < 6) {
			layer.msg('用户名长度至少6位');
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
			layer.msg('密码长度至少6位');
			return;
		}
		if (password.length > 20) {
			layer.msg('密码长度至多20位');
			return;
		}
		if (identifyCode === "") {
			layer.msg('验证码不能为空');
			return;
		}
		if (identifyCode.indexOf(" ") != -1) {
			layer.msg('验证码不能有空格');
			return;
		}
		url="login";
		$.ajax({
			url: url,
			method: "post",
			dataType: "json",//没有方法的js对象
			data: {
				identifyCode: identifyCode,
				password:password,
				username:username
			},
			success: function(resp) {//回调函数
				if (resp.success) {
					layer.msg(resp.loginPrompt, { icon: 1 });
					setTimeout(function() { location.href =referrer }, 500);

				} else {
					layer.msg(resp.loginPrompt, { icon: 1 });
					$('#identify-input').val('')
					//而且我们点击验证码的时候，希望它可以改变验证码内容，其实是通过发送新请求来改变验证码内容
					$('#identify-img').attr('src','/identifyImage?'+Math.random())
				}
			},
			error: function(resp) {
			},
			traditional: true
		});
	});
	$(".register-form .default-btn").click(function() {
		let username = $(".register-form input[name=username]").val();
		let password = $(".register-form input[name=password]").val();
		let nickname = $(".register-form input[name=nickname]").val();
		if(nickname==null||nickname === ""){
			nickname=username;
			console.log(nickname);
		}

		let repeatPassword = $(".register-form input[name=repeatPassword]").val();
		if (username === "") {
			layer.msg('用户名不能为空');
			return;
		}
		if (username.indexOf(" ") != -1) {
			layer.msg('用户名不能有空格');
			return;
		}
		if (username.length < 6) {
			layer.msg('用户名长度至少6位');
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
			layer.msg('密码长度至少6位');
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
				nickname:nickname,
				username:username,
				password:password
			},
			success: function(resp) {//回调函数
				if (resp.success) {
					layer.msg(resp.registerPrompt, { icon: 1 });
					setTimeout (function(){
						login();
						$(".login-form input[name=username]").val($(".register-form input[name=username]").val());
					},"2000");
				} else {
					layer.msg(resp.registerPrompt, { icon: 1 });
				}
			},
			error: function(resp) {
				layer.msg("出错", { icon: 1 });
			},
			traditional: true
		});

	});



});