<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="Web.OrderPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="Styles/public.css">
	<link rel="stylesheet" type="text/css" href="Styles/index.css">	
    <link rel="stylesheet" type="text/css" href="Styles/albums.css">
	<script type="text/javascript" src="Scripts/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="Scripts/index.js"></script>
    <script src="Scripts/albums.js" type="text/javascript"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="loginMeng">
		    <div class="logArea">
			<img linksrc="<?php echo THEME_URL; ?>" src="images_tool/xxx1.png" class="closelog">
			<p class="logdenglu">登录</p>
			<div class="logcenter">
				<a href="sign.html" class="log_sign">免费注册 >></a>
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
        <div class="addrMeng">
		    <div class="addrArea">
			<img linksrc="<?php echo THEME_URL; ?>" src="images_tool/xxx1.png" class="addrcloselog">
			<p class="addrdenglu">地址管理</p>
			<div class="addrcenter">
				<p class="addr_erro"></p>
				<ul class="addr_login_inputA">
					<li>
						<div class="addr_login_id">
						    <span class="addrnameleft">收单人:</span>
							<input type="text" class="inputright" id="Text1">
						</div>
					</li>
                    <li>
						<div class="addr_login_id">
						    <span class="addrnameleft">手机号:</span>
							<input type="text" class="inputright" id="Text2">
						</div>
					</li>
					<li>
						<div class="addr_login_id autoheight">
						    <span class="addrnameleft">送单地址:</span>
							<textarea class="inputaddr" id="address"></textarea>
						</div>
					</li>
				</ul>
				<%--<ul class="addr_checkA">
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
				</ul>--%>
                <div class="addr_checkA">
				    <span class="addr_btn" jobname="cancel">取消</span>
				    <span class="addr_btn" jobname="save">保存</span>
                </div>
			</div>
		</div>
	        </div>
	    <div class="topArea">
		    <div class="top">
			    <span class="welcome">欢迎来到琦益！请 { <span class="login">登录</span> } <a href="sign.html" class="sign"> 免费注册</a></span>
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
	    <div class="alb_topA">
		    <div class="alb_top">
			    <div class="alb_intro">
				    <img src="images_tool/albums.jpg" class="alb_top_img">
				    <span class="alb_top_text">沃柯电子器材清毒健身服务部</span>
				    <img src="images_tool/comtype.jpg" class="alb_top_type">
			    </div>
		    </div>
	    </div>

        <script src="Scripts/usernav.js" type="text/javascript"></script>

        <div class="alb_conA" id="createorder">
            <p class="prof_title">送餐信息</p>
            <ul class="alb_con reminheight">
                <li class="order_caption">
                    <ul class="order_fill">
                        <li class="addr_sizesm">收单人</li>
                        <li class="addr_sizesm">手机号码</li>
                        <li class="addr_sizelg">送餐地址</li>
                        <li class="addr_sizesm">操作</li>
                    </ul>
                </li>
                <li class="order_row">
                    <ul class="order_fill">
                        <li class="addr_sizesm abbrcon redcolor">温迪</li>
                        <li class="addr_sizesm abbrcon">18260346196</li>
                        <li class="addr_sizelg abbrcon redStyle">淮阴师范学院</li>
                        <li class="addr_sizesm">
                            <span class="order_action bluecolor">修改</span>
                            <span class="order_action redStyle"><input type="checkbox" />选中</span>
                        </li>
                    </ul>
                </li>
                <li class="order_row">
                    <ul class="order_fill">
                        <li class="addr_sizesm"></li>
                        <li class="addr_sizesm"></li>
                        <li class="addr_sizelg"></li>
                        <li class="addr_sizesm"><span class="addaddr">添加新地址</span></li>
                    </ul>
                </li>
			</ul>
            <p class="prof_title">订单内容</p>
            <ul class="alb_con reminheight">
                <li class="order_caption greencolor bgcolor">
                    <ul class="order_fill">
                        <li class="order_sizelg">食物名称</li>
                        <li class="order_sizejust">数量</li>
                        <li class="order_sizejust">单价</li>
                        <li class="order_sizejust">总计金额</li>
                        <li class="order_sizelg">备注</li>
                    </ul>
                </li>
                <li class="order_row">
                    <ul class="order_fill">
                        <li class="order_sizelg redcolor"><a href="FoodDetail.aspx" target="_blank">兰州拉面</a></li>
                        <li class="order_sizejust">1</li>
                        <li class="order_sizejust">￥44</li>
                        <li class="order_sizejust redStyle">￥44</li>
                        <li class="order_sizelg">
                            <span class="greencolor">微辣，小份</span>
                        </li>
                    </ul>
                </li>
                <li class="order_row">
                    <ul class="order_fill">
                        <li class="order_sizelg redcolor"><a href="FoodDetail.aspx" target="_blank">兰州拉面</a></li>
                        <li class="order_sizejust">1</li>
                        <li class="order_sizejust">￥44</li>
                        <li class="order_sizejust redStyle">￥44</li>
                        <li class="order_sizelg">
                            <span class="greencolor">微辣，小份</span>
                        </li>
                    </ul>
                </li>
                <li class="order_row">
                    <ul class="order_fill">
                        <li class="order_sizelg redcolor"><a href="FoodDetail.aspx" target="_blank">兰州拉面</a></li>
                        <li class="order_sizejust">1</li>
                        <li class="order_sizejust">￥44</li>
                        <li class="order_sizejust redStyle">￥44</li>
                        <li class="order_sizelg">
                            <span class="greencolor">微辣，小份</span>
                        </li>
                    </ul>
                </li>
                <li class="order_row">
                    <p class="order_title">订单金额：￥440.00</p>
                </li>
                <li class="order_row">
                    <p class="order_title">配送费用：￥0.00</p>
                </li>
                <li class="order_row">
                    <p class="order_title redcolor">需要付款：￥440.00</p>
                </li>
            </ul>
            <div class="btn_confirm">确认订单</div>
        </div>
    </form>
</body>
</html>
