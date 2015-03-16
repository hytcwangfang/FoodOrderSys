$(function () {
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
    });

    //添加新地址按钮
    $(document).on("click", ".addaddr", function () {
        $(".addrMeng").show();
    });
    //蒙板添加新地址页面关闭按钮样式变化
    $(".addrcloselog").hover(function () {
        var linksrc = $(this).attr(".linksrc");
        $(this).attr("src", "images_tool/xxx2.png")
    }, function () {
        $(this).attr("src", "images_tool/xxx1.png")
    });
    //蒙板添加新地址页面关闭
    $(document).on("click", ".addrcloselog", function () {
        $(".addrMeng").hide();
    });

    //保存、取消添加新地址按钮
    $(document).on("click", ".addr_btn", function () {
        var jobname = $(this).attr("jobname");
        if (jobname == "cancel") {
            //取消按钮
            $(".addrMeng").hide();
        } else {
            //保存按钮
        }
    });
});