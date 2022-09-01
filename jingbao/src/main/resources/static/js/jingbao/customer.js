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
    $("#default-btn-confirm").click(function () {

        customer();
    });
    $("#default-btn-cancel").click(function () {

        customer();
    });
});