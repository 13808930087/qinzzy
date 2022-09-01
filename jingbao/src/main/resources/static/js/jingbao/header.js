
$(function () {
    $("#cate-toggle p").click(function (){
        $("#category-menu-list-form :input[name=categoryName]").val($(this).text());
        $("#category-menu-list-form").submit();
    });
});