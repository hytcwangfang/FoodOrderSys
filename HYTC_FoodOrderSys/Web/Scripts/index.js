$(function () {

    window.i = 0;

    //    alert("ok");
    //查看浏览器窗口大小
    IsLarger();

    //蒙板登录
    $(document).on("click", ".login", function () {
        $(".loginMeng").show();
    });
    //蒙板登录关闭按钮样式变化
    $(".closelog").hover(function () {
        var linksrc = $(this).attr(".linksrc");
        $(this).attr("src","images_tool/xxx2.png")
    }, function () {
        $(this).attr("src","images_tool/xxx1.png")
    });
    //蒙板登录关闭
    $(document).on("click", ".closelog", function () {
        $(".loginMeng").hide();
    });

    //显示方向键
    $(".imgFlash").hover(function () {
        $(".direction").show();
    }, function () {
        $(".direction").hide();
    });

    //选择搜索分类
    $(document).on("click", ".searchli", function () {
        $(".searchli").removeClass("searchActive");
        $(this).addClass("searchActive");
    });

    //显示悬浮框
    // $(".classConLi").hover(function(){
    // 	$(this).find(".classStyle").css({
    // 		"border":"1px solid #ccc",
    // 		"height":"28px",
    // 		"border-right":"0",
    // 		"border-left":"0",
    // 		"background-color":"#fff",
    // 		"z-index":"25"
    // 	});
    // 	$(this).find(".tabledir").hide();
    // 	$(this).find(".detailA").show();
    // },function(){
    // 	$(this).find(".detailA").hide();
    // 	$(this).find(".tabledir").show();
    // 	$(this).find(".classStyle").css({
    // 		"border":"",
    // 		"height":"",
    // 		"border-right":"",
    // 		"border-left":"",
    // 		"background-color":"",
    // 		"z-index":""
    // 	});
    // });

    //幻灯片
    pptfun(index);
    $(document).on("click", ".pptchoice li", function () {
        var indexid = $(this).attr("indexid");
        clearTimeout(timehandle);
        pptfun(indexid);
    });

    //图片轮播1
    // imgflash();
    $(document).on("click", ".direction", function () {
        var curindex = parseFloat($(".imgFlash").attr("curindex"));
        var flag = $(this).attr("flag");
        if (flag == "before") {
            curindex = curindex - 3;
            if (curindex < 0) {
                curindex = 0;
            }
            var left = curindex * 247;
            $(".bgArea").animate({ "left": "-" + left + "px" });
            $(".imgFlash").attr("curindex", curindex);
        } else if (flag == "after") {
            curindex = curindex + 3;
            if (curindex > 9) {
                curindex = 9;
            }
            var left = curindex * 247;
            $(".bgArea").animate({ "left": "-" + left + "px" });
            $(".imgFlash").attr("curindex", curindex);
        }
    });

    //图片轮播2
    $(document).on("click", ".clothdir", function () {
        var curindex = parseFloat($(".clothingTImg").attr("curindex"));
        var flag = $(this).attr("flag");
        if (flag == "before") {
            curindex--;
            if (curindex < 0) {
                curindex = 2;
            }
            var left = curindex * 220;
            $(".clothingTImgs").animate({ "left": "-" + left + "px" });
            $(".clothingTImg").attr("curindex", curindex);
        } else if (flag == "after") {
            curindex++;
            if (curindex > 2) {
                curindex = 0;
            }
            var left = curindex * 220;
            $(".clothingTImgs").animate({ "left": "-" + left + "px" });
            $(".clothingTImg").attr("curindex", curindex);
        }
    });

    $(".cooImgSmall a").hover(function () {
        $(this).find(".cooImgText").css({ "color": "#fff" });
    }, function () {
        $(this).find(".cooImgText").css({ "color": "rgb(201,201,201)" });
    });

    //    //选项卡
    //    $(document).on("click", ".gonggao", function () {
    //        $(".gonggao").removeClass("activeClass");
    //        $(this).addClass("activeClass");
    //        var linkid = $(this).attr("name");
    //        $(".newsCon").hide();
    //        $("#" + linkid).show();
    //    });

    //MSN式轮播图
    showpic();

    //蒙纱效果
    $(".imgarea li").hover(function () {
        $(".meng").css({ "display": "none" });
        $(this).find(".meng").css({ "display": "block" });
    }, function () {
        $(this).find(".meng").css({ "display": "none" });
    });

    //验证登录
    $(document).on("click", ".log_btn", function () {

        var mobile = $.trim($("#userId").val());
        var pwd = $.trim($("#userPwd").val());

        if (mobile == "" || pwd == "") {
            $(".log_erro").html("手机号或密码不能为空！");
        } else {
            var regmobile = /^[1][358]\d{9}$/;
            var regpwd = /^[a-zA-Z0-9]{6,16}$/;
            if (!regmobile.test(mobile) && !regpwd.test(pwd)) {
                $(".log_erro").html("手机号与密码格式输入不正确！");
                return false;
            }
            if (!regmobile.test(mobile) && regpwd.test(pwd)) {
                $(".log_erro").html("手机号输入不正确！");
                return false;
            }
            if (regmobile.test(mobile) && !regpwd.test(pwd)) {
                $(".log_erro").html("密码格式输入不正确！");
                return false;
            }
            if (regmobile.test(mobile) && regpwd.test(pwd)) {
                $(".log_erro").html("");
                alert("ok");
                checklogin(mobile, pwd);
            }
        }
    });
});

