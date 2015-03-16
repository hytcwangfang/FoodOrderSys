<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserNav.aspx.cs" Inherits="Web.UserNav" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <%--<link href="Styles/bootstrap.css" rel="stylesheet" type="text/css" />--%>
	<link rel="stylesheet" type="text/css" href="Styles/public.css">
	<link rel="stylesheet" type="text/css" href="Styles/index.css">	
    <link rel="stylesheet" type="text/css" href="Styles/albums.css">
	<script type="text/javascript" src="Scripts/jquery-1.9.1.min.js"></script>
    <%--<script type="text/javascript" src="Scripts/bootstrap.js"></script>--%>
	<script type="text/javascript" src="Scripts/index.js"></script>
    <script src="Scripts/albums.js" type="text/javascript"></script>
    <title>用户界面</title>
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
        <%--<div class="alb_naviA">
		    <ul class="alb_navi">
			    <li class="alb_pernavi"><a href="#tab-prof">我的资料</a></li>
			    <li class="alb_pernavi"><a href="#tab-order">我的订单</a></li>
			    <li class="alb_pernavi"><a href="#tab-collect">我的收藏</a></li>
			    <li class="alb_pernavi"><a href="#tab-address">地址管理</a></li>
			    <li class="alb_pernavi"><a href="#tab-history">历史记录</a></li>
			    <li class="alb_pernavi"><a href="#tab-msg">站内信</a></li>
		    </ul>
	    </div>--%>
        <div class="alb_naviA">
		    <ul class="alb_navi">
			    <li class="alb_pernavi activeClass" linkid="tab-prof">我的资料</li>
			    <li class="alb_pernavi" linkid="tab-order">我的订单</li>
			    <li class="alb_pernavi" linkid="tab-collect">我的收藏</li>
			    <li class="alb_pernavi" linkid="tab-address">地址管理</li>
			    <li class="alb_pernavi" linkid="tab-history">历史记录</li>
			    <li class="alb_pernavi" linkid="tab-msg">站内信</li>
		    </ul>
	    </div>
        <%--<div class="tabbable alb_naviA">
            <ul class="nav nav-pills alb_navi">
                <li class="active"><a href="#tab-prof" class="a-color" data-toggle="tab">我的资料</a></li>
                <li><a href="#tab-order" class="a-color" data-toggle="tab">我的订单</a></li>
                <li><a href="#tab-collect" class="a-color" data-toggle="tab">我的收藏</a></li>
                <li><a href="#tab-address" class="a-color" data-toggle="tab">地址管理</a></li>
                <li><a href="#tab-history" class="a-color" data-toggle="tab">历史记录</a></li>
                <li><a href="#tab-msg" class="a-color" data-toggle="tab">站内信</a></li>
            </ul>
            <div class="tab-content content">
                <div class="tab-pane active" id="tab-prof">我的资料</div>
                <div class="tab-pane" id="tab-order">我的订单</div>
                <div class="tab-pane" id="tab-collect">我的收藏</div>
                <div class="tab-pane" id="tab-address">地址管理</div>
                <div class="tab-pane" id="tab-history">历史记录</div>
                <div class="tab-pane" id="tab-msg">站内信</div>
            </div>
        </div>--%>
        <div class="alb_conA" id="tab-prof">
            <div class="alb_con user_prof">
                <img class="prof_header" src="images_data/wendy.png" />
                <ul class="profile">
                    <li>
                        <span class="prof_name">昵称：</span>
                        <div class="pro_value">18021917923</div>
                    </li>
                    <li>
                        <span class="prof_name">手机号：</span>
                        <div class="pro_value">18021917923</div>
                    </li>
                    <li>
                        <span class="prof_name">密码：</span>
                        <div class="pro_value">*********</div>
                    </li>
                    <li>
                        <span class="prof_name">订单信息：</span>
                        <div class="pro_value">
                            <span>总计0单</span>
                            <span>成功0单</span>
                        </div>
                    </li>
                </ul>                
            </div>
        </div>
        <div class="alb_conA" id="tab-order">
            <ul class="alb_con">
                <li class="order_caption">
                    <ul class="order_fill">
                        <li class="order_sizelg">创建时间</li>
                        <li class="order_sizejust">订单编号</li>
                        <li class="order_sizejust">总计金额</li>
                        <li class="order_sizejust">订单状态</li>
                        <li class="order_sizelg">查看删除操作</li>
                    </ul>
                </li>
                <li class="order_row">
                    <ul class="order_fill">
                        <li class="order_sizelg redcolor">2015-3-15 12:00</li>
                        <li class="order_sizejust">1</li>
                        <li class="order_sizejust redStyle">￥44</li>
                        <li class="order_sizejust greencolor">已处理</li>
                        <li class="order_sizelg">
                            <span class="order_action bluecolor">查看</span>
                            <span class="order_action redStyle">删除</span>
                        </li>
                        <li class="order_popover">
                            <ul class="shoplist">
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
			                </ul>
                        </li>
                    </ul>
                </li>
			</ul>
        </div>
        
        <script src="Scripts/usernav.js" type="text/javascript"></script>

        <div class="alb_conA" id="tab-collect">
            <div class="alb_con">
                <div class="foodclass">
                    <ul class="pro_type">
						    <li class="pro_type">
							    <div class="pro_text">类别:</div>
							    <ul class="pro_ways">
								    <li class="pro_post">
									    <span class="pro_large choose bggreenstyle">全部</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">面食</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">盖浇饭</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">炒菜</span>
								    </li>
							    </ul>
						    </li>
						    <li class="pro_type proborder">
							    <div class="pro_text">价位:</div>
							    <ul class="pro_ways">
								    <li class="pro_post">
									    <span class="pro_large bggreenstyle choose">全部</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">小于10￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">11-20￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">21-30￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">31-40￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">41-50￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">大于50￥</span>
								    </li>
							    </ul>
						    </li>
					    </ul>
                    </div>
               <ul class="foodlist">
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
               </ul>
			</div>
        </div>
        <div class="alb_conA" id="tab-address">
            <ul class="alb_con">
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
                            <span class="order_action redStyle">删除</span>
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
        </div>
        <div class="alb_conA" id="tab-history">
            <div class="alb_con">
                <div class="foodclass">
                    <ul class="pro_type">
						    <li class="pro_type">
							    <div class="pro_text">类别:</div>
							    <ul class="pro_ways">
								    <li class="pro_post">
									    <span class="pro_large choose bggreenstyle">全部</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">面食</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">盖浇饭</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">炒菜</span>
								    </li>
							    </ul>
						    </li>
						    <li class="pro_type proborder">
							    <div class="pro_text">价位:</div>
							    <ul class="pro_ways">
								    <li class="pro_post">
									    <span class="pro_large bggreenstyle choose">全部</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">小于10￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">11-20￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">21-30￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">31-40￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">41-50￥</span>
								    </li>
								    <li class="pro_post">
									    <span class="pro_large choose">大于50￥</span>
								    </li>
							    </ul>
						    </li>
					    </ul>
                    </div>
               <ul class="foodlist">
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
               </ul>
			</div>
        </div>
        <div class="alb_conA" id="tab-msg">
            <ul class="alb_con">
                <li class="order_caption">
                    <ul class="order_fill">
                        <li class="order_sizelg">发件人</li>
                        <li class="order_sizelg">收件人</li>
                        <li class="order_sizejust">内容</li>
                        <li class="order_sizejust">时间</li>
                        <li class="order_sizejust">操作</li>
                    </ul>
                </li>
                <li class="order_row">
                    <ul class="order_fill">
                        <li class="order_sizelg abbrcon"><a href="UserNav.aspx" class="bluecolor" target="_blank">18021917923</a></li>
                        <li class="order_sizelg abbrcon"><a href="UserNav.aspx" class="bluecolor" target="_blank">18260346196</a></li>
                        <li class="order_sizejust abbrcon">1111111111111111111111111111111111111111111111111111111</li>
                        <li class="order_sizejust greencolor">2015-3-15 12:00</li>
                        <li class="order_sizejust">
                            <span class="order_action bluecolor">查看内容</span>
                            <span class="order_action redStyle">删除</span>
                        </li>
                        <li class="order_popover">
                                <span>111111111111111111111111111111111111111111111111111111111111111111111111111111111</span>
                        </li>
                    </ul>
                </li>
			</ul>
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
				<li><img src="<?php echo THEME_URL; ?>/css/images_tool/qiyifaith1.jpg"></li>
				<li><img src="<?php echo THEME_URL; ?>/css/images_tool/qiyifaith2.jpg"></li>
				<li><img src="<?php echo THEME_URL; ?>/css/images_tool/qiyifaith3.jpg"></li>
				<li><img src="<?php echo THEME_URL; ?>/css/images_tool/qiyifaith4.jpg"></li>
			</ul>
		</div>
	</div>
    </form>
</body>
</html>
