/**
 * 
 */
$(function() {



	if (user != null) {
		$("input[name=username]").val(user.trim());
	}


	$(".login-form .default-btn").click(function() {
		let username = $("input[name=username]").val();
		let password = $("input[name=password]").val();
		if (username === "") {
			layer.alert('用户名不能为空')
			// layer.msg('用户名不能为空');
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
		console.log(username);
		$(".login-form>form").submit();
	});
});