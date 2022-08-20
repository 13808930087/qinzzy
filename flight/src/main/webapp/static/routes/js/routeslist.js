$(function() {
	$(".clearfix select").val(pageSize);
	$(".btn-container .select").click(function() {
		$("#routes-form ").submit();
	});
	$(".body thead input[name=interest]").click(function() {
		let checked = $(this).prop("checked");
		$(".body tbody input[name=interest]").prop("checked", checked);
	});
	$(".body tbody tr").on("click", "td:not(:first-child)", function() {
		let $td = $(this);
		let $ckx = $td.parent().children("td:first-child").children(":checkbox");

		$ckx.prop("checked", !$ckx.prop("checked"));
	});
	$("#routes-form :input[name=pageNum]").val(pageNum);
	$("#routes-form :input[name=pageSize]").val(pageSize);
	$(".btn-container .del").click(function() {
		let $checked = $(".body tbody tr>td:first-child>:checked ");
		let ids = [];

		$checked.each(function(idx, item) {

			let $td = $(item).closest("tr").children("td:nth-child(2)");
			ids.push($td.text());

		});
		if (ids.length < 1) {
			layer.msg("请选择要删除的数据", { icon: 1 });
			retuen;
		}


		layer.open({
			title: '您正在删除数据，是否继续删除？',

			btn: ['确认', '取消'],
			yes: function(index) {
				let url = ctx + "/routes/delete";
				$.ajax({
					url: url,
					method: "post",
					dataType: "json",//没有方法的js对象
					data: {
						ids: ids
					},
					success: function(resp) {//回调函数
						if (resp.success) {
							layer.msg(resp.rows);
							setTimeout(function(){
								location.reload();
							}, 1500)
						}else {
							layer.msg(resp.rows);
						}
					},
					error: function(resp) {
					},

					traditional: true
				});
				layer.close(index);
			},
			no: function(index) {
				layer.close(index);

			}
		});



	});
	$(".btn-container .reset").click(function() {
		$("#routes-form input").val(null);
	});
	$(".btn-container .add").click(function() {
		layer.open({
			title: '输入要添加的信息',
			type: 1,
			icon: 3,
			skin: 'layui-layer-molv',
			area: ['400px', '520px'],
			content: '<div class="add-div">' +
				'<div>航线编号:        <input type="text" class="layui-input" name="test1" id="test1" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
				'<div>出发城市:        <input type="text" class="layui-input" name="test2" id="test2" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
				'<div>到达城市:        <input type="text" class="layui-input" name="test3" id="test3" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
				'<div>出发时间:        <input type="text" class="layui-input" readOnly name="test4" id="test4" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
				'<div>到达时间:        <input type="text" class="layui-input" readOnly name="test5" id="test5" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
				'<div>客机编号:        <input type="text" class="layui-input" name="test6" id="test6" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
				'<div>经济舱价格:       <input type="text" class="layui-input" name="test7" id="test7" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
				'<div>商务舱价格:       <input type="text" class="layui-input" name="test8" id="test8" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
				'<div>头等舱价格:       <input type="text" class="layui-input" name="test9" id="test9" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
				'</div>',

			btn: ['yes', 'no'],
			yes: function(index, layero) {
				layer.close(index); //关闭弹出框
				let routesId = $('#test1').val();
				let departCity = $('#test2').val();
				let arrivalCity = $('#test3').val();
				let departDate = $('#test4').val();
				let arrivalDate = $('#test5').val();
				let planeId = $('#test6').val();
				let commonPrice = $('#test7').val();
				let commerialPrice = $('#test8').val();
				let firstPrice = $('#test9').val();
				if (routesId != null && routesId.trim().length > 0) {
					let url = ctx + "/routes/add";
					$.ajax({
						url: url,
						method: "post",
						dataType: "json",//没有方法的js对象
						data: {
							routesId: routesId,
							departCity: departCity,
							arrivalCity: arrivalCity,
							departDate: departDate,
							arrivalDate: arrivalDate,
							planeId: planeId,
							commonPrice: commonPrice,
							commerialPrice: commerialPrice,
							firstPrice: firstPrice
						},
						success: function(resp) {//回调函数
							if (resp.success) {
								layer.msg(resp.rows);
								setTimeout(function(){
									location.reload();
								}, 1500)

							} else {
								layer.msg(resp.rows);
							}
						},
						error: function(resp) {
						},

						traditional: true
					});
				} else {

					layer.msg("id不可为空");

				}

			},
			no: function(index) {
				layer.close(index);
			},

			success: function(layero, index) {
				laydate.render({
					elem: "#test4",
					type:'datetime',
					area: ['400px', '270px'],
				});
				laydate.render({
					elem: "#test5",
					type:'datetime',
					area: ['400px', '270px'],
				});
			},

		});


	});
	$(".btn-container .modify").click(function() {
		let $checked = $(".body tbody tr>td:first-child>:checked ");
		let ids = [];

		$checked.each(function(idx, item) {
			let $td = $(item).closest("tr").children("td:nth-child(2)");
			ids.push($td.text());
		});
		if (ids.length < 1) {
			layer.msg("请选择要选择的数据", { icon: 1 });
			return;
		}
		let routesId=ids[0];

			let url = ctx + "/routes/getId";
			$.ajax({
				url: url,
				method: "post",
				dataType: "json",//没有方法的js对象
				data: {
					routesId: routesId
				},
				success: function(resp) {//回调函数
					if (resp.success) {
						let routesId = resp.routesId;
						let departCity = resp.departCity;
						let arrivalCity = resp.arrivalCity;
						let departDate = resp.departDate;
						let arrivalDate = resp.arrivalDate;
						let planeId = resp.planeId;
						let commonPrice = resp.commonPrice;
						let commerialPrice = resp.commerialPrice;
						let firstPrice = resp.firstPrice;
						layer.open({
							title: '输入要修改的信息',
							type: 1,
							icon: 3,
							//skin: 'layui-layer-rim',
							skin: 'layui-layer-molv',
							area: ['400px', '520px'],
							content: '<div class="add-div">' +
								'<div>出发城市:        <input type="text" class="layui-input" name="test2" id="test2" value="' + departCity + '" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
								'<div>到达城市:        <input type="text" class="layui-input" name="test3" id="test3" value="' + arrivalCity + '" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
								'<div>出发时间:        <input type="text" class="layui-input" readOnly name="test4" value="' + departDate + '" id="test4" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
								'<div>到达时间:        <input type="text" class="layui-input" readOnly name="test5" value="' + arrivalDate + '" id="test5" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
								'<div>客机编号:        <input type="text" class="layui-input" name="test6" id="test6" value="' + planeId + '" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
								'<div>经济舱价格:       <input type="text" class="layui-input" name="test7" id="test7" value="' + commonPrice + '" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
								'<div>商务舱价格:       <input type="text" class="layui-input" name="test8" id="test8" value="' + commerialPrice + '" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
								'<div>头等舱价格:       <input type="text" class="layui-input" name="test9" id="test9" value="' + firstPrice + '" style="width: 200px;height: 32px;font-size: 18px;text-align: center;" ></div>' +
								'</div>',
							btn: ['确认', '取消'],
							yes: function(index, layero) {
								layer.close(index); //关闭弹出框
								let departCity = $('#test2').val();
								let arrivalCity = $('#test3').val();
								let departDate = $('#test4').val();
								let arrivalDate = $('#test5').val();
								let planeId = $('#test6').val();
								let commonPrice = $('#test7').val();
								let commerialPrice = $('#test8').val();
								let firstPrice = $('#test9').val();


								let url = ctx + "/routes/modify";
								$.ajax({
									url: url,
									method: "post",
									dataType: "json",//没有方法的js对象
									data: {
										routesId: routesId,
										departCity: departCity,
										arrivalCity: arrivalCity,
										departDate: departDate,
										arrivalDate: arrivalDate,
										planeId: planeId,
										commonPrice: commonPrice,
										commerialPrice: commerialPrice,
										firstPrice: firstPrice
									},
									success: function(resp) {//回调函数
										if (resp.success) {
											layer.msg(resp.rows);
											setTimeout(function(){
												location.reload();
											}, 1500)
										}else {
											layer.msg(resp.rows);
										}

									},
									error: function(resp) {
									},

									traditional: true
								});

							},
							no: function(index) {
								layer.close(index);
							},

							success: function(layero, index) {
								laydate.render({
									elem: "#test4",
									type:'datetime',
									area: ['400px', '270px'],
								});
								laydate.render({
									elem: "#test5",
									type:'datetime',
									area: ['400px', '270px'],
								});
							},

						});

					} else {
						layer.msg("找不到id");
					}
				},
				error: function(resp) {

				},
				traditional: true
			});
	});

	//时间选择器
	laydate.render({
		elem:'#arrivalDate',
		type:'datetime'
		,range: true
	});
	laydate.render({
		elem:'#departDate',
		type:'datetime'
		,range: true
	});

	$(".tiao button").click(function() {

		let p = parseInt($(".tiao input").val());

		if (p < 1) {

			layer.msg('找不到此页', { icon: 1 });
			return;

		} else if (p > parseInt(pages)) {

			layer.msg('找不到此页', { icon: 1 });
			return;
		} else if (p >= 1 && p <= parseInt(pages)) {

			$("#routes-form :input[name=pageNum]").val(p);
			$("#routes-form").submit();
		}
	});
	$(".clearfix select").change(function() {

		let d = $(this).val();
		$("#routes-form :input[name=pageNum]").val(1);
		$("#routes-form :input[name=pageSize]").val(d);
		$("#routes-form").submit();

	});
	$(".clearfix a").click(function() {
		//让页面大小选中正确的值
		if ($(this).is(".first")) {
			if (pageNum === 1) {
				return;
			}
			$("#routes-form :input[name=pageNum]").val(1);
			$("#routes-form").submit();

		} else if ($(this).is(".last")) {
			if (pageNum === pages) {
				return;
			}
			$("#routes-form :input[name=pageNum]").val(pages);
			$("#routes-form").submit();
		} else if ($(this).is(".prev")) {
			let p = pageNum - 1;
			if (p < 1) {
				return;
			}
			$("#routes-form :input[name=pageNum]").val(p);
			$("#routes-form").submit();
		} else if ($(this).is(".next")) {
			let p = pageNum + 1;
			if (p > pages) {
				return;
			}
			$("#routes-form :input[name=pageNum]").val(p);
			$("#routes-form").submit();
		} else if ($(this).parent().is("li")) {//页码
			let p = parseInt($(this).text());
			if (p != parseInt(pageNum)) {

				$("#routes-form :input[name=pageNum]").val(p);
				$("#routes-form").submit();
			}

		}
	});
});