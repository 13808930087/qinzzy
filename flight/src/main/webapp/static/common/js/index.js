

$(function() {
	//注销

	if (username != null) {
		console.log(username);
		$(".header-welcome").append(username + ",欢迎您");
	}


	$(".logout-btn").click(function() {
		console.log(1);
		layer.confirm('您确定要注销吗', {
			btn: ['确认', '取消'] //按钮
		}, function() {
			location.href = ctx + "logout";
			layer.msg('再见', { icon: 1 });
		}, function() {
			layer.msg('取消注销', { icon: 1 });
		});
	});







	//左侧导航点击事件
	$(".nav>.nav-item").click(function() {
		let url = $(this).data("url");
		$(".body>iframe").attr("src", ctx + url);
		console.log(ctx + url);
	});
});
