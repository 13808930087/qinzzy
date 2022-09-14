// Input Plus & Minus Number JS
$(function () {


    $(".cart-thead input[name=checkbox]").click(function () {
        let checked = $(this).prop("checked");
        $(".cart-tbody input[name=checkbox]").prop("checked", checked);
    });

    checkbox = $("#table").find('input[name=checkbox]');

    function totalPayable() {
        var newVal = 0;
        for (let i = 1; i < checkbox.length; i++) {
            if ($(checkbox.get(i)).prop("checked")) {

                newVal = parseFloat(newVal) + parseFloat($(checkbox.get(i)).closest("tr").find(".subtotal-amount").text());
            }
        }
        $("#subtotal").text('$' + newVal.toFixed(2));
        $("#totalPayable").text('$' + newVal.toFixed(2));
    }

    checkbox.click(function () {
        totalPayable();
    });

    $(".default-btn").click(function () {
        let orderItems = [];
        let goodsId;
        let goodsImg;
        let goodsName;
        let goodsPrice;
        let goodsNum;
        let goodsTotal;
        for (let i = 1; i < checkbox.length; i++) {
            if ($(checkbox.get(i)).prop("checked")) {
                goodsId=($(checkbox.get(i)).closest("tr").find("input[name=goodsId]").val());
                goodsImg=($(checkbox.get(i)).closest("tr").find(".product-thumbnail img").data('img'));
                goodsName=($(checkbox.get(i)).closest("tr").find(".product-name a").text());
                goodsPrice=($(checkbox.get(i)).closest("tr").find(".product-price .unit-amount").text());
                goodsNum=($(checkbox.get(i)).closest("tr").find("input[name=goodsNum]").val());
                goodsTotal=($(checkbox.get(i)).closest("tr").find(".product-subtotal .subtotal-amount").text());
                orderItems.push({
                    goodsId:goodsId,
                    goodsImg: goodsImg,
                    goodsName: goodsName,
                    goodsPrice: goodsPrice,
                    goodsNum: goodsNum,
                    goodsTotal: goodsTotal,
                })
            }
        }


        url = ctx + "order/saveOrder"
        $.ajax({
            url: url,
            method: "post",
            contentType:"application/json",
            dataType: "json",
            data: JSON.stringify(orderItems),
            success: function (resp) {//回调函数
                if (resp.success) {
                    $("input[name=orderId]").val(resp.orderId);
                    $("#order-form").submit();
                } else {

                }
            }
            ,
            error: function (resp) {
            }
            ,
            traditional: true
        })
        ;
    });


    let lastTimer;
    $('.input-counter').each(function () {
        var spinner = jQuery(this),
            cartId = spinner.closest("tr").find('input[name=cartId]').val(),
            goodsId = spinner.closest("tr").find('input[name=goodsId]').val(),
            remove = spinner.closest("tr").find('.remove'),
            input = spinner.find('input[type="text"]'),
            btnUp = spinner.find('.plus-btn'),
            btnDown = spinner.find('.minus-btn'),
            min = input.attr('min'),
            max = input.attr('max'),
            subtotal = spinner.closest("tr").find('.product-subtotal .subtotal-amount'),
            price = spinner.closest("tr").find('.product-price .unit-amount').text();
            btnUp.on('click', function () {
            var oldValue = parseFloat(input.val());
            if (oldValue >= max) {
                var newVal = oldValue;
            } else {
                var newVal = oldValue + 1;
            }
            spinner.find("input").val(newVal);
            spinner.find("input").trigger("change");
            subtotal.text((parseFloat(price) * parseFloat(newVal)).toFixed(2));
            total = (parseFloat(price) * parseFloat(newVal)).toFixed(2);

            if (lastTimer) {
                clearTimeout(lastTimer);
            }

            let url = ctx + "cart/updateCart";
            let productId = $(this).closest("tr").data("pid");
            lastTimer = setTimeout(function () {
                //发送请求
                $.post(url, {
                    customerId: customerId,
                    cartId: cartId,
                    goodsNum: newVal,
                    total: total,
                }, function (resp) {
                    totalPayable();
                }, "json");
            }, 300);
        });
        btnDown.on('click', function () {
            var oldValue = parseFloat(input.val());
            if (oldValue <= min) {
                var newVal = oldValue;
            } else {
                var newVal = oldValue - 1;
            }
            spinner.find("input").val(newVal);
            spinner.find("input").trigger("change");
            subtotal.text((parseFloat(price) * parseFloat(newVal)).toFixed(2));
            total = (parseFloat(price) * parseFloat(newVal)).toFixed(2);
            if (lastTimer) {
                clearTimeout(lastTimer);
            }

            let url = ctx + "cart/updateCart";
            lastTimer = setTimeout(function () {
                //发送请求
                $.post(url, {
                    customerId: customerId,
                    cartId: cartId,
                    goodsNum: newVal,
                    total: total,
                }, function (resp) {
                    totalPayable();
                }, "json");
            }, 300);
        });
        remove.on('click', function () {
            $(this).closest("tr").find('input[name=checkbox]').click();
            spinner.closest('tr').remove();


            let url = ctx + "cart/deleteCart";
            setTimeout(function () {
                //发送请求
                $.post(url, {
                    customerId: customerId,
                    goodsId: goodsId,
                    cartId: cartId,
                }, function (resp) {
                    // computeTempTotal();
                }, "json");
            }, 300);


        })

    });
});