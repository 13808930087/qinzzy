$(function () {
    function customer() {
        $("#customer").css("display", "block");
        $("#editCustomer").css("display", "none");
    }

    function editCustomer() {
        $("#customer").css("display", "none");
        $("#editCustomer").css("display", "block");
    }

    customer();
    $("#editCustomer-btn").click(function () {
        editCustomer();
    });
    const file = document.getElementById('file')
    const gravatar = document.getElementById("gravatar")
    gravatar.onclick = function () {
        file.click()
    }
    $("#file").change(function () {
        var multipartFile = $("#file").get(0).files[0]; //获取file控件中的内容
        var reader = new FileReader();
        reader.readAsDataURL(multipartFile);
        var formData = new FormData();
        formData.append("multipartFile", multipartFile);
        $.ajax({
            type: "POST",
            url: "user/editGravatar",//接口请求地址
            contentType: false,
            processData: false,
            data: formData,
            success: function (resp) {
                layer.msg(resp.editGravatarPrompt, {icon: 1});
                $("#gravatar").attr("src", resp.gravatarImg);
                $(".submit-property-form input[name=gravatarImg]").val(resp.gravatarImg);
            }
        });

    });

    $("#default-btn-confirm").click(function () {
        gravatarImg = $(".submit-property-form input[name=gravatarImg]").val();
        customerId = $(".submit-property-form input[name=customerId]").val();
        sex = $(".submit-property-form input[name=sex]").val();
        nickname = $(".submit-property-form input[name=nickname]").val();
        customerName = $(".submit-property-form input[name=customerName]").val();
        email = $(".submit-property-form input[name=email]").val();
        phone = $(".submit-property-form input[name=phone]").val();
        url = "user/editCustomer";
        $.ajax({
            url: url,
            method: "post",
            dataType: "json",//没有方法的js对象
            data: {
                customerId: customerId,
                gravatarImg: gravatarImg,
                sex: sex,
                nickname: nickname,
                customerName: customerName,
                email: email,
                phone: phone,
            },
            success: function (resp) {//回调函数
                if (resp.success) {
                    layer.msg(resp.editPrompt, {icon: 1});
                    setTimeout(function() {   window.location.reload(); }, 500);
                    customer();
                } else {
                    layer.msg(resp.editPrompt, {icon: 1});
                }
            },
            error: function (resp) {
            },
            traditional: true
        });
    });
    $("#default-btn-cancel").click(function () {
        customer();
    });

});