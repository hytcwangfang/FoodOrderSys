$(function () {

    $(document).on("click", ".sig_btn", function () {
        var phoneid = $.trim($("#sig_mobile").find(".sig_input").val());
        var username = $.trim($("#sig_name").find(".sig_input").val());
        // alert(username);
        var userpwd = $.trim($("#sig_pwd").find(".sig_input").val());
        var againpwd = $.trim($("#sig_confirmpwd").find(".sig_input").val());
        var regphoneid = /^[1][358]\d{9}$/;
        var regname = /^[a-zA-Z0-9_]{3,19}$/;
        var regpwd = /^[a-zA-Z0-9_]{6,16}$/;
        if (phoneid == "") {
            $("#sig_mobile").find(".sig_erro").html(" x 手机号不能为空");
        } else {
            if (!regphoneid.test(phoneid)) {
                $("#sig_mobile").find(".sig_erro").html(" x 手机号格式不正确");
            } else {
                $("#sig_mobile").find(".sig_erro").html("");
            }
        }
        if (username == "") {
            $("#sig_name").find(".sig_erro").html(" x 用户名不能为空");
        } else {
            $("#sig_name").find(".sig_erro").html();
            if (!regname.test(username)) {
                $("#sig_name").find(".sig_erro").html(" x 用户名不符合要求");
            } else {
                $("#sig_name").find(".sig_erro").html("");
            }
        }
        if (userpwd == "") {
            $("#sig_pwd").find(".sig_erro").html(" x 密码不能为空");
        } else {
            if (!regpwd.test(userpwd)) {
                $("#sig_pwd").find(".sig_erro").html(" x 密码不符合要求");
            } else {
                $("#sig_pwd").find(".sig_erro").html("");
            }
        }
        if (againpwd == "") {
            $("#sig_confirmpwd").find(".sig_erro").html(" x 请确认密码");
        } else {
            if (userpwd != againpwd) {
                $("#sig_confirmpwd").find(".sig_erro").html(" x 密码输入不一致");
            } else {
                $("#sig_confirmpwd").find(".sig_erro").html("");
            }
        }
        var phoneerro = $("#sig_mobile").find(".sig_erro").html();
        var nameerro = $("#sig_name").find(".sig_erro").html();
        var pwderro = $("#sig_pwd").find(".sig_erro").html();
        var againerro = $("#sig_confirmpwd").find(".sig_erro").html();
        if (phoneerro == "" && nameerro == "" && pwderro == "" && againerro == "") {
            window.location.href = "login.html";
        }
    });

    //手机号获得与失去焦点
    $("#sig_mobile").find(".sig_input").focus(function () {
        $(this).parent().parent().find(".sig_erro").html("");
    });
    $("#sig_mobile").find(".sig_input").blur(function () {

        //查看此号码是否已被注册
        //var val = $(this).val();
        // $.ajax({
        // 	type:"POST",
        // 	url:"http://api.iwd.hk:81",
        // 	dataType:"json",
        // 	// contentType:"application/json",
        // 	data:{json:'{"class":"login","table":"person","phone":"+86' + val + '","password":"cc880108"}'},
        // 	//type: 'json',
        // 	success:function(res){
        // 		if(res.phone != "");
        //			$("#sig_mobile").find(".sig_erro").html(" ！ 该手机号已被注册");
        // 	}
        // });
    });

    //用户名获得焦点
    $("#sig_name").find(".sig_input").focus(function () {
        $(this).parent().parent().find(".sig_erro").html("");
    });
    //密码获得焦点
    $("#sig_pwd").find(".sig_input").focus(function () {
        $(this).parent().parent().find(".sig_erro").html("");
    });
    //确认密码框获得焦点
    $("#sig_confirmpwd").find(".sig_input").focus(function () {
        $(this).parent().parent().find(".sig_erro").html("");
    });
});