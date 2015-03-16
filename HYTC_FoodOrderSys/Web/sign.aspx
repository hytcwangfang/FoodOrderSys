<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign.aspx.cs" Inherits="Web.sign" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8" />
	<link rel="stylesheet" type="text/css" href="Styles/public.css" />
	<link rel="stylesheet" type="text/css" href="Styles/sign.css" />
	<script type="text/javascript" src="Scripts/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="Scripts/index.js"></script>
	<script type="text/javascript" src="Scripts/sign.js"></script>
	<title>到我家注册页面</title>
</head>
<body>
	<div class="loginMeng">
		<div class="logArea">
			<img linksrc="<?php echo THEME_URL; ?>" src="images_tool/xxx1.png" class="closelog" />
			<p class="logdenglu">登录</p>
			<div class="logcenter">
				<a href="sign.aspx" class="log_sign">免费注册 >></a>
				<p class="log_erro"></p>
				<ul class="log_login_inputA">
					<li>
						<p>手机号</p>
						<div class="log_login_id">
							<input type="text" class="inputid" id="userId">
							<img src="images_tool/person.gif" />
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
			<span class="welcome">欢迎来到我家！请 { <span class="login">登录</span> } <a href="sign.aspx" class="sign"> 免费注册</a></span>
			<ul class="shopInfor">
				<li class="shop">
					<span>企业入驻</span>
				</li>
				<li class="shop">
					<img src="images_tool/lanzi.png" class="logoLt">
					<span>购物篮</span>
				</li>
				<li class="shop">
					<img src="images_tool/love.png" class="logoLt">
					<span>我关注的企业</span>
				</li>
				<li class="shop">
					<img src="images_tool/phone.png" class="logoLt">
					<span>客户服务</span>
				</li>
				<li class="shop">
					<img src="images_tool/nav.png" class="logoLt">
					<span>网站导航</span>
				</li>
			</ul>
		</div>
	</div>
	<div class="log_top sig_logo">
		<div class="log_logo">
			<a href="index.aspx"><img src="images_tool/logo.png"></a>
		</div>
	</div>
	<div class="sig_content">
		<div class="sig_sign">
			<a href="login.aspx" class="sig_login">登录琦益</a>
			<ul class="sig_left">
				<li id="sig_mobile">
					<span class="sig_con"><span class="redStyle">*</span>手机号码：</span>
					<div class="sig_inputA">
						<input type="text" class="sig_input">
						<img src="images_tool/sign0.gif" class="sig_input_img">
					</div>
					<span class="sig_erro"></span>
				</li>
				<li id="sig_name">
					<span class="sig_con"><span class="redStyle">*</span>用户名：</span>
					<div class="sig_inputA">
						<input type="text" class="sig_input">
						<img src="images_tool/sign1.gif" class="sig_input_img">
						<span class="sig_intro">/* 3-19位大小写字母或数字或下划线 */</span>
					</div>
					<span class="sig_erro"></span>
				</li>
				<li id="sig_pwd">
					<span class="sig_con"><span class="redStyle">*</span>注册密码：</span>
					<div class="sig_inputA">
						<input type="text" class="sig_input">
						<img src="images_tool/sign2.gif" class="sig_input_img">
						<span class="sig_intro">/* 6-16位大小写字母或数字或下划线 */</span>
					</div>
					<span class="sig_erro"></span>
				</li>
				<li id="sig_confirmpwd">
					<span class="sig_con"><span class="redStyle">*</span>确认密码：</span>
					<div class="sig_inputA">
						<input type="text" class="sig_input">
						<img src="images_tool/sign2.gif" class="sig_input_img">
					</div>
					<span class="sig_erro"></span>
				</li>
				<li>
					<span class="sig_btn">注册</span>
				</li>
			</ul>
			<div class="sig_right">
				<img src="images_tool/signcode.gif">
			</div>
		</div>
	</div>
	<div class="log_footerA">
		<div class="log_footer">
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
</body>
</html>
