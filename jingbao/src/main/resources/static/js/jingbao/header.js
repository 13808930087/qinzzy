
$(function () {
    $("#cate-toggle p").click(function (){
        $("#category-menu-list-form input[name=categoryName]").val($(this).text());
        $("#category-menu-list-form").submit();
    });

    $("#search-categories .top-search-btn").click(function (){
        $("#category-menu-list-form input[name=categoryId]").val($("#select").val());
        $("#category-menu-list-form input[name=goodsName]").val($("#search-categories input[name=goodsName]").val());
        $("#category-menu-list-form").submit();
    });


});