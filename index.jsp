<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>永利会-中国最专业的棋牌游戏平台</title>
<meta name="Keywords" content="永利会,棋牌游戏,棋牌游戏平台,永利会棋牌" />
<meta name="Description" content="永利会-中国最专业的棋牌游戏平台。真人竞技,万人在线,奖励丰富,24小时客服服务。永利会,玩棋牌游戏首选平台，10个专业玩家8个在永利会棋牌游戏。" />
<!--<script type="text/javascript"> CheckLogin();</script> public.js中检查登入者 -->

<%@ include file="header.jsp" %>
	<div class="tzy_body">
    	<div>
		</div>
        <div class="tzy_main">
			<div class="tzy_dh">
			<ul>
			<li class="tzy_dh_1"><a href="/"></a></li>
			<li class="tzy_dh_2"><a href="/News"></a></li>
			<li class="tzy_dh_3"><a href="/Down.aspx"></a></li>
			<li class="tzy_dh_4"><a href="/Members"></a></li>
			<li class="tzy_dh_5"><a href="/Match"></a></li>
			<li class="tzy_dh_6"><a href="/Mall"></a></li>
			<li class="tzy_dh_7"><a href="/Prize"></a></li>
			<li class="tzy_dh_8"><a href="/Pay"></a></li>
			</ul>
			</div>
			<div class=" tzy_main_1">
				<div class=" tzy_main_1_left">
				<ul>
				<li class="tzy_main_1_left" id="sw1">
				<a href="/Down.aspx" ><img src="images/web/ananan_1.jpg" width="232" height="76"/></a>
				</li>
				<li class="shouji_flash" id="sw2">
				<a href="/app.aspx" ><img src="images/web/ananan_2.jpg" width="232" height="76"/></a>
				</li>
				<li class=" tzy_main_1_left3"><a href="/Register.aspx"></a></li>
				</ul>
				</div>
				<div class=" tzy_main_1_gg">
					<div id="frame">
					<div id="img">
					<ul>
					<li><a href='http://www.669.com/activity/520.html' target='_blank'><img src='Uploads/FlashPicture/804.jpg' alt='http://www.669.com/images/ad/czfl_ad.jpg' width='535' height='216'/></a></li>
					<li><a href='http://www.669.com/Popularize.aspx' target='_blank'><img src='Uploads/FlashPicture/749.jpg' alt='推广赚金' width='535' height='216'/></a></li>
					<li><a href='http://www.669.com/activity/452.html' target='_blank'><img src='Uploads/FlashPicture/596.gif' alt='一元购活动' width='535' height='216'/></a></li>
					<li><a href='http://reg.669.com/xincun/index.html' target='_blank'><img src='Uploads/FlashPicture/539.jpg' alt='豪华礼品无限派' width='535' height='216'/></a></li>
					<li><a href='http://www.669.com/announce/569.html' target='_blank'><img src='Uploads/FlashPicture/911.jpg' alt='国庆活动' width='535' height='216'/></a></li>
					</ul>
					</div>
					<div id="btn">
					<span></span><span></span><span></span><span></span><span></span>
					</div>
					</div>
				</div>
			<script type="text/javascript">
			$(function () {
			//幻灯片
			$(document).WIT_SetTab({ Nav: $('#btn span'), Field: $('#img li'), Auto: true, CurCls: 'hov' });
			});
			</script>
			<!--图片切换end- -->
			<div class="tzy_main_1_dl">
			<!--用户登录-->
			<script src="js/Ascx/Login.js" type="text/jscript"></script>
			<table align="left" class="tzy_dlk" style="display:block" id="user_nologin"> 
				<tr>
					<td colspan="2" align="left" class="padding_bottom_5"><img src="images/web/tzy_dl_2.jpg" width="114" height="44" alt=""/></td>
				</tr>
				<tr>
					<td width="40" class="padding_10"><input name="txtLoginName" type="text" class="tzy_dlk2" id="txtLoginName" tabindex="1" value="账 号" onblur="if(this.value==''){this.value=this.defaultValue;}" onfocus="if(this.value=='' || this.value==this.defaultValue){this.value='';}"/></td>
					<td width="87" rowspan="2" align="left" valign="top"><input type="image" src="images/web/tzy_an_4.jpg" tabindex="5" onclick="OnLoginSubmit(this);" id="btnLogin" /></td>
				</tr>
				<tr>
					<td class="padding_10"><input name="txtLoginPassword1" type="text" tabindex="2" class="tzy_dlk2" id="txtLoginPassword1" value="密 码" /><input name="txtLoginPassword" type="password" class="tzy_dlk2" tabindex="3" id="txtLoginPassword" value="" style="display:none;"/>
					<script type="text/javascript">
					var showPwd = $("#txtLoginPassword1"), pwd = $("#txtLoginPassword");
					showPwd.focus(function () {
					pwd.show().focus();
					showPwd.hide();
					});
					pwd.blur(function () {
					if (pwd.val() == "") {
					showPwd.show();
					pwd.hide();
					}
					}); 
					</script> 
					</td>
				</tr>
				<tr>
					<td class="padding_10" colspan="2">
						<table width="0" border="0" align="left" cellpadding="0" cellspacing="0" style=" padding-top:3px;">
							<tr>
								<td><input name="txtValidate" id="txtValidate" type="text" tabindex="4" class="tzy_dlk3" onblur="if(this.value==''){this.value=this.defaultValue;}" onfocus="if(this.value=='' || this.value==this.defaultValue){this.value='';}" value="验证码" /></td>
								<td>&nbsp;</td>
								<td><img src="http://www.669.com/Public/Validate.ashx" width="56" height="20" id="imgValidate" alt="" onclick="this.src='http://www.669.com/Public/Validate.ashx?x='+Math.random()"/></td> 
								<td><span id="spanLoading"></span></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<div id="logintable" style=" float:left;"></div>
					<table width="0" border="0" align="left" class="tzy_jz">
					<tr>
					<td><input type="checkbox" name="chbRembPassword" id="chbRembPassword"/></td>
					<td width="5"></td>
					<td class="write12">记住密码</td>
					<td width="12">&nbsp;</td>
					<td><a href="/Register.aspx" class="write12">快速注册</a></td>
					<td width="12">&nbsp;</td>
					<td><a href="/GetPassword.aspx" class="write12">找回密码</a></td>
					</tr>
					</table>
					</td>
				</tr>
			</table>
			<table width="250" align="left" class="tzy_dlk_dlh" style="display:none" id="user_logined">
				<tr>
					<td colspan="5" align="left" class="padding_bottom_5"><img src="images/web/tzy_dl_2.jpg" width="114" height="44" /></td>
				</tr>
				<tr>
					<td colspan="5" align="left" valign="top" class="padding_bottom_4">
					<table width="215" border="0" align="left" cellpadding="0" cellspacing="0" class="tzy_border2">
					<tr>
					<td width="145"><span class="huang" id="user_name">0</span><span class="huang_2">欢迎您</span></td>
					<td width="55" class="tzy_ljlj"><a href="/Members/" class="write12_2">用户中心</a></td>
					</tr>
					<tr>
					<td height="6" colspan="2"></td>
					</tr>
					</table>
					</td>
				</tr>
				<tr>
					<td colspan="5" class="padding_bottom_4">
					<table width="215" border="0" cellspacing="0" cellpadding="0" class="tzy_border2">
					<tr>
					<td width="23"><img src="images/web/tzy_dlh_1.jpg" width="17" height="17" /></td>
					<td width="62" class="tzy_dlh_jb">身上金豆：<br /></td>
					<td width="130" class="tzy_dlh_jb2" id="wallet_money"></td>
					</tr>
					<tr>
					<td><img src="images/web/tzy_dlh_2.jpg" width="18" height="15" /></td>
					<td width="62" class="tzy_dlh_jb">银行金豆：<br /></td>
					<td width="130" class="tzy_dlh_jb2" id="bank_money">0</td>
					</tr>
					<tr>
					<td><img src="images/web/tzy_dlh_3.jpg" width="13" height="17" /></td>
					<td width="62" class="tzy_dlh_jb">奖券：</td>
					<td width="130" class="tzy_dlh_jb2" id="user_voucher">0</td>
					</tr>
					</table>
					</td>
				</tr>
				<tr>
					<td colspan="5" class="padding_bottom_4">
					<h3 class="tzy_an_8_2"><a href="javascript:void(0)" onclick="ExitLogin();"></a></h3>
					</td>
				</tr>
			</table>
			<!--用户登录end-->
			</div>
			</div>
			<div class=" tzy_main_2">
				<div class="tzy_main_2_left">
				<ul>
				<li class="tzy_main_2_left1"><a href="/Pay/"></a></li>
				<li class="tzy_main_2_left2"><a href="/Help.aspx?params=224"></a></li>
				<li class="tzy_main_2_left3"><a href="/VIP.aspx"></a></li>
				<li class="tzy_main_2_left4"><a href="/Popularize.aspx"></a></li>
				</ul>
				</div>
			<!--新闻切换- -->
			<div class="tzy_main_2_main">
			<div class="tzy_main_2_main2" id="NewsTab">
			<ul>
			<li class="tzy_ing_2"><a href="/News/">最新</a></li>
			<li><a href="/newscenter/page_1.html" target="_blank">新闻</a></li>
			<li><a href="/announce/page_1.html" target="_blank">公告</a></li>
			<li><a href="/activity/page_1.html" target="_blank">活动</a></li>
			</ul>
			</div>
			<div class="tzy_main_2_main3">
			<dl>
			<dt><a href="/announce/589.html" target="_blank"
			#CC3333><b>
			公告</b>双十一特惠袭来</a>
			</dt>
			<dd>
			2014-11-11</dd>
			<dt><a href="/announce/587.html" target="_blank"
			#FF6666><b>
			公告</b>微信支付奖励名单</a>
			</dt>
			<dd>
			2014-10-30</dd>
			<dt><a href="/announce/451.html" target="_blank"
			><b>
			公告</b>《永利会》作弊处罚制度</a>
			</dt>
			<dd>
			2014-10-17</dd>
			<dt><a href="/announce/500.html" target="_blank"
			><b>
			公告</b>《帐号安全规范》</a>
			</dt>
			<dd>
			2014-10-17</dd>
			<dt><a href="/announce/581.html" target="_blank"
			#FF6633><b>
			公告</b>关注微信，拿游戏礼包</a>
			</dt>
			<dd>
			2014-10-16</dd>
			<dt><a href="/announce/577.html" target="_blank"
			><b>
			公告</b>身娇肉贵美人鱼来到海底世界</a>
			</dt>
			<dd>
			2014-10-13</dd>
			</dl>
			</div>
			<div class="tzy_main_2_main3" style="display: none">
			<dl>
			<dt><a href="/newscenter/565.html" target="_blank"
			><b>
			新闻</b>棋牌行业：解密点点妙合作内幕 分成竟高达7...</a>
			</dt>
			<dd>
			2014-09-23</dd>
			<dt><a href="/newscenter/564.html" target="_blank"
			><b>
			新闻</b>走进点点妙 且看棋牌大亨如何颠覆快播江湖</a>
			</dt>
			<dd>
			2014-09-23</dd>
			<dt><a href="/newscenter/550.html" target="_blank"
			#FF6699><b>
			新闻</b>传统棋牌行业遇冷 乐猴借点点妙火爆四川</a>
			</dt>
			<dd>
			2014-09-16</dd>
			<dt><a href="/newscenter/547.html" target="_blank"
			#FF33CC><b>
			新闻</b>快播原办公楼易主 现公司竟是棋牌游戏大鳄</a>
			</dt>
			<dd>
			2014-09-12</dd>
			<dt><a href="/newscenter/537.html" target="_blank"
			><b>
			新闻</b>行业内幕：代理棋牌游戏时如何避免被骗</a>
			</dt>
			<dd>
			2014-08-27</dd>
			<dt><a href="/newscenter/463.html" target="_blank"
			><b>
			新闻</b>同时在线突破万人，8成专业棋牌玩家选择紫金...</a>
			</dt>
			<dd>
			2014-04-15</dd>
			</dl>
			</div>
			<div class="tzy_main_2_main3" style="display: none">
			<dl>
			<dt><a href="/announce/589.html" target="_blank"
			#CC3333><b>
			公告</b>双十一特惠袭来</a>
			</dt>
			<dd>
			2014-11-11</dd>
			<dt><a href="/announce/587.html" target="_blank"
			#FF6666><b>
			公告</b>微信支付奖励名单</a>
			</dt>
			<dd>
			2014-10-30</dd>
			<dt><a href="/announce/451.html" target="_blank"
			><b>
			公告</b>《永利会》作弊处罚制度</a>
			</dt>
			<dd>
			2014-10-17</dd>
			<dt><a href="/announce/500.html" target="_blank"
			><b>
			公告</b>《帐号安全规范》</a>
			</dt>
			<dd>
			2014-10-17</dd>
			<dt><a href="/announce/581.html" target="_blank"
			#FF6633><b>
			公告</b>关注微信，拿游戏礼包</a>
			</dt>
			<dd>
			2014-10-16</dd>
			<dt><a href="/announce/577.html" target="_blank"
			><b>
			公告</b>身娇肉贵美人鱼来到海底世界</a>
			</dt>
			<dd>
			2014-10-13</dd>
			</dl>
			</div>
			<div class="tzy_main_2_main3" style="display: none">
			<dl>
			<dt><a href="/activity/521.html" target="_blank"
			#FF6600><b>
			活动</b>永利会贵宾礼包火爆上线</a>
			</dt>
			<dd>
			2014-08-15</dd>
			<dt><a href="/activity/520.html" target="_blank"
			#FF6600><b>
			活动</b>充值返利500万，你还等什么！</a>
			</dt>
			<dd>
			2014-08-15</dd>
			<dt><a href="/activity/519.html" target="_blank"
			><b>
			活动</b>首次充值，十元返金券</a>
			</dt>
			<dd>
			2014-08-15</dd>
			<dt><a href="/activity/518.html" target="_blank"
			#FF3333><b>
			活动</b>一元宝换百万金豆</a>
			</dt>
			<dd>
			2014-08-15</dd>
			<dt><a href="/activity/517.html" target="_blank"
			><b>
			活动</b>贵宾俱乐部，活动、豪礼送不停</a>
			</dt>
			<dd>
			2014-08-15</dd>
			<dt><a href="/activity/483.html" target="_blank"
			><b>
			活动</b>邀好友，百万奖金等你拿！</a>
			</dt>
			<dd>
			2014-05-26</dd>
			</dl>
			</div>
			</div>
				<!---新闻切换end- -->
				<div class="tzy_main_3_main">
					<p><a href="/Game/?params=10003300"><img src="images/web/ad/right4.gif" alt="永利会斗地主" width="226" height="69"/></a></p>
					<p><a href="/Game/?params=30000600"><img src="images/web/ad/right5.gif" alt="永利会捕鱼" width="226" height="69"/></a></p>
					<p><a href="/Game/?params=10900500"><img src="images/web/ad/right3.gif" alt="永利会牛牛" width="226" height="69"/></a></p>
				</div>
			</div>
			<div class=" tzy_main_3" id="gameScroll">
				<div class="tzy_main_3_an1">
				<img src="images/web/tzy_an_7.jpg" id="leftSlideButton" alt="" style="width: 26px; height: 44px; float: left; margin: 45px 10px 0px 15px;" 
				onmouseout="this.src='images/web/tzy_an_7.jpg';"
				onmouseover="this.src='images/web/tzy_an_7_2.jpg';" />
				</div>
				<div class="tzy_main_3_nr" style="overflow: hidden;">
				<div class="myScroll" id="product0">
				<div class="myBlock">
				<ul>
				<li>
				<dl>
				<dt><a href="">
				<img src="images/web/ad/wj1.jpg" alt="" /></a></dt></dl>
				</li>
				<li>
				<dl>
				<dt><a href="">
				<img src="images/web/ad/wj2.jpg" alt="" /></a></dt></dl>
				</li>
				<li>
				<dl>
				<dt><a href="">
				<img src="images/web/ad/wj3.jpg" alt="" /></a></dt></dl>
				</li>
				<li>
				<dl>
				<dt><a href="">
				<img src="images/web/ad/wj4.jpg" alt="" /></a></dt></dl>
				</li>
				<li>
				<dl>
				<dt><a href="">
				<img src="images/web/ad/wj5.jpg" alt="" /></a></dt></dl>
				</li>
				<li>
				<dl>
				<dt><a href="">
				<img src="images/web/ad/wj6.jpg" alt="" /></a></dt></dl>
				</li>
				<li>
				<dl>
				<dt><a href="">
				<img src="images/web/ad/wj7.jpg" alt="" /></a></dt></dl>
				</li>
				<li>
				<dl>
				<dt><a href="">
				<img src="images/web/ad/wj8.jpg" alt="" /></a></dt></dl>
				</li>
				<li>
				<dl>
				<dt><a href="">
				<img src="images/web/ad/wj9.jpg" alt="" /></a></dt></dl>
				</li>
				<li>
				<dl>
				<dt><a href="">
				<img src="images/web/ad/wj10.jpg" alt="" /></a></dt></dl>
				</li>
				<li>
				<dl>
				<dt><a href="">
				<img src="images/web/ad/wj11.jpg" alt="" /></a></dt></dl>
				</li>
				</ul>
				</div>
				</div>
				</div>
				<div class="tzy_main_3_an2">
					<img src="images/web/tzy_an_6.jpg" id="rightSlideButton" alt="" style="width: 26px;
					height: 44px; float: left; margin: 45px 20px 0px 10px;" onmouseout="this.src='images/web/tzy_an_6.jpg';"
					onmouseover="this.src='images/web/tzy_an_6_2.jpg';" />
				</div>
			</div>
			<script type="text/javascript">
			//手动滚动
			$("#product0").myScroll({
			visible: 8,
			scroll: 2,
			speed: 1000
			});
			</script>
			<div class=" tzy_main_4">
				<div class=" tzy_main_4_gg">
				<a href="http://reg.669.com/alicall" target="_blank">
				<img src="images/web/tzy_gg_5.jpg" alt="" /></a>
				</div>
				<div class="tzy_main_rmdj">
				<div class="tzy_main_rmdj2">
				<ul>
				<li class="tzy_ing_2"><a href="javascript:void(0);">热门道具</a></li>
				<li><a href="javascript:void(0);">热门奖品</a></li>
				</ul>
				<p>
				<a href="#">更多>></a></p>
				</div>
					<div class="tzy_main_rmdj3">
						<div class="tzy_rmdj3_box">
							<dl>
							<dt>
							<img src="images/web/ad/pig.jpg" alt="" /></dt>
							<dd>
							<span>变猪头</span></dd>
							<dd>
							价格：150元宝</dd>
							<dd>
							赠送：100金币</dd>
							<dd>
							<p class="tzy_an_1">
							<a href="#"></a>
							</p>
							</dd>
							</dl>
						</div>
						<div class="tzy_rmdj3_box">
							<dl>
							<dt>
							<img src="images/web/ad/cjdlb.jpg" alt="" /></dt>
							<dd>
							<span>超级大喇叭</span></dd>
							<dd>
							价格：150元宝</dd>
							<dd>
							赠送：100金币</dd>
							<dd>
							<p class="tzy_an_1">
							<a href="#"></a>
							</p>
							</dd>
							</dl>
						</div>
						<div class="tzy_rmdj3_box">
							<dl>
							<dt>
							<img src="images/web/ad/dlb.jpg" alt="" /></dt>
							<dd>
							<span>大喇叭</span></dd>
							<dd>
							价格：150元宝</dd>
							<dd>
							赠送：100金币</dd>
							<dd>
							<p class="tzy_an_1">
							<a href="#"></a>
							</p>
							</dd>
							</dl>
						</div>
						<div class="tzy_rmdj3_box">
							<dl>
							<dt>
							<img src="images/web/ad/egg.jpg" alt="" /></dt>
							<dd>
							<span>扔鸡蛋</span></dd>
							<dd>
							价格：150元宝</dd>
							<dd>
							赠送：100金币</dd>
							<dd>
							<p class="tzy_an_1">
							<a href="#"></a>
							</p>
							</dd>
							</dl>
						</div>
					</div>
				<div class="tzy_main_rmdj3" style="display: none">
					<div class="tzy_rmdj3_box">
					<dl>
					<dt>
					<img src="images/web/ad/flower.jpg" alt="" /></dt>
					<dd>
					<span>送花</span></dd>
					<dd>
					价格：150元宝</dd>
					<dd>
					赠送：100金币</dd>
					<dd>
					<p class="tzy_an_1">
					<a href="#"></a>
					</p>
					</dd>
					</dl>
					</div>
					<div class="tzy_rmdj3_box">
					<dl>
					<dt>
					<img src="images/web/ad/tupao.jpg" alt="" /></dt>
					<dd>
					<span>土炮</span></dd>
					<dd>
					价格：150元宝</dd>
					<dd>
					赠送：100金币</dd>
					<dd>
					<p class="tzy_an_1">
					<a href="#"></a>
					</p>
					</dd>
					</dl>
					</div>
					<div class="tzy_rmdj3_box">
					<dl>
					<dt>
					<img src="images/web/ad/arrow.jpg" alt="" /></dt>
					<dd>
					<span>万箭齐发</span></dd>
					<dd>
					价格：150元宝</dd>
					<dd>
					赠送：100金币</dd>
					<dd>
					<p class="tzy_an_1">
					<a href="#"></a>
					</p>
					</dd>
					</dl>
					</div>
					<div class="tzy_rmdj3_box">
					<dl>
					<dt>
					<img src="images/web/ad/kisser.jpg" alt="" /></dt>
					<dd>
					<span>献吻</span></dd>
					<dd>
					价格：150元宝</dd>
					<dd>
					赠送：100金币</dd>
					<dd>
					<p class="tzy_an_1">
					<a href="#"></a>
					</p>
					</dd>
					</dl>
					</div>
				</div>
				</div>
			</div>
    		<%@ include file="footer.jsp" %>
            <style>
			#qqonline{
				 position:fixed; display:block;margin:0;
				 right:1px; top:45px; clear:both;z-index:3; overflow:hidden;
				 _position:absolute;
				 _top:expression(documentElement.scrollTop+documentElement.clientHeight-this.offsetHeight);
			}
			#closeSign { width:26px; height:18px; float:right; padding-top:5px; padding-right:10px; clear:both;cursor:pointer;}
			#contactButtom {width:85px; height:25px; margin-left:20px; _margin-left:10px; *margin-left:10px;cursor:pointer;}
			#showQQ{width:122px; height:278px;background:url(images/web/FloatQQ.jpg) top center no-repeat;}
			#hideQQ{width:35px;height:89px;background:url(images/web/OnlineConsultative.gif) top center no-repeat; display:none; cursor:pointer;}
			</style>
			<div id="qqonline" style="display:none;">
				<div id="showQQ">
				<div id="closeSign">
				</div>
				<div style="width: 122px; height: 250px; _height: 225px; *height: 225px;">
				</div>
				<div id="contactButtom">
				</div>
				</div>
				<div id="hideQQ">
				</div>
			</div>
			<style type="text/css">
			#contact_us{ position:fixed; display:block; right:0px; top: 100px; z-index:3; overflow:hidden; z-index:9999;
			_position:absolute; _top:expression(documentElement.scrollTop+documentElement.clientHeight-this.offsetHeight);}
			</style>
			<!--<script charset="utf-8" src="http://wpa.b.qq.com/cgi/wpa.php"></script>-->
			<div id="contact_us">
				<img src="images/web/ad/zx_3.png" width="155px" height="446px" usemap="#Map" alt="" />
				<map name="Map" id="Map">
				<area shape="rect" coords="19,159,134,197" alt=""
				href="javascript:void(0)" onclick="javascript:window.open('#','','width=940,height=690')"
				target="1" />
				<area shape="rect" coords="19,203,133,292" alt="" href="javascript:void(0)" id="BizQQWPA" target="2" />
				</map>
			</div>
			<script>
			BizQQWPA.addCustom({ aty: '0', a: '0', nameAccount: 4000520669, selector: 'BizQQWPA' });
			//BizQQWPA.visitor({ nameAccount: '4000520669' });
			</script>
			<a href="#">.</a>
			<div style="display:none"></div> 
    	</div>   
	</div>
</div>
</body>
</html>