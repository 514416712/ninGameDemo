<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
	<%
	pageContext.setAttribute("APP_PATH",request.getContextPath());
	%>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>test</title>
		<link rel="stylesheet" href="${APP_PATH }/static/css2/_9game.css" />
		<script type="text/javascript" src="${APP_PATH }/static/js/mui.min.js"></script>
		<link rel="stylesheet" href="${APP_PATH }/static/css2/mui.css"> 
		<script type="text/javascript" charset="utf-8">
			mui.init();
		</script>
		<script type="text/javascript">
			mui.plusReady(function() {
				//获得slider插件对象
				var gallery = mui(".mui-slider");
				gallery.slider({
					interval: 2000//自动轮播周期，若为0则不自动播放，默认为0；
				});
			});
		</script>
	</head>

	<body>

		<body>
			<div style="width: 700px; margin: 0 auto;">
				<!--标题栏-->
				<div>
					<div class="bcolor mui-row">
						<div id="logo1" class="mui-col-xs-0;">
							<a href="#">
								<img src="http://p68qlxe57.bkt.clouddn.com/index_logo.png" />
							</a>
						</div>
						<div class="mui-col-xs-0" style="padding-top: 18px;">
							<input type="text" name="" id="rcorners9" />
						</div>

						<div class="mui-col-xs-1" id="logo2">
							<a href="#"><img src="http://p68qlxe57.bkt.clouddn.com/icon_message.png" /></a>
						</div>
					</div>
				</div>

				<!--轮播图-->
				<div class="mui-slider">
					<div class="mui-slider-group mui-slider-loop">
						<!--支持循环，需要重复图片节点-->
						<div class="mui-slider-item mui-slider-item-duplicate">
							<a href="#"><img src="http://p68qlxe57.bkt.clouddn.com/19369044.jpg" /></a>
						</div>
						<div class="mui-slider-item">
							<a href="#"><img src="http://p68qlxe57.bkt.clouddn.com/19369452.jpg" /></a>
						</div>
						<div class="mui-slider-item">
							<a href="#"><img src="http://p68qlxe57.bkt.clouddn.com/19346230.jpg" /></a>
						</div>
						<div class="mui-slider-item">
							<a href="#"><img src="http://p68qlxe57.bkt.clouddn.com/19368538.jpg" /></a>
						</div> 
	 					<div class="mui-slider-item">
							<a href="#"><img src="http://p68qlxe57.bkt.clouddn.com/19369044.jpg" /></a>
						</div>
						<!-- 支持循环，需要重复图片节点 -->
						<div class="mui-slider-item mui-slider-item-duplicate">
							<a href="#"><img src="http://p68qlxe57.bkt.clouddn.com/19369452.jpg" /></a>
						</div>  
					</div>
					<div class="mui-slider-indicator">
						<div class="mui-indicator mui-active"></div>
						<div class="mui-indicator"></div>
						<div class="mui-indicator"></div>
						<div class="mui-indicator"></div>
					</div>
				</div>

				<!--五个导航-->
				<div class="row">

					<div class="item">
						<a href="#"><img src="http://p68qlxe57.bkt.clouddn.com/18547785.png" /></a>
						<p align="center" class="font1">分类</p>
					</div>
					<div class="item">
						<a href="#"><img src="http://p68qlxe57.bkt.clouddn.com/18547785.png" /></a>
						<p align="center" class="font1">新游</p>
					</div>
					<div class="item">
						<a href="#"><img src="http://p68qlxe57.bkt.clouddn.com/18547785.png" /></a>
						<p align="center" class="font1">最热</p>
					</div>
					<div class="item">
						<a href="#"><img src="http://p68qlxe57.bkt.clouddn.com/18547785.png" /></a>
						<p align="center" class="font1">单机</p>
					</div>
					<div class="item">
						<a href="#"><img src="http://p68qlxe57.bkt.clouddn.com/18547785.png" /></a>
						<p align="center" class="font1">开测</p>
					</div>

				</div>
				<!--独家推荐-->
				<div class="bcolor mui-row" style="padding-top: 1.5rem;">
					
					<div align="center">
						独家推荐
					</div>
				<a href="#">&nbsp;</a><br>
					<!--楚留香-->
					<div>
						<div id="padding1" class="float2">
							<a href="#"><img src="http://p68qlxe57.bkt.clouddn.com/18591760_.png" /></a>
						</div>
						<div id="fontalign">
							<a href="#">&nbsp;</a><br>
							<a href="#" id="font2">
								楚留香
							</a>
							<div class="float3">
								<p id="font4">下载</p>
							</div>
							<br>
							<br>
							<a href="#">
								<p class="font3">角色|340.9m</p>
							</a>
							<a href="#">
								<p class="font3_">网易开年巨制，武侠新世代</p>
							</a>
						</div>
					</div>
					&nbsp;
				</div>

				<!--留空-->
				<br />
				<!--精品游戏-->
				
				<div class="bcolor mui-row">
					<div style="padding-top: 25px;" class="mui-row">
						<div class="mui-col-sm-10">
							<h2 style="padding-left: 30px;">精品游戏</h2>
						</div>
						<div class="mui-col-sm-0">
							<a href="#">
								<font size="5" color="#000000">更多</font>
								<img src="http://p68qlxe57.bkt.clouddn.com/icon-right-black.png" />
							</a>
						</div>
					</div>
					<!--游戏目录-->
					<c:forEach items="${gameMessage}" var="g">
					<div class="item2">
						<a href="#"><img class="imgsize" src="${g.iconUrl}" /></a>
						<a href="${g.downloadUrl}">
							<p class="font5">${g.game}</p>
						</a>
						<a href="#">
							<p class="font6">${g.description}|${g.size}m</p>
						</a>
						<div class="float3">
							<p id="font4">下载</p>
						</div>
					</div>
					</c:forEach>
					
					&nbsp;
				</div>
				<!--留空-->
				<br />
				<!--人气推荐-->

				<div class="bcolor mui-row">
					<div style="padding-top: 25px;" class="mui-row">
						<div class="mui-col-sm-10">
							<h2 style="padding-left: 300px;">人气推荐</h2>
						</div>
						<div class="mui-col-sm-0">
							<a href="#">
								<font size="5" color="#000000">更多</font>
								<img src="http://p68qlxe57.bkt.clouddn.com/icon-right-black.png" />
							</a>
						</div>
					</div>
					<br />
					<c:forEach items="${gameMessage1}" var="h">
					<div class="item3 b">
						<a href="${h.downloadUrl}"><img class="imgsize" src="${h.iconUrl}" /></a>
						<a href="${h.downloadUrl}">
							<p class="font5">${h.game}</p>
						</a>
						<a href="#">
							<p class="font6">${h.description}|${h.size}m</p>
						</a>
						<div class="float4">
							<p id="font4">下载</p>
						</div>
					</div>
					</c:forEach>
					
					&nbsp;
				</div>

				<!--换行-->
				<br>
				<!--新游抢先玩-->
				<div class="bcolor mui-row">
					<div style="padding-top: 25px;" class="mui-row">
						<div class="mui-col-sm-10">
							<h2 style="padding-left: 30px;">新游抢鲜玩</h2>
						</div>
						<div class="mui-col-sm-0">
							<a href="#">
								<font size="5" color="#000000">更多</font>
								<img src="http://p68qlxe57.bkt.clouddn.com/icon-right-black.png" />
							</a>
						</div>
					</div>
					&nbsp;

					<!--游戏-->
					<c:forEach items="${gameMessage2 }" var="j">
					<div>
						<div id="padding1" class="float2">
							<a href="${j.downloadUrl}"><img src="${j.iconUrl}" /></a>
						</div>
						<div id="fontalign">
							<a href="${j.downloadUrl}">&nbsp;</a><br>
							<a href="${j.downloadUrl}" id="font2">
								${j.game}
							</a>
							<div class="float3">
								<p id="font4">下载</p>
							</div>
							<br>
							<br>
							<a href="#">
								<p class="font3">${j.description}|${j.size}m</p>
							</a>
							<a href="#">
								<p class="font3_">${j.rmark}</p>
							</a>
						</div>
					</div>
					<br />
					<hr width="90%" color="#EBEBEB" />
					<br />
					</c:forEach>
					<br>
				</div>
				<!--精选游戏-->

				<!--换行-->
				<br/>
				<div class="bcolor mui-row">
					<div style="padding-top: 25px;" class="mui-row">
						<div class="mui-col-sm-10">
							<h2 style="padding-left: 30px;">精选游戏</h2>
						</div>
						<div class="mui-col-sm-0">
							<a href="#">
								<font size="5" color="#000000">更多</font>
								<img src="http://p68qlxe57.bkt.clouddn.com/icon-right-black.png" />
							</a>
						</div>
					</div>
					<br />
					<br />

					<!--游戏-->
					<c:forEach items="${gameMessage2 }" var="j">
					<div>
						<div id="padding1" class="float2">
							<a href="${j.downloadUrl}"><img src="${j.iconUrl}" /></a>
						</div>
						<div id="fontalign">
							<a href="${j.downloadUrl}">&nbsp;</a><br>
							<a href="${j.downloadUrl}" id="font2">
								${j.game}
							</a>
							<div class="float3">
								<p id="font4">下载</p>
							</div>
							<br>
							<br>
							<a href="#">
								<p class="font3">${j.description}|${j.size}m</p>
							</a>
							<a href="#">
								<p class="font3_">${j.rmark}</p>
							</a>
						</div>
					</div>
					<br />
					<hr width="90%" color="#EBEBEB" />
					<br />
					</c:forEach>
					<br />
				</div>
				<br />
				<!--视频-->
				<div class="bcolor mui-row">
					<video src="imgs2/video1_1080p_落版.mp4" controls="controls" width="100%"></video>
					&nbsp;
					<br />
					<p>
						<font size="5" style="padding-left: 25px;">网易2018开年巨制，刷新你的武侠世界观</font>
					</p>
					<br />
					<hr width="90%" color="#EBEBEB" />
					<br />
					<!--游戏名-->
					<div>
						<div id="padding1" class="float2">
							<a href="#"><img src="imgs2/19109883_.png" /></a>
						</div>
						<div id="fontalign">
							<a href="#">&nbsp;</a><br>
							<a href="#" id="font2">
								楚留香
							</a>
							<div class="float3">
								<p id="font4">下载</p>
							</div>
							<a href="#">
								<p class="font3">角色|340.9m</p>
							</a>
							<a href="#">
								<p class="font3_">网易开年巨制，武侠新世代</p>
							</a>
						</div>
					</div>
					<br />
				</div>

				<!--打发时间必备-->

				<!--换行-->
				<br/>
				<div class="bcolor mui-row">
					<div style="padding-top: 25px;" class="mui-row">
						<div class="mui-col-sm-10">
							<h2 style="padding-left: 30px;">打发时间必备</h2>
						</div>
						<div class="mui-col-sm-0">
							<a href="#">
								<font size="5" color="#000000">更多</font>
								<img src="http://p68qlxe57.bkt.clouddn.com/icon-right-black.png" />
							</a>
						</div>
					</div>
					<br />
					<br />

					<!--游戏-->
					<c:forEach items="${gameMessage2 }" var="j">
					<div>
						<div id="padding1" class="float2">
							<a href="${j.downloadUrl}"><img src="${j.iconUrl}" /></a>
						</div>
						<div id="fontalign">
							<a href="${j.downloadUrl}">&nbsp;</a><br>
							<a href="${j.downloadUrl}" id="font2">
								${j.game}
							</a>
							<div class="float3">
								<p id="font4">下载</p>
							</div>
							<br>
							<br>
							<a href="#">
								<p class="font3">${j.description}|${j.size}m</p>
							</a>
							<a href="#">
								<p class="font3_">${j.rmark}</p>
							</a>
						</div>
					</div>
					<br />
					<hr width="90%" color="#EBEBEB" />
					<br />
					</c:forEach>
					<br />
				</div>

				<!--你可能错过了的好游戏-->
				<!--精选游戏-->

				<!--换行-->
				<br/>
				<div class="bcolor mui-row">
					<div style="padding-top: 25px;" class="mui-row">
						<div class="mui-col-sm-10">
							<h2 style="padding-left: 30px;">你可能错过了的好游戏</h2>
						</div>
						<div class="mui-col-sm-0">
							<a href="#">
								<font size="5" color="#000000">更多</font>
								<img src="http://p68qlxe57.bkt.clouddn.com/icon-right-black.png" />
							</a>
						</div>
					</div>
					<br />
					<br />

					<!--游戏-->
					<c:forEach items="${gameMessage2 }" var="j">
					<div>
						<div id="padding1" class="float2">
							<a href="${j.downloadUrl}"><img src="${j.iconUrl}" /></a>
						</div>
						<div id="fontalign">
							<a href="${j.downloadUrl}">&nbsp;</a><br>
							<a href="${j.downloadUrl}" id="font2">
								${j.game}
							</a>
							<div class="float3">
								<p id="font4">下载</p>
							</div>
							<br>
							<br>
							<a href="#">
								<p class="font3">${j.description}|${j.size}m</p>
							</a>
							<a href="#">
								<p class="font3_">${j.rmark}</p>
							</a>
						</div>
					</div>
					<br />
					<hr width="90%" color="#EBEBEB" />
					<br />
					</c:forEach>
					<br />
				</div>
				<br />
				<!--新游预约-->
					<br/>
					<div class="bcolor mui-row">
						<div style="padding-top: 25px;" class="mui-row">
							<div class="mui-col-sm-10">
								<h2 style="padding-left: 30px;">新游预约</h2>
							</div>
							<div class="mui-col-sm-0">
								<a href="#">
									<font size="5" color="#000000">更多</font>
									<img src="http://p68qlxe57.bkt.clouddn.com/icon-right-black.png" />
								</a>
							</div>
						</div>
						<br />
						<!--两张图片-->
						<div class="half1">
							<a href="#" id="show"><img src="imgs2/19393041.jpeg" /></a>
							<!--图片-->
							<!--图片文字-->
							<a href="#" id="show2">
								<div  class="dsc-wrap ba">
									<img src="imgs2/18860409_.png"  id="imgsize1" />
								<div class="txt">
									<p class="title">第五人格</p>
									<p class="dsc">网易首款生存对战网游</p>
								</div>
							</div>
							</a>
							<a href="#" id="status">
								预约福利
							</a>
						</div>
						<div class="half1">
							<a href="#" id="show"><img src="imgs2/19393041.jpeg" /></a>
							<!--图片-->
							<!--图片文字-->
							<a href="#" id="show2">
								<div  class="dsc-wrap ba">
									<img src="imgs2/18860409_.png"  id="imgsize1" />
								<div class="txt">
									<p class="title">第五人格</p>
									<p class="dsc">网易首款生存对战网游</p>
								</div>
							</div>
							</a>
							<a href="#" id="status">
								预约福利
							</a>
						</div>
						<br />
					</div>
					<br />
					
					<!--分类精选-->
					<dl class="test1">
						<dt>
							<h2>分类精选</h2>
							<a href="#">更多<img src="http://p68qlxe57.bkt.clouddn.com/icon-right-black.png"></a>
						</dt>
						<dd >
							<a href="#" class="category_">
								<div class="txt">
									<h5>角色</h5>
									<p>世界等你来拯救</p>
								</div>	
								<img src="imgs2/16966431_.png"/>
							</a>
							<a href="#" class="category_">
								<div class="txt">
									<h5>角色</h5>
									<p>世界等你来拯救</p>
								</div>	
								<img src="imgs2/16966431_.png"/>
							</a>
							<!--===================================-->
							<a href="#" class="category_">
								<div class="txt">
									<h5>角色</h5>
									<p>世界等你来拯救</p>
								</div>	
								<img src="imgs2/16966431_.png"/>
							</a>
							<a href="#" class="category_">
								<div class="txt">
									<h5>角色</h5>
									<p>世界等你来拯救</p>
								</div>	
								<img src="imgs2/16966431_.png"/>
							</a>
							<!--============================================-->
							<a href="#" class="category_">
								<div class="txt">
									<h5>角色</h5>
									<p>世界等你来拯救</p>
								</div>	
								<img src="imgs2/16966431_.png"/>
							</a>
							<a href="#" class="category_">
								<div class="txt">
									<h5>角色</h5>
									<p>世界等你来拯救</p>
								</div>	
								<img src="imgs2/16966431_.png"/>
							</a>
						</dd>
					</dl>
					<br />
					<!--猜你喜欢-->
					<!--<dl class="bcolor">
						<dt class="test1">
							<h2>猜你喜欢</h2>						
						</dt>
						<div class="games">
							<dd>
								
							</dd>
						</div>
					</dl>-->
					
					<!--下载客户端-->
					<div class="download1">
						<a href="#" >
							<p class="float6" style="background-color: #fff;">
								<img src="imgs2/download_logo.png" />
								下载九游客户端
								<i>（领礼包看攻略）</i>
							</p>
							<div class="download2" style="background-color: #fff;">
								<img src="imgs2/down-client_3354256.png"/>
							</div>
						</a>
					</div>
					&nbsp;<br />
					<br />
					<!--登陆注册-->
					<div class="login" >
					<div class="category1">
						<a href="#">
							<img src="imgs2/icon-bottom1.png"/>
							<p>论坛</p>
						</a>
						<a href="#">
							<img src="imgs2/icon-bottom1.png"/>
							<p>论坛</p>
						</a>
						<a href="#">
							<img src="imgs2/icon-bottom1.png"/>
							<p>论坛</p>
						</a>
						<a href="#">
							<img src="imgs2/icon-bottom1.png"/>
							<p>论坛</p>
						</a>
					</div>
					<!--登陆注册-->
					<div class="login1">
						<p class="txt">登陆可以参与活动，领取礼包</p>	
						<div class="btn">
							<a href="#">登陆</a>
							<a href="#">注册</a>
						</div>
					</div>
					</div>
				</div>
		</body>
	</body>

</html>