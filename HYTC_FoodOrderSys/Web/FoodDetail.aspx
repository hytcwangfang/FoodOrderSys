<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodDetail.aspx.cs" Inherits="Web.FoodDetail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="Styles/public.css">
	<link rel="stylesheet" type="text/css" href="Styles/index.css">
	<link rel="stylesheet" type="text/css" href="Styles/product.css">
	<script type="text/javascript" src="Scripts/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="Scripts/index.js"></script>
	<script type="text/javascript" src="Scripts/product.js"></script>
    <title>兰州拉面</title>
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
							<img src="<?php echo THEME_URL; ?>/css/images_tool/key.gif">
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
	<div class="pro_searchArea">
		<ul class="search">
			<li class="pro_logoA">
				<a href="#"><img src="images_tool/logo.png" class="pro_logoImg"></a>
			</li>
			<li class="pro_inputA">
				<div class="pro_searchBox">
					<div class="company"><img src="images_tool/search.jpg" class="comImg"></div>
					<input type="text" class="pro_searchInput">
					<a href="#">搜索</a>
				</div>
			</li>
		</ul>
	</div>
	<%--<div class="pro_topImg">
		<img src="images_tool/qiyibottom.jpg">
	</div>--%>
	<div class="pro_contentA">
		<div class="pro_content">
			<div class="pro_conleft">
				<div class="mainImgA">
					<img src="<% =foodinfo.FoodImg %>" class="pro_mainImg">
					<div class="pro_collect">
						<img src="images_tool/collect.jpg">
						<span>收藏宝贝(12849人气)</span>
					</div>
				</div>
				<div class="pro_inforA">
					<div class="pro_name"><% =foodinfo.FoodName %></div>
					<ul class="pro_priceA">
						<li class="pro_text">价格</li>
						<li class="pro_price">￥<% =foodinfo.FoodPrice %></li>
						<li class="pro_msgcount"><span>1621</span><span>今天售量</span></li>
						<li class="pro_msgcount noborder"><span>812</span><span>累计评论</span></li>
					</ul>
					<ul class="pro_type">
						<li class="pro_type">
							<div class="pro_text">详情</div>
							<div class="pro_ways">
								<span class="foodprof"><% =foodinfo.FoodDes %></span>
							</div>
						</li>
						<li class="pro_type proborder">
							<div class="pro_text">标签</div>
							<ul class="pro_ways">
								<li class="pro_post">
									<span class="pro_large bgredstyle">好吃</span>
								</li>
								<li class="pro_post">
									<span class="pro_large bgredstyle">低脂肪</span>
								</li>
								<li class="pro_post">
									<span class="pro_large bgredstyle">营养</span>
								</li>
								<li class="pro_post">
									<span class="pro_hui">方便</span>
								</li>
                                <li class="pro_post">
									<span class="pro_large">好吃</span>
								</li>
								<li class="pro_post">
									<span class="pro_large">低脂肪</span>
								</li>
								<li class="pro_post">
									<span class="pro_large">营养</span>
								</li>
								<li class="pro_post">
									<span class="pro_hui">方便</span>
                                </li>
							</ul>
						</li>
						<li class="pro_type">
							<div class="pro_text">分量</div>
							<ul class="pro_ways">
								<li class="pro_post">
									<span class="pro_large choose bggreenstyle">小份(默认)</span>
								</li>
								<li class="pro_post">
									<span class="pro_large choose">大份</span>
								</li>
							</ul>
						</li>
						<li class="pro_type">
							<div class="pro_text">口味</div>
							<ul class="pro_ways">
								<li class="pro_post">
									<span class="pro_large bggreenstyle choose">不辣(默认)</span>
								</li>
								<li class="pro_post">
									<span class="pro_large choose">微辣</span>
								</li>
								<li class="pro_post">
									<span class="pro_large choose">超辣</span>
								</li>
							</ul>
						</li>
						<li class="pro_type">
							<div class="pro_text">数量</div>
							<div class="pro_ways">
								<ul class="pro_countA">
									<li class="pro_change" flag="less">-</li>
									<li class="pro_count">999</li>
									<li class="pro_change" flag="add">+</li>
								</ul>
							</div>
						</li>
					</ul>
					<div class="pro_buttons">
						<%-- <div class="btn_purchase">立即购买</div> --%>
						<div class="btn_basket"><img src="images_tool/basket.jpg"></div>
						<a href="" class="yubao">举报虚假信息!?</a>
					</div>
				</div>
			</div>
			<div class="pro_conright">
				<div class="markinfors">
                    <div class="louzhuid">123</div>
                        <div class="louzhuImg">
                        </div>
                        <div class="authorImg">
                            <img src="images_data/1.jpg" /></div>
                        <div class="mingpai">
                            剑姬的呐喊</div>
                        <div class="nicheng">
                            wendy</div>
                </div>
			</div>
		</div>
	</div>
	<div class="pro_conInforsA">
		<div class="pro_conInfors">
			<ul class="pro_conInforleft">
				<li class="pro_southis">
					<div class="pro_souTitle">
						<div class="pro_souA">
							<span><% =foodinfo.FoodName %></span>
							<%--<img src="images_tool/prosearch.jpg">--%>
						</div>
					</div>
					<img class="pro_adver1" src="<% =foodinfo.FoodImg %>">
				</li>
			</ul>
			<div class="pro_conInforright">
				<ul class="pro_con_menus">
					<li class="pro_menuli active_promenu">累计评论<span class="redStyle">812</span></li>
					<li class="pro_menuli">成交记录<span class="redStyle">812</span></li>
				</ul>
                <div class="pro_con_con" id="intercritical">
                    <div class="perTrends" id="trends1">
					<div class="perTrendsTitle" linkid="trends1">
						<a href="" class="largeheadImg"><img src="images_data/albums.jpg"></a>
						<div class="userA">
							<span class="username">沃柯电子器材清毒健身服务部</span>
							<ul class="trendsState">
								<li class="trendsTime">昨天 10：30</li>
								<li class="trendsTime">来自iPhone5
								</li>
								<li class="trendsScan">
									<img src="images_tool/scan.png">
									<span class="trendstext">浏览(13)</span>
								</li>
							</ul>
						</div>
					</div>
					<div class="trendscon" linkid="trends1">今天星期二</div>
					<div class="remarkA" linkid="trends1">
						<ul class="remarkTitle">
							<li class="remarkli">
								<img src="images_tool/msg.jpg">
								<span>评论</span>
							</li>
							<li class="remarkxiang">|</li>
							<li class="remarkli">
								<img src="images_tool/msg.jpg">
								<span>转发</span>
							</li>
							<li class="remarkxiang">|</li>
							<li class="remarkli">
								<img src="images_tool/clicklike.jpg">
								<span>赞(3)</span>
							</li>
							<li class="remarkxiang">|</li>
							<li class="remarkli">
								<img src="images_tool/collect.jpg">
								<span>收藏</span>
							</li>
						</ul>
						<div class="clicklike" linkid="trends1">
							<img src="images_tool/clicklike.jpg" class="likeimg">
							<ul class="likeList">
								<li title="琦益"><a href=""><img src="images_data/like1.png"></a></li>
								<li title="琦益"><a href=""><img src="images_data/like2.png"></a></li>
								<li title="琦益"><a href=""><img src="images_data/like3.png"></a></li>
							</ul>
						</div>
						<ul class="clicklike" level="first" linkid="trends1">
							<li class="firstmsg">
								<img src="images_data/like1.png" class="firmsghead">
								<div class="firmsgcon">
									<div class="firmsgdetail">
										<span class="firmsgname">琦益:</span>
										<span class="firmsgtext">你好，world！</span>
									</div>
									<div class="firmsgdetail">
										<span class="trendsTime">昨天 10：30</span>
										<img src="images_tool/msg.jpg" level="first" linkid="trends1" class="firmsgimg">
									</div>
									<ul class="msgList" level="second">
										<li class="firstmsg">
											<img src="images_data/like1.png" class="firmsghead">
											<div class="firmsgcon">
												<div class="firmsgdetail">
													<span class="firmsgname">琦益wwwwwww:</span>
													<span class="firmsgtext">你好，world！</span>
												</div>
												<div class="firmsgdetail">
													<span class="trendsTime">昨天 10：30</span>
													<img src="images_tool/msg.jpg" linkid="trends1" level="second" class="firmsgimg">
												</div>
											</div>
										</li>
										<li class="firstmsg">
											<img src="images_data/like1.png" class="firmsghead">
											<div class="firmsgcon">
												<div class="firmsgdetail">
													<span class="firmsgname">琦益ww:</span>
													<span class="firmsgtext">你好，world！</span>
												</div>
												<div class="firmsgdetail">
													<span class="trendsTime">昨天 10：30</span>
													<img src="images_tool/msg.jpg" linkid="trends1" level="second" class="firmsgimg">
												</div>
											</div>
										</li>
									</ul>
									<!-- <div class="broadcast2">
										<textarea class="broadcon secondmsg" linkid="trends1"></textarea>
										<div class="moodA">
											<img src="<?php echo THEME_URL; ?>/css/images_tool/mood.png" class="moodclass">
											<img src="<?php echo THEME_URL; ?>/css/images_tool/atwho.png" class="moodclass">
											<span class="btn_broad" level="second" linkid="trends1">发表</span>
										</div>
									</div> -->
								</div>
							</li>
							<li class="firstmsg">
								<img src="images_data/like1.png" class="firmsghead">
								<div class="firmsgcon">
									<div class="firmsgdetail">
										<span class="firmsgname">琦益:</span>
										<span class="firmsgtext">你好，world！</span>
									</div>
									<div class="firmsgdetail">
										<span class="trendsTime">昨天 10：30</span>
										<img src="images_tool/msg.jpg" level="first" linkid="trends1" class="firmsgimg">
									</div>
									<ul class="msgList" level="second">
										<li class="firstmsg">
											<img src="images_data/like1.png" class="firmsghead">
											<div class="firmsgcon">
												<div class="firmsgdetail">
													<span class="firmsgname">琦益:</span>
													<span class="firmsgtext">你好，world！</span>
												</div>
												<div class="firmsgdetail">
													<span class="trendsTime">昨天 10：30</span>
													<img src="images_tool/msg.jpg" linkid="trends1" level="second" class="firmsgimg">
												</div>
											</div>
										</li>
										<li class="firstmsg">
											<img src="images_data/like1.png" class="firmsghead">
											<div class="firmsgcon">
												<div class="firmsgdetail">
													<span class="firmsgname">琦益:</span>
													<span class="firmsgtext">你好，world！</span>
												</div>
												<div class="firmsgdetail">
													<span class="trendsTime">昨天 10：30</span>
													<img src="images_tool/msg.jpg" linkid="trends1" level="second" class="firmsgimg">
												</div>
											</div>
										</li>
									</ul>
								</div>
							</li>
						</ul>
						<ul class="broadcast1">
							<li class="bro_input">
								<input type="text">
							</li>
							<li class="bro_img">
								<img src="images_tool/camera.jpg">
							</li>
							<li class="bro_img">
								<img src="images_tool/handleft.jpg">
							</li>
						</ul>
						<div class="broadcast2" style="display:none;" id="trendsbroad1">
							<div class="firbroadA">
								<textarea class="broadcon firsttext" linkid="trends1"></textarea>
								<img src="images_tool/camera.png" class="cameraA">
							</div>
							<div class="moodA">
								<img src="images_tool/mood.png" class="moodclass">
								<img src="images_tool/atwho.png" class="moodclass">
								<span class="btn_broad" level="first" linkid="trends1">发表</span>
							</div>
						</div>
					</div>
				</div>
                </div>
				<div class="pro_con_con" id="successnote" style="display:none">
					<table class="pro_details pro_table">
							<tr>
								<td>尺码</td>
								<td>肩宽</td>
								<td>衣长</td>
								<td>胸围</td>
								<td>袖长</td>
							</tr>
							<tr>
								<td>S</td>
								<td>65</td>
								<td>72</td>
								<td>56*2</td>
								<td>45</td>
							</tr>
							<tr>
								<td>M</td>
								<td>67</td>
								<td>73</td>
								<td>58*2</td>
								<td>45</td>
							</tr>
							<tr>
								<td>L</td>
								<td>68</td>
								<td>74</td>
								<td>60*2</td>
								<td>46</td>
							</tr>
					</table>
					<div class="tableclass">由于手工测量，存在1-3CM的误差，还请亲们见谅!</div>					
				</div>
				<div class="pro_con_right">
                    <p class="contact">相关美食推荐</p>
					<ul class="recommandList">
						<li><a href="" class="comname">鸡蛋面</a></li>
						<li><a href="" class="comname">蝴蝶面</a></li>
						<li><a href="" class="comname">宫爆鸡丁盖浇饭</a></li>
						<li><a href="" class="comname">蝴蝶面</a></li>
						<li><a href="" class="comname">宫爆鸡丁盖浇饭</a></li>
						<li><a href="" class="comname">蝴蝶面</a></li>
						<li><a href="" class="comname">宫爆鸡丁盖浇饭</a></li>
						<li><a href="" class="comname">蝴蝶面</a></li>
						<li><a href="" class="comname">宫爆鸡丁盖浇饭</a></li>
					</ul>
                </div>
			</div>
		</div>
	</div>
	<div class="footerArea">
		<div class="footer">
			<ul class="footerTable">
				<li class="footTabLi">
					<div class="footLiTitle">
						<img src="<?php echo THEME_URL; ?>/css/images_data/footimg1.jpg">
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
						<img src="<?php echo THEME_URL; ?>/css/images_data/footimg2.jpg">
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
						<img src="<?php echo THEME_URL; ?>/css/images_data/footimg3.jpg">
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
						<img src="<?php echo THEME_URL; ?>/css/images_data/footimg4.jpg">
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
