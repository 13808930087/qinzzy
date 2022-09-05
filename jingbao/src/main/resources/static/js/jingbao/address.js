$(function () {
        function address() {
            $("#address").css("display", "block");
            $("#editAddress").css("display", "none");
        }

        function editAddress() {
            $("#address").css("display", "none");
            $("#editAddress").css("display", "block");
        }

        let userUrl;
        address();
        $("#addAddressButton").click(function () {
            $("#editAddress input[name=consignee]").val(null);
            $("#editAddress input[name=phone]").val(null);
            $("#editAddress select[name=province]").val(null);
            $("#editAddress select[name=city]").val(null);
            $("#editAddress select[name=area]").val(null);
            $("#editAddress input[name=detailedAddress]").val(null);
            userUrl = "user/addUserAddress"
            editAddress();
        });

        $(".editAddressButton").click(function () {
            addressId = $(this).closest(".billing-address-bar").find("input[name=addressId]").val();
            consignee = $(this).closest(".billing-address-bar").find("input[name=consignee]").val();
            province = $(this).closest(".billing-address-bar").find("input[name=province]").val();
            city = $(this).closest(".billing-address-bar").find("input[name=city]").val();
            area = $(this).closest(".billing-address-bar").find("input[name=area]").val();
            detailedAddress = $(this).closest(".billing-address-bar").find("input[name=detailedAddress]").val();
            phone = $(this).closest(".billing-address-bar").find("input[name=phone]").val();

            $("#editAddress input[name=consignee]").val(consignee);
            $("#editAddress input[name=addressId]").val(addressId);
            $("#editAddress input[name=phone]").val(phone);
            $("#editAddress select[name=province]").val(province);
            $("select[name=province]").change();
            $("#editAddress select[name=city]").val(city);
            $("select[name=city]").change();
            $("#editAddress select[name=area]").val(area);
            $("#editAddress input[name=detailedAddress]").val(detailedAddress);
            userUrl = "user/editUserAddress"
            editAddress();
        });

        $("#default-btn-confirm").click(function () {
            consignee = $("#editAddress input[name=consignee]").val();
            addressId = $("#editAddress input[name=addressId]").val();
            customerId = $("input[name=customerId]").val();
            phone = $("#editAddress input[name=phone]").val();
            province = $("#editAddress select[name=province]").val();
            city = $("#editAddress select[name=city]").val();
            area = $("#editAddress select[name=area]").val();
            detailedAddress = $("#editAddress input[name=detailedAddress]").val();
            console.log(userUrl);
            $.ajax({
                url: userUrl,
                method: "post",
                dataType: "json",//没有方法的js对象
                data: {
                    addressId: addressId,
                    consignee: consignee,
                    customerId: customerId,
                    phone: phone,
                    province: province,
                    city: city,
                    area: area,
                    detailedAddress: detailedAddress,
                },
                success: function (resp) {//回调函数
                    if (resp.success) {
                        layer.msg(resp.addressPrompt, {icon: 1});
                        setTimeout(function () {
                            window.location.reload();
                        }, 500);
                    }

                },
                error: function (resp) {
                },
                traditional: true
            });

        });
        $("#default-btn-cancel").click(function () {
            address();
        });
        $("select[name=province]").change(function () {
            parentId = $("select[name=province]").val();
            url = "user/getAddress";
            $.ajax({
                url: url,
                method: "post",
                dataType: "json",//没有方法的js对象
                data: {
                    parentId: parentId
                },
                success: function (resp) {//回调函数
                    $("select[name=city]").text(null);
                    for (var i in resp.addresses) {
                        $option = $("<option>" + resp.addresses[i].addressName + "</option>");
                        $option.val(resp.addresses[i].addressId);
                        $("select[name=city]").append($option);
                    }
                    $("select[name=city]").change();
                },
                error: function (resp) {
                },
                traditional: true
            });

        });
        $("select[name=city]").change(function () {
            parentId = $("select[name=city]").val();
            url = "user/getAddress";
            $.ajax({
                url: url,
                method: "post",
                dataType: "json",//没有方法的js对象
                data: {
                    parentId: parentId
                },
                success: function (resp) {//回调函数
                    $("select[name=area]").text(null);
                    for (var i in resp.addresses) {
                        $option = $("<option>" + resp.addresses[i].addressName + "</option>");
                        $option.val(resp.addresses[i].addressId);
                        $("select[name=area]").append($option);
                    }
                },
                error: function (resp) {
                },
                traditional: true
            });

        });
    }
)
;