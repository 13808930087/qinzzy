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
    gravatar.onclick = function(){
        file.click()
    }
    $("#file").change(function() {
        var multipartFile = $("#file").get(0).files[0]; //��ȡfile�ؼ��е�����
        var reader = new FileReader();
        reader.readAsDataURL(multipartFile);
        var formData = new FormData();
        formData.append("multipartFile", multipartFile);
        $.ajax({
            type:"POST",
            url:"user/editGravatar",//�ӿ������ַ
            contentType:false,
            processData: false,
            data:formData,
            success:function(resp){
                layer.msg(resp.editGravatarPrompt, { icon: 1 });
                $("#gravatar").attr("src", resp.gravatarImg);
                $(".submit-property-form input[name=gravatarImg]").val( resp.gravatarImg);
            }
        });

    });

    $("#default-btn-confirm").click(function () {
        let gravatarImg = $(".submit-property-form input[name=gravatarImg]").val();
        let customerId = $(".submit-property-form input[name=customerId]").val();
        let sex = $(".submit-property-form input[name=sex]").val();
        let nickname = $(".submit-property-form input[name=nickname]").val();
        let customerName = $(".submit-property-form input[name=customerName]").val();
        let email = $(".submit-property-form input[name=email]").val();
        let phone = $(".submit-property-form input[name=phone]").val();
        url="user/editCustomer";
        $.ajax({
            url: url,
            method: "post",
            dataType: "json",//û�з�����js����
            data: {
                customerId:customerId,
                gravatarImg: gravatarImg,
                sex:sex,
                nickname:nickname,
                customerName:customerName,
                email:email,
                phone:phone,
            },
            success: function(resp) {//�ص�����
                if (resp.success) {
                    layer.msg(resp.editPrompt, { icon: 1 });
                    window.location.reload();
                    customer();
                } else {
                    layer.msg(resp.editPrompt, { icon: 1 });
                   }
            },
            error: function(resp) {
            },
            traditional: true
        });
    });
    $("#default-btn-cancel").click(function () {
        customer();
    });

});