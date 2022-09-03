$(function () {
    function address() {
        $("#address").css("display", "block");
        $("#editAddress").css("display", "none");
    }
    function editAddress() {
        $("#address").css("display", "none");
        $("#editAddress").css("display", "block");
    }
    address();
    $("#addAddressButton").click(function () {
        editAddress();
    });

    $("#editAddressButton").click(function () {
        editAddress();
    });
    $("#default-btn-confirm").click(function () {
        address();
    });
    $("#default-btn-cancel").click(function () {
        address();
    });
  $("select[name=province]").change(function (){


      $("select[name=city]").attr("disabled",false);

  });
    $("select[name=city]").change(function (){


        $("select[name=area]").attr("disabled",false);
    });


});