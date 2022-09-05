$(function () {
    $("#list-form :input[name=pageNum]").val(pageNum);
    $("#list-form :input[name=pageSize]").val(pageSize);


    $(".page-list button").click(function () {

        let p = parseInt($(".tiao input").val());

        if (p < 1) {

            layer.msg('�Ҳ�����ҳ', {icon: 1});
            return;

        } else if (p > parseInt(pages)) {

            layer.msg('�Ҳ�����ҳ', {icon: 1});
            return;
        } else if (p >= 1 && p <= parseInt(pages)) {

            $("#list-form :input[name=pageNum]").val(p);
            $("#list-form").submit();
        }
    });
    $(".page-list select").change(function () {

        let d = $(this).val();
        $("#list-form :input[name=pageNum]").val(1);
        $("#list-form :input[name=pageSize]").val(d);
        $("#list-form").submit();

    });
    $(".page-list li").click(function () {
        //��ҳ���Сѡ����ȷ��ֵ
        if ($(this).is(".first")) {
            if (pageNum === 1) {
                return;
            }
            $("#list-form :input[name=pageNum]").val(1);
            $("#list-form").submit();

        } else if ($(this).is(".last")) {
            if (pageNum === pages) {
                return;
            }
            $("#list-form :input[name=pageNum]").val(pages);
            $("#list-form").submit();
        } else if ($(this).is(".prev")) {
            let p = pageNum - 1;
            if (p < 1) {
                return;
            }
            $("#list-form :input[name=pageNum]").val(p);
            $("#list-form").submit();
        } else if ($(this).is(".next")) {
            let p = pageNum + 1;
            if (p > pages) {
                return;
            }
            $("#list-form :input[name=pageNum]").val(p);
            $("#list-form").submit();
        } else if ($(this).is(".page")) {//ҳ��
            let p = parseInt($(this).text());
            if (p != parseInt(pageNum)) {

                $("#list-form :input[name=pageNum]").val(p);
                $("#list-form").submit();
            }

        }
    });
    $(".product-div").click(function (){
       $(this).find("#product-form").submit();
    });
    $(".ion-bag").click(function () {
        goodsId=$(this).closest(".single-product").find("input[name=goodsId]").val();
        goodsName=$(this).closest(".single-product").find("input[name=goodsName]").val();
        goodsFirstImg=$(this).closest(".single-product").find("input[name=goodsFirstImg]").val();
        newGoodsPrice=$(this).closest(".single-product").find("input[name=newGoodsPrice]").val();
        if(customerId==null||customerId==""){
            layer.msg("���¼������ӵ����ﳵ", { icon: 1 });
            return;
        }
        url = "user/addCart";
        $.ajax({
            url: url,
            method: "post",
            dataType: "json",//û�з�����js����
            data: {
                customerId: customerId,
                goodsId:goodsId,
                goodsName:goodsName,
                goodsFirstImg:goodsFirstImg,
                newGoodsPrice:newGoodsPrice
            },
            success: function(resp) {//�ص�����
                if (resp.success) {
                    layer.msg(resp.addCartPrompt, { icon: 1 });
                } else {
                    layer.msg(resp.addCartPrompt, { icon: 1 });
                }
            },
            error: function(resp) {
            },
            traditional: true
        })


    });
})