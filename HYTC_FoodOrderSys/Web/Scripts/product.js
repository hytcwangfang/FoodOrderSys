$(function () {
    //ѡ��������ζ
    $(document).on("click", ".choose", function () {
        $(this).parent().parent().find(".choose").removeClass("bggreenstyle");
        $(this).addClass("bggreenstyle");
    });
    //�����Ӽ�
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

    //�������л���
    $(document).on("click", ".pro_menuli", function () {
        $(".pro_menuli").removeClass("active_promenu");
        $(this).addClass("active_promenu");
    }); $(".bro_input input").focus(function () {
        $(this).parent().parent().hide();
        $(this).parent().parent().next().show();
        $(this).parent().parent().next().find(".firsttext").focus();
    });

    //��ʾ���������
    $(document).on("click", ".firmsgimg", function () {
        var level = $(this).attr("level");
        var linkid = $(this).attr("linkid");
        $("#" + linkid).find(".broadcast1").hide();
        $("#" + linkid).find(".broadcast2").hide();
        var html = '';
        if (level == "first") {
            html += $(this).parent().parent().html();
            html += '<div class="broadcast2">';
            html += '	<textarea class="broadcon secondmsg" linkid="' + linkid + '"></textarea>';
            html += '	<div class="moodA">';
            html += '		<img src="<?php echo THEME_URL; ?>/css/images_tool/mood.png" class="moodclass">';
            html += '		<img src="<?php echo THEME_URL; ?>/css/images_tool/atwho.png" class="moodclass">';
            html += '		<span class="btn_broad" linkid="' + linkid + '" level="second">����</span>';
            html += '	</div>';
            html += '</div>';
            $(this).parent().parent().html(html);
            $(this).parent().parent().find(".broadcast2").show();
        } else if (level == "second") {
            html += $(this).parent().parent().parent().parent().parent().html();
            html += '<div class="broadcast2">';
            html += '	<textarea class="broadcon secondmsg" linkid="' + linkid + '"></textarea>';
            html += '	<div class="moodA">';
            html += '		<img src="<?php echo THEME_URL; ?>/css/images_tool/mood.png" class="moodclass">';
            html += '		<img src="<?php echo THEME_URL; ?>/css/images_tool/atwho.png" class="moodclass">';
            html += '		<span class="btn_broad" linkid="' + linkid + '" level="second">����</span>';
            html += '	</div>';
            html += '</div>';
            $(this).parent().parent().parent().parent().parent().html(html);
            $(this).parent().parent().parent().parent().parent().find(".broadcast2").show();
        }
        $("#" + linkid).find(".secondmsg").focus();
        // $(".secondmsg").blur(function(){
        // 	if ($(this).val() == "") {
        // 		var linkid = $(this).attr("linkid");
        // 		$("#" + linkid).find(".broadcast2").hide();
        // 		$("#" + linkid).find(".broadcast1").show();
        // 	}else{
        // 		return;
        // 	}
        // });//�¼�ð��
    });

    // $(".broadcon").blur(function(){
    // 	//�¼�ð��
    // 	var linkid = $(this).attr("linkid");
    // 	$("#" + linkid).find(".broadcast2").hide();
    // 	$("#" + linkid).find(".broadcast1").show();
    // });

    //��������
    $(document).on("click", ".btn_broad", function () {
        var level = $(this).attr("level");
        var linkid = $(this).attr("linkid");
        var html = '';
        var html1 = '';
        if (level == "first") {
            var value = $(this).parent().prev().find(".broadcon").val();
            if (value == "") {
                alert("����δд����������");
            } else {
                var html2 = $("#" + linkid).find(".broadcast2").prev().prev().html();
                html1 += '<li class="firstmsg">';
                html1 += '	<img src="<?php echo THEME_URL; ?>/css/images_data/like1.png" class="firmsghead">';
                html1 += '	<div class="firmsgcon">';
                html1 += '		<div class="firmsgdetail">';
                html1 += '			<span class="firmsgname">����:</span>';
                html1 += '			<span class="firmsgtext">' + value + '</span>';
                html1 += '		</div>';
                html1 += '		<div class="firmsgdetail">';
                html1 += '			<span class="trendsTime">' + current() + '</span>';
                html1 += '			<img src="<?php echo THEME_URL; ?>/css/images_tool/msg.jpg" level="first" linkid="' + linkid + '" class="firmsgimg">';
                html1 += '		</div>';
                html1 += '	</div>';
                html1 += '</li>';
                html = html1 + html2;
                $("#" + linkid).find(".broadcast2").prev().prev().html(html);
                $(this).parent().prev().find(".broadcon").val("");
            }
        } else if (level == "second") {
            var value = $(this).parent().prev().val();
            if (value == "") {
                alert("����δд����������");
            } else {
                var html2 = $(this).parent().parent().prev().html();
                // alert(html2);
                html1 += '<li class="firstmsg">';
                html1 += '	<img src="<?php echo THEME_URL; ?>/css/images_data/like1.png" class="firmsghead">';
                html1 += '	<div class="firmsgcon">';
                html1 += '		<div class="firmsgdetail">';
                html1 += '			<span class="firmsgname">����ww:</span>';
                html1 += '			<span class="firmsgtext">' + value + '</span>';
                html1 += '		</div>';
                html1 += '		<div class="firmsgdetail">';
                html1 += '			<span class="trendsTime">' + current() + '</span>';
                html1 += '			<img src="<?php echo THEME_URL; ?>/css/images_tool/msg.jpg" linkid="' + linkid + '" level="second" class="firmsgimg">';
                html1 += '		</div>';
                html1 += '	</div>';
                html1 += '</li>';
                html = html2 + html1;
                $(this).parent().parent().prev().html(html);
                $(this).parent().prev().val("");
            }
        }
    });
});

//��ȡ��ǰʱ��
function current() {
    var d = new Date(), str = '';
    str += d.getFullYear() + '-'; //��ȡ��ǰ���
    str += d.getMonth() + 1 + '-'; //��ȡ��ǰ�·ݣ�0����11��
    str += d.getDate() + ' ';
    str += d.getHours() + ':';
    str += d.getMinutes();
    return str;
}