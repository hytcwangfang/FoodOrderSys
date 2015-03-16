$(function(){
    //ѡ�
    $(document).on("click", ".alb_pernavi", function () {
        $(".alb_pernavi").removeClass("activeClass");
        $(this).addClass("activeClass");
        var linkid = $(this).attr("linkid");
        $(".alb_conA").hide();
        $("#" + linkid).show();
    });
});