//查看浏览器窗口大小
function IsLarger(){
	var widthall = $(window).width(); //浏览器时下窗口可视区域高度
	var heightall = $(window).height(); //浏览器时下窗口可视区域宽度
	if (widthall <1000 || heightall < 590) {
		$(".webNavi").hide();
	}else{
		$(".webNavi").show();
	}
	setTimeout(function(){
		IsLarger();
	},1000);
}

var index = 0;
//幻灯片功能
function pptfun(index){
	index = index%3;
	var left = index * 1200;
	$(".imgsA").animate({"left":"-" + left +"px"},1000);
	$(".pptchoice li").css({"background-color":"#CAEBEB"});
	$("#ppt" + index).css({"background-color":"#ff0000"});
	timehandle = setTimeout(function(){
		pptfun(index);
	},5000);
	index = index + 1;
}

function checklogin(userid,pwd){

	$.ajax({
		type:"post",
		url:"../WebService.asmx/checklogin",
		dataType:"json",
		// contentType:"application/json",
		data:{"phone": + userid + '","pwd":"'+pwd+'"}'},
		//type: 'json',
		success: function (res) {
			if (!res) {
				$(".log_erro").html("手机号与密码不符合！");
			}else{
				window.location.href = "index.html";
			}
		},
		fail:function(res){
			alert(res);
		}
	});

}

//MSN式轮换图
function showpic() {
    var elepic = {};
    elepic[0] = "../images_data/rice/腰花盖交饭.jpg";
    elepic[1] = "../images_data/noodle/拉面大肉酱.jpg";
    elepic[2] = "../images_data/noodle/扁豆闷面.jpg";
    elepic[3] = "../images_data/rice/黑椒牛柳盖饭.jpg";
    elepic[4] = "../images_data/noodle/兰州拉面.jpg";
    elepic[5] = "../images_data/noodle/鸡西冷面.jpg";
    elepic[6] = "../images_data/rice/鱼香肉丝盖交饭.jpg";
    elepic[7] = "../images_data/noodle/冷面.jpg";
    $(".top5pic1 img").attr("src", elepic[(i + 0) % 8]);
    $(".top5pic2 img").attr("src", elepic[(i + 1) % 8]);
    $(".top5pic3 img").attr("src", elepic[(i + 2) % 8]);
    $(".top5pic4 img").attr("src", elepic[(i + 3) % 8]);
    $(".top5pic5 img").attr("src", elepic[(i + 4) % 8]);
    $(".top5pic6 img").attr("src", elepic[(i + 5) % 8]);
    $(".top5pic7 img").attr("src", elepic[(i + 6) % 8]);
    $(".top5pic8 img").attr("src", elepic[(i + 7) % 8]);
    i = i + 1;
    setTimeout('showpic()', 5000);
}