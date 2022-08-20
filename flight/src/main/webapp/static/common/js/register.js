/**
 * 
 */$(function() {
	 $(".register").click(function() {
		 let user = $("input[name=user]").val();
		 let password01 = $("input[name=password01]").val();
		 let password02 = $("input[name=password02]").val();
		 if (user === "") {
			 layer.msg('用户名不能为空');
			 return;
		 }
		 if (user.indexOf(" ") != -1) {
			 layer.msg('用户名不能有空格');
			 return;
		 }
		 if (user.length < 3) {
			 layer.msg('用户名长度至少3位');
			 return;
		 }
		 if (user.length > 20) {
			 layer.msg('用户名长度至多20位');
			 return;
		 }
		 if (password01 === "") {
			 layer.msg('密码不能为空');
			 return;
		 } if (password01.indexOf(" ") != -1) {
			 layer.msg('密码不能有空格');
			 return;
		 }
		 if (password01.length < 3) {
			 layer.msg('密码长度至少3位');
			 return;
		 }
		 if (password01.length > 20) {
			 layer.msg('密码长度至多20位');
			 return;
		 }
		 if (password02 === "") {
			 layer.msg('密码不能为空');
			 return;
		 } if (password02.indexOf(" ") != -1) {
			 layer.msg('密码不能有空格');
			 return;
		 }
		 if (password02.length < 3) {
			 layer.msg('密码长度至少3位');
			 return;
		 }
		 if (password02.length > 20) {
			 layer.msg('密码长度至多20位');
			 return;
		 }
		 if (password01 != password02) {
			 layer.msg('两次输入密码不一致');
			 return;
		 }
		 let url = ctx + "/register/json";

		 $.ajax({
			 url: url,
			 method: "post",
			 dataType: "json",//没有方法的js对象
			 data: {
				 user: user
			 },
			 success: function(resp) {//回调函数
				 if (resp.success) {
					 $(".header-form").submit();
				 } else {
					 layer.msg("账号已存在", { icon: 1 });
				 }
			 },
			 error: function(resp) {
				layer.msg("出错", { icon: 1 });
			 },
			 traditional: true
		 });

	 });




 });