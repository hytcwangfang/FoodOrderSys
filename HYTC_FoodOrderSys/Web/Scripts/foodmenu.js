$(function () {

    setPositon();

    //是否选中当前食物
    $(document).on("click", ".noclickimg", function () {
        var clickstate = $(this).attr("clickstate");
        if (clickstate == "no") {
            $(this).attr("src", "images_tool/qiyifaith2.jpg");
            $(this).attr("clickstate", "yes");
        } else {
            $(this).attr("src", "images_tool/comtype.jpg");
            $(this).attr("clickstate", "no");
        }
    });

    //选择食物类型或价位
    $(document).on("click", ".choose", function () {
        $(this).parent().parent().find(".choose").removeClass("bggreenstyle");
        $(this).addClass("bggreenstyle");
        var identity = $(this).attr("identity");
        var foodclassid;
        var minprice;
        var maxprice;
        if (identity == "kind") {
            foodclassid = $(this).attr("foodclassid");
            $("#kind").attr("foodclassid", foodclassid);
        } else {
            minprice = $(this).attr("minprice");
            maxprice = $(this).attr("maxprice");
            $("#price").attr("minprice", minprice); //将当前所选最低价位告知id的自定义属性
            $("#price").attr("maxprice", maxprice);
        }

        foodclassid = $("#kind").attr("foodclassid");
        minprice = $("#price").attr("minprice");
        maxprice = $("#price").attr("maxprice");
        choosefoodlist(foodclassid, minprice, maxprice);
    });

    //数量加减
    $(document).on("click", ".pro_change", function () {
        var flag = $(this).attr("flag");
        var count = parseFloat($(this).parent().find(".pro_count").html());
        if (flag == "add") {
            count++;
            $(this).parent().find(".pro_count").html(count);
        } else {
            if (count == 1) {
                return;
            } else {
                count--;
                $(this).parent().find(".pro_count").html(count);
            }
        }
    });
});

//页面滚动时
function setPositon() {

    $(window).scroll(function () {
        if ($(window).scrollTop() >= 150) {
            $(".goodsClass").css({ "position": "fixed", "top": "30px", "left": "76px", "height": "40px" });
            $(".conLeft").css({ "position": "fixed", "top": "70px", "left": "76px" });
        }
//        else {
//            $(".goodsClass").css({ "position": "static" });
//            $(".conLeft").css({ "position": "static" });
//        }
    });

}

//选择食物列表
function choosefoodlist(foodclassid,minprice,maxprice) {
   //xXXXXXXX
    $.ajax({
        type: "post",
        url: "WebService.asmx/GetFoodList",
        data: "{foodclassid:'" + foodclassid + "',minprice:'" + minprice + "',maxprice:'" + maxprice + "'}",
        dataType: "json",
        contentType: "application/json",
        success: function (res) {
            alert("ok");
            $(".foodlist").html(res);
        }
    });
}