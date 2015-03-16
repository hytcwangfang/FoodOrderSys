<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8" />
	<link rel="stylesheet" type="text/css" href="Styles/public.css" />
	<link rel="stylesheet" type="text/css" href="Styles/index.css" />
	<script type="text/javascript" src="Scripts/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="Scripts/index.js"></script>
	<title>到我家</title>
</head>
<body>
	<div class="loginMeng">
		<div class="logArea">
			<img linksrc="<?php echo THEME_URL; ?>" src="images_tool/xxx1.png" class="closelog">
			<p class="logdenglu">登录</p>
			<div class="logcenter">
				<a href="sign.aspx" class="log_sign">免费注册 >></a>
				<p class="log_erro"></p>
				<ul class="log_login_inputA">
					<li>
						<p>手机号</p>
						<div class="log_login_id">
							<input type="text" class="inputid" id="userId">
							<img src="images_tool/person.gif">
						</div>
					</li>
					<li>
						<p>密码</p>
						<div class="log_login_id">
							<input type="password" class="inputid" id="userPwd">
							<img src="images_tool/key.gif">
						</div>
					</li>
				</ul>
				<ul class="log_checkA">
					<li>
						<input type="checkbox">
						<span>自动登录</span> 
					</li>
					<li>
						<input type="checkbox">
						<span>安全控件登录</span> 
					</li>
					<li>
						<a href="" class="forgetpwd">忘记密码?</a> 
					</li>
				</ul>
				<span class="log_btn">登录</span>
			</div>
		</div>
	</div>
	<div class="topArea">
		<div class="top">
			<span class="welcome">欢迎来到 美食外卖！请{ <span class="login">登录</span> } <a href="sign.aspx" class="sign"> 免费注册</a></span>
			<ul class="shopInfor">
				<li class="shop">
                    <a href="UserNav.aspx">
					    <img src="images_tool/lanzi.png" class="logoLt">
					    <span>购物篮</span>
                    </a>
				</li>
				<li class="shop">
                    <a href="UserNav.aspx">
					    <img src="images_tool/love.png" class="logoLt">
					    <span>我的收藏</span>
                    </a>
				</li>
				<li class="shop">
                    <a href="UserNav.aspx">
					    <img src="images_tool/phone.png" class="logoLt">
					    <span>历史记录</span>
                    </a>
				</li>
				<li class="shop">
                    <a href="UserNav.aspx">
					    <img src="images_tool/phone.png" class="logoLt">
					    <span>站内信</span>
                    </a>
				</li>
			</ul>
		</div>
	</div>
	<div class="searchArea">
		<ul class="search">
			<li class="logoA">
				<a href="#"><img src="images_tool/logo.png" class="logoImg"></a>
			</li>
			<li class="inputA">
				<div class="searchBox">
					<div class="company"><img src="images_tool/search.jpg" class="comImg"></div>
					<input type="text" class="searchInput">
					<a href="#">搜索</a>
					<ul class="searchClass">
						<li class="searchli searchActive">产品</li>
						<li class="searchli">企业</li>
						<li class="searchli">店铺</li>
					</ul>
				</div>
			</li>
			<li class="qrcodeA">
                <a href="UserNav.aspx" target="_blank">
				    <img src="images_data/wendy.png">
                </a>
			</li>
		</ul>
	</div>
	<div class="navArea">
		<div class="nav">
			<%--<span class="goodsClass">通知</span>--%>
			<ul class="navCon">
				<li><a href="Home.aspx" class="navConlia bgcolorSpec">首页</a></li>
				<li><a href="FoodMenu.aspx" class="navConlia bgcolor">选菜</a></li>
			</ul>
            <div class="flashnote"><marquee direction="left"><% =noticetext %></marquee></div>
		</div>
	</div>
	<div class="contentArea">
		<div class="adverA">
			<div class="pptarea">
				<div class="curImg" curchoice="1">
					<div class="imgsA">
						<img class="nextImg" src="images_data/74dbf434142267d64f9cf0f603e9bf80.jpg">
						<img class="nextImg" src="images_data/902803cad410f154a5bb457d49cc9353.jpg">
						<img class="nextImg" src="images_data/43083317996c19adf54fa7391e2a508f.jpg">
					</div>
				</div>
				<ul class="pptchoice">
					<li id="ppt0" indexid="0"></li>
					<li id="ppt1" indexid="1"></li>
					<li id="ppt2" indexid="2"></li>
				</ul>
			</div>
		</div>
        <%--<asp:Repeater runat="server" ID="refoodclass">
            <HeaderTemplate><ul class="imgarea"></HeaderTemplate>
            <ItemTemplate>
                <li>
				    <a href="" target="_blank"><img src="images/7.jpg">
                        <span class="meng">
                        <% for (int i = 0; i < foodclassnames.Count; i++)
                           {
                               Console.Write(foodclassnames[i]);
                           } %></span>
                   </a>
			    </li>
            </ItemTemplate>
            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>--%>
        <ul class="imgarea">
            <li>
                <a href="FoodMenu.aspx" target="_blank">
                    <img src="images_data/7.jpg">
                    <span class="meng">炒饭</span>
                </a>
            </li>
            <li>
                <a href="FoodMenu.aspx" target="_blank">
                    <img src="images_data/7.jpg">
                    <span class="meng">炒饭</span>
                </a>
            </li>
            <li>
                <a href="FoodMenu.aspx" target="_blank">
                    <img src="images_data/7.jpg">
                    <span class="meng">炒饭</span>
                </a>
            </li>
            <li>
                <a href="FoodMenu.aspx" target="_blank">
                    <img src="images_data/7.jpg">
                    <span class="meng">炒饭</span>
                </a>
            </li>
            <li>
                <a href="FoodMenu.aspx" target="_blank">
                    <img src="images_data/7.jpg">
                    <span class="meng">炒饭</span>
                </a>
            </li>
            <li>
                <a href="FoodMenu.aspx" target="_blank">
                    <img src="images_data/7.jpg">
                    <span class="meng">炒饭</span>
                </a>
            </li>
            <li>
                <a href="FoodMenu.aspx" target="_blank">
                    <img src="images_data/7.jpg">
                    <span class="meng">炒饭</span>
                </a>
            </li>
            <li>
                <a href="FoodMenu.aspx" target="_blank">
                    <img src="images_data/7.jpg">
                    <span class="meng">炒饭</span>
                </a>
            </li>
            <li>
                <a href="FoodMenu.aspx" target="_blank">
                    <img src="images_data/7.jpg">
                    <span class="meng">炒饭</span>
                </a>
            </li>
            <li>
                <a href="FoodMenu.aspx" target="_blank">
                    <img src="images_data/7.jpg">
                    <span class="meng">炒饭</span>
                </a>
            </li>
        </ul>
        <div id="top5">
		    <div id="top5up">
			    <a href="" class="top5upspecial1">精心推荐</a>
			    <a href="" class="top5upspecial2">美味佳肴</a>
		    </div>
		    <div id="top5down">
			    <div class="top5pic1"><img src="images_data/rice/腰花盖交饭.jpg"></div>
			    <div class="top5pic2"><img src="images_data/noodle/拉面大肉酱.jpg"></div>
			    <div class="top5pic3"><img src="images_data/noodle/扁豆闷面.jpg"></div>
			    <div class="top5pic4"><img src="images_data/rice/黑椒牛柳盖饭.jpg"></div>
			    <div class="top5pic5"><img src="images_data/noodle/兰州拉面.jpg"></div>
			    <div class="top5pic6"><img src="images_data/noodle/鸡西冷面.jpg"></div>
			    <div class="top5pic7"><img src="images_data/rice/鱼香肉丝盖交饭.jpg"></div>
			    <div class="top5pic8"><img src="images_data/noodle/冷面.jpg"></div>
		    </div>
	    </div>
		<%--<div class="imgFlash" curindex="0">
			<div class="direction leftdir" flag="before"><img src="images_tool/dirleft.jpg"></div>
			<div class="bgArea">
				<a href=""><img src="images_data/noodle/扁豆闷面.jpg"></a>
				<a href=""><img src="images_data/rice/宫爆鸡丁盖交饭.jpg"></a>
				<a href=""><img src="images_data/noodle/蝴蝶面.jpg"></a>
				<a href=""><img src="images_data/noodle/鸡蛋面.jpg"></a>
				<a href=""><img src="images_data/rice/黑椒牛柳盖饭.jpg"></a>
				<a href=""><img src="images_data/noodle/拌面.jpg"></a>
				<a href=""><img src="images_data/noodle/港式面（加鸡蛋）.jpg"></a>
				<a href=""><img src="images_data/rice/回锅肉盖交饭.jpg"></a>
				<a href=""><img src="images_data/noodle/红烧牛肉面.jpg"></a>
				<a href=""><img src="images_data/noodle/蝴蝶面1.jpg"></a>
				<a href=""><img src="images_data/rice/鱼香肉丝盖交饭.jpg"></a>
				<a href=""><img src="images_data/noodle/方便面.jpg"></a>
			</div>
			<div class="direction rightdir" flag="after"><img src="images_tool/dirright.jpg"></div>
		</div>--%>
	</div> 
	<div class="footerArea">
		<div class="footer">
			<ul class="footerTable">
				<li class="footTabLi">
					<div class="footLiTitle">
						<img src="images_data/footimg1.jpg">
						<span>消费者保障</span>
					</div>
					<ul class="footText">
						<li><a href="">保障范围</a></li>
						<li><a href="">退换货流程</a></li>
						<li><a href="">服务中心</a></li>
						<li><a href="">更多特色服务</a></li>
					</ul>
				</li>
				<li class="footTabLi">
					<div class="footLiTitle">
						<img src="images_data/footimg2.jpg">
						<span>新手上路</span>
					</div>
					<ul class="footText">
						<li><a href="">新手专区</a></li>
						<li><a href="">消费警示</a></li>
						<li><a href="">交易安全</a></li>
						<li><a href="">24小时在线服务</a></li>
						<li><a href="">免费入驻</a></li>
					</ul>
				</li>
				<li class="footTabLi">
					<div class="footLiTitle">
						<img src="images_data/footimg3.jpg">
						<span>付款方式</span>
					</div>
					<ul class="footText">
						<li><a href="">支付宝快捷支付</a></li>
						<li><a href="">支付宝卡（现金）付款</a></li>
						<li><a href="">支付宝余额付款</a></li>
						<li><a href="">货到付款</a></li>
					</ul>
				</li>
				<li class="footTabLi">
					<div class="footLiTitle">
						<img src="images_data/footimg4.jpg">
						<span>琦益特色</span>
					</div>
					<ul class="footText">
						<li><a href="">琦益状况</a></li>
						<li><a href="">我的琦益</a></li>
					</ul>
				</li>
			</ul>
			<p class="footerInfor">
				<a href="">关于我们</a>
				<span>|</span>
				<a href="">联系我们</a>
				<span>|</span>
				<a href="">企业入住（<span class="redStyle">免费</span>）</a>
				<span>|</span>
				<a href="">交易流程</a>
				<span>|</span>
				<a href="">人才招聘</a>
				<span>|</span>
				<a href="">手机琦益</a>
				<span>|</span>
				<a href="">友情链接 ireoo.com</a>
			</p>
			<p class="footerInfor">
				<a href="">广告服务</a>
				<a href="">科技新闻</a>
				<a href="">淮安万达信息科技有限公司</a>
				<a href="">交流中心</a>
				<span class="redStyle">客服电话：18652327596</span>
			</p>
			<p class="footerInfor">© 2010-2014 琦益网 - 企业产品直销平台 Processed in <p>
			<ul class="footFaith">
				<li><img src="images_tool/qiyifaith1.jpg"></li>
				<li><img src="images_tool/qiyifaith2.jpg"></li>
				<li><img src="images_tool/qiyifaith3.jpg"></li>
				<li><img src="images_tool/qiyifaith4.jpg"></li>
			</ul>
		</div>
	</div>
	<ul class="webNavi">
		<li class="naviImg addborder1"><a href=""><img src="images_tool/qiyinavi1.jpg"></a></li>
		<li class="naviShop">
			<a href="">
				<img src="images_tool/qiyinavi2.jpg">
				<span>购物车</span>
				<img src="images_tool/qiyinavi3.jpg">
			</a>
		</li>
		<li class="naviImg addborder2"><a href=""><img src="images_tool/qiyinavi4.jpg"></a></li>
		<li class="naviImg"><a href=""><img src="images_tool/qiyinavi5.jpg"></a></li>
		<li class="naviImg"><a href=""><img src="images_tool/qiyinavi6.jpg"></a></li>
		<li class="naviImg"><a href=""><img src="images_tool/qiyinavi7.jpg"></a></li>
		<li class="naviImg"><a href=""><img src="images_tool/qiyinavi8.jpg"></a></li>
		<li class="naviImg"><a href=""><img src="images_tool/qiyinavi9.jpg"></a></li>
	</ul>
</body>
</html>
