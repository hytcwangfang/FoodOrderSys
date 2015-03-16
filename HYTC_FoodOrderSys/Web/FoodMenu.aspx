<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodMenu.aspx.cs" Inherits="Web.FoodMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="Styles/public.css" />
	<link rel="stylesheet" type="text/css" href="Styles/index.css" />
	<link rel="stylesheet" type="text/css" href="Styles/foodmenu.css" />
	<script type="text/javascript" src="Scripts/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="Scripts/index.js"></script>
    <script type="text/javascript" src="Scripts/foodmenu.js"></script>
	<title>美食外卖</title>
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
			<span class="welcome">欢迎来到琦益！请 { <span class="login">登录</span> } <a href="sign.aspx" class="sign"> 免费注册</a></span>
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
				<img src="images_tool/code.jpg">
			</li>
		</ul>
	</div>
	<div class="navArea">
		<div class="nav">
			<span class="goodsClass">我的购物车</span>
			<ul class="navCon rewidth">
				<li><a href="Home.aspx" class="navConlia">首页</a></li>
				<li><a href="" class="navConlia bgcolorSpec">选菜</a></li>
			</ul>
		</div>
	</div>
	<div class="contentArea autoheight">
		<div class="content autoheight">
			<ul class="conLeft">
                <li class="shopcar-caption">
                    <ul class="shopcar-fill">
                        <li class="goods-larger">商品名</li>
                        <li class="goods-justify">数量</li>
                        <li class="goods-small">单价</li>
                        <li class="goods-small">小计</li>
                        <li class="goods-small">操作</li>
                    </ul>
                </li>
                <li class="shopcar-row">
                    <ul class="shopcar-fill">
                        <li class="goods-larger"><a href="FoodDetail.aspx" target="_blank" class="foodname" title="兰州拉面兰州拉面兰州拉面">兰州拉面兰州拉面兰州拉面</a></li>
                        <li class="goods-justify">
							<ul class="pro_countA">
								<li class="pro_change" flag="less">-</li>
								<li class="pro_count">999</li>
								<li class="pro_change" flag="add">+</li>
							</ul>
                        </li>
                        <li class="goods-small">￥4</li>
                        <li class="goods-small">￥44</li>
                        <li class="goods-small foodaction">删除</li>
                    </ul>
                </li>
			</ul>
			<div class="conRight autoheight">
                <div class="foodclass">
                    <ul class="pro_type">
						    <li class="pro_type" id="kind" foodclassid="0">
							    <div class="pro_text">类别:</div>
							    <ul class="pro_ways">
								    <li class="pro_post">
									    <span class="pro_large choose bggreenstyle" foodclassid="0">全部</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" identity="kind" foodclassid="1">面食</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" identity="kind" foodclassid="2">盖浇饭</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" identity="kind" foodclassid="3">炒菜</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" identity="kind" foodclassid="4">炒菜</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" identity="kind" foodclassid="5">炒菜</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" identity="kind" foodclassid="6">炒菜</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" identity="kind" foodclassid="7">炒菜</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" identity="kind" foodclassid="8">炒菜</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" identity="kind" foodclassid="9">炒菜</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" identity="kind" foodclassid="10">炒菜</span>
								    </li>
							    </ul>
						    </li>
						    <li class="pro_type proborder" id="price" minprice="all" maxprice="all">
							    <div class="pro_text">价位:</div>
							    <ul class="pro_ways">
								    <li class="pro_post">
									    <span class="pro_large bggreenstyle choose" identity="price" minprice="all" maxprice="all">全部</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" minprice="0" identity="price" maxprice="10">小于10￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" minprice="11" identity="price" maxprice="20">11-20￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" minprice="21" identity="price" maxprice="30">21-30￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" minprice="31" identity="price" maxprice="40">31-40￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" minprice="41" identity="price" maxprice="50">41-50￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose" minprice="51" identity="price" maxprice="all">大于50￥</span>
								    </li>
							    </ul>
						    </li>
					    </ul>
                </div>
                <ul class="foodlist" runat="server" id="foodmenulist">
                </ul>
                <%--<asp:Repeater runat="server" ID="refoodlist">
                    <HeaderTemplate><ul class="foodlist"></HeaderTemplate>
                        <ItemTemplate>
                            <li>
                                <a href="FoodDetail.aspx?foodid=<%# Eval("foodId") %>" target="_blank"><img src="<%# Eval("foodImg") %>" class="foodimg" /></a>
                                <div class="fooddes">
                                    <strong>名称：</strong>
                                    <span><%# Eval("foodName") %></span>
                                </div>
                                <div class="fooddes">
                                    <strong>价格：</strong>
                                    <span>￥<%# Eval("foodPrice") %></span>
                                </div>
                                <div class="fooddes">
                                    <strong>评分：</strong>
                                    <img src="images_tool/qiyifaith2.jpg" class="likestar" />
                                </div>
                            </li>
                        </ItemTemplate>
                    <FooterTemplate></ul></FooterTemplate>
               </asp:Repeater>--%>
               <%--<ul class="foodlist">
                    <li class="foodli">
                        <img src="images_tool/comtype.jpg" class="noclickimg" clickstate="no" />
                        <a href="FoodDetail.aspx" target="_blank"><img src="images_data/noodle/蝴蝶面1.jpg" class="foodimg" /></a>
                        <div class="fooddes">
                            <strong>名称：</strong>
                            <span>蝴蝶面</span>
                        </div>
                        <div class="fooddes">
                            <strong>价格：</strong>
                            <span>￥10.00</span>
                        </div>
                        <div class="fooddes">
                            <strong>已售：</strong>
                            <span>112</span>
                        </div>
                    </li>
                    <li class="foodli">
                        <img src="images_tool/comtype.jpg" class="noclickimg" clickstate="no" />
                        <a href="FoodDetail.aspx" target="_blank"><img src="images_data/noodle/鸡西冷面.jpg" class="foodimg" /></a>
                        <div class="fooddes">
                            <strong>名称：</strong>
                            <span>鸡西冷面</span>
                        </div>
                        <div class="fooddes">
                            <strong>价格：</strong>
                            <span>￥12.00</span>
                        </div>
                        <div class="fooddes">
                            <strong>已售：</strong>
                            <span>112</span>
                        </div>
                    </li>
               </ul>--%>
			</div>
		</div>
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