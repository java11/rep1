<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/app/include.inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Demo</title>
<link rel="stylesheet" type="text/css" href="${path}/js/js_plug/easyui/themes/pepper-grinder/easyui.css" id="swicth-style">
<script type="text/javascript" src="${path}/js/jquery/jquery.js"></script>
<script type="text/javascript" src="${path}/js/js_plug/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${path}/js/appjs/string_util.js"></script>
<style type="text/css">
body {
	font: 12px/20px "微软雅黑", "宋体", Arial, sans-serif, Verdana, Tahoma;
	padding: 0;
	margin: 0;
}
a:link {
 text-decoration: none;
}
a:visited {
 text-decoration: none;
}
a:hover {
 text-decoration: underline;
}
a:active {
 text-decoration: none;
}
.cs-north {
	height:60px;
}
.cs-north-bg {
	width: 100%;
	height: 100%;
}
.cs-north-logo {
	height: 40px;
	margin: 15px 0px 0px 5px;
	display: inline-block;
	color:#000000;font-size:22px;font-weight:bold;text-decoration:none
}
.cs-west {
	width:200px;padding:0px;
}
.cs-south {
 	height:25px;padding:0px;text-align:center; 
}
.cs-navi-tab {
	padding: 5px;
}
.cs-tab-menu {
	width:120px;
}
.cs-home-remark {
	padding: 10px;
}
.wrapper {
    float: right;
    height: 30px;
    margin-left: 10px;
}
.ui-skin-nav {
    float: right;
	padding: 0;
	margin-right: 10px;
	list-style: none outside none;
	height: 30px;
}

.ui-skin-nav .li-skinitem {
    float: left;
    font-size: 12px;
    line-height: 30px;
	margin-left: 10px;
    text-align: center;
}
.ui-skin-nav .li-skinitem span {
	cursor: pointer;
	width:10px;
	height:10px;
	display:inline-block;
}
.ui-skin-nav .li-skinitem span.cs-skin-on{
	border: 1px solid #FFFFFF;
}

.ui-skin-nav .li-skinitem span.gray{background-color:gray;}
.ui-skin-nav .li-skinitem span.pepper-grinder{background-color:#BC3604;}
.ui-skin-nav .li-skinitem span.blue{background-color:blue;}
.ui-skin-nav .li-skinitem span.cupertino{background-color:#D7EBF9;}
.ui-skin-nav .li-skinitem span.dark-hive{background-color:black;}
.ui-skin-nav .li-skinitem span.sunny{background-color:#FFE57E;}
</style>
<script type="text/javascript">
function addTab(title, url){
	if ($('#tabs').tabs('exists', title)){
		$('#tabs').tabs('select', title);//选中并刷新
		var currTab = $('#tabs').tabs('getSelected');
// 		var url = $(currTab.panel('options').content).attr('src');
// 		if(url != undefined && currTab.panel('options').title != 'Home') {
// 			$('#tabs').tabs('update',{
// 				tab:currTab,
// 				options:{
// 					content:createFrame(url)
// 				}
// 			})
// 		}
	} else {
		var content = createFrame(url);
		$('#tabs').tabs('add',{
			title:title,
			content:content,
			closable:true
		});
	}
	tabClose();
}
function createFrame(url) {
	var s = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
	return s;
}
		
function tabClose() {
	/*双击关闭TAB选项卡*/
	$(".tabs-inner").dblclick(function(){
		var subtitle = $(this).children(".tabs-closable").text();
		$('#tabs').tabs('close',subtitle);
	})
	/*为选项卡绑定右键*/
	$(".tabs-inner").bind('contextmenu',function(e){
		$('#mm').menu('show', {
			left: e.pageX,
			top: e.pageY
		});

		var subtitle =$(this).children(".tabs-closable").text();

		$('#mm').data("currtab",subtitle);
		$('#tabs').tabs('select',subtitle);
		return false;
	});
}		
//绑定右键菜单事件
function tabCloseEven() {
	//刷新
	$('#mm-tabupdate').click(function(){
		var currTab = $('#tabs').tabs('getSelected');
		var url = $(currTab.panel('options').content).attr('src');
		if(url != undefined && currTab.panel('options').title != 'Home') {
			$('#tabs').tabs('update',{
				tab:currTab,
				options:{
					content:createFrame(url)
				}
			})
		}
	});
	//复制
	$('#mm-tabcopy').click(function(){
		var currTab = $('#tabs').tabs('getSelected');
		var url = $(currTab.panel('options').content).attr('src');
		var title = currTab.panel('options').title;
		if(url != undefined && currTab.panel('options').title != 'Home') {
			addTab(title+"--复制", url);
		}
	});
	//关闭当前
	$('#mm-tabclose').click(function(){
		var currtab_title = $('#mm').data("currtab");
		$('#tabs').tabs('close',currtab_title);
	})
	//全部关闭
	$('#mm-tabcloseall').click(function(){
		$('.tabs-inner span').each(function(i,n){
			var t = $(n).text();
			if(t != 'Home') {
				$('#tabs').tabs('close',t);
			}
		});
	});
	//关闭除当前之外的TAB
	$('#mm-tabcloseother').click(function(){
		var prevall = $('.tabs-selected').prevAll();
		var nextall = $('.tabs-selected').nextAll();		
		if(prevall.length>0){
			prevall.each(function(i,n){
				var t=$('a:eq(0) span',$(n)).text();
				if(t != 'Home') {
					$('#tabs').tabs('close',t);
				}
			});
		}
		if(nextall.length>0) {
			nextall.each(function(i,n){
				var t=$('a:eq(0) span',$(n)).text();
				if(t != 'Home') {
					$('#tabs').tabs('close',t);
				}
			});
		}
		return false;
	});
	//关闭当前右侧的TAB
	$('#mm-tabcloseright').click(function(){
		var nextall = $('.tabs-selected').nextAll();
		if(nextall.length==0){
			//msgShow('系统提示','后边没有啦~~','error');
			alert('后边没有啦~~');
			return false;
		}
		nextall.each(function(i,n){
			var t=$('a:eq(0) span',$(n)).text();
			$('#tabs').tabs('close',t);
		});
		return false;
	});
	//关闭当前左侧的TAB
	$('#mm-tabcloseleft').click(function(){
		var prevall = $('.tabs-selected').prevAll();
		if(prevall.length==0){
			alert('到头了，前边没有啦~~');
			return false;
		}
		prevall.each(function(i,n){
			var t=$('a:eq(0) span',$(n)).text();
			$('#tabs').tabs('close',t);
		});
		return false;
	});

	//退出
	$("#mm-exit").click(function(){
		$('#mm').menu('hide');
	})
}

$(function() {
	tabCloseEven();

	$('.cs-navi-tab').click(function() {
		var $this = $(this);
		var href = $this.attr('src');
		var title = $this.text();
		addTab(title, href);
	});

	var themes = {
		'gray' : '${path}/js/js_plug/easyui/themes/gray/easyui.css',
		'pepper-grinder' : '${path}/js/js_plug/easyui/themes/pepper-grinder/easyui.css',
		'blue' : '${path}/js/js_plug/easyui/themes/default/easyui.css',
		'cupertino' : '${path}/js/js_plug/easyui/themes/cupertino/easyui.css',
		'dark-hive' : '${path}/js/js_plug/easyui/themes/dark-hive/easyui.css',
		'sunny' : '${path}/js/js_plug/easyui/themes/sunny/easyui.css'
	};

	var skins = $('.li-skinitem span').click(function() {
		var $this = $(this);
		if($this.hasClass('cs-skin-on')) return;
		skins.removeClass('cs-skin-on');
		$this.addClass('cs-skin-on');
		var skin = $this.attr('rel');
		$('#swicth-style').attr('href', themes[skin]);
		setCookie('cs-skin', skin);
		skin == 'dark-hive' ? $('.cs-north-logo').css('color', '#FFFFFF') : $('.cs-north-logo').css('color', '#000000');
	});

	if(getCookie('cs-skin')) {
		var skin = getCookie('cs-skin');
		$('#swicth-style').attr('href', themes[skin]);
		$this = $('.li-skinitem span[rel='+skin+']');
		$this.addClass('cs-skin-on');
		skin == 'dark-hive' ? $('.cs-north-logo').css('color', '#FFFFFF') : $('.cs-north-logo').css('color', '#000000');
	}
});


function setCookie(name,value) {//两个参数，一个是cookie的名子，一个是值
    var Days = 30; //此 cookie 将被保存 30 天
    var exp = new Date();    //new Date("December 31, 9998");
    exp.setTime(exp.getTime() + Days*24*60*60*1000);
    document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString();
}

function getCookie(name) {//取cookies函数        
    var arr = document.cookie.match(new RegExp("(^| )"+name+"=([^;]*)(;|$)"));
     if(arr != null) return unescape(arr[2]); return null;
}

$(function(){
	$('#cs-west-tree').tree({
        checkbox: false,
        url: '${actionPath}/privilegeManager_getPriOfUser',
		onClick : function(node) {
				var attributes = node.attributes;
				if(!stringutil.isBlank(attributes) && !stringutil.isBlank(attributes.url)){
					setCookie("activeTab", node.id);
					addTab(node.text, attributes.url);
				}
			},
		onLoadSuccess : function(node, data){
			$(this).tree('collapseAll'); 
		}
	});
	
/* 	$("#testid").remove(); */
/* 	var my = document.getElementById("testid");
    if (my != null)
        my.parentNode.removeChild(my); */
});
</script>

</head>
<body class="easyui-layout">
	<div region="north" border="true" class="cs-north">
		<div class="cs-north-bg">
			<div class="cs-north-logo">Java Web 快速开发框架</div>
			<ul class="ui-skin-nav">				
				<li class="li-skinitem" title="gray"><span class="gray" rel="gray"></span></li>
				<li class="li-skinitem" title="pepper-grinder"><span class="pepper-grinder" rel="pepper-grinder"></span></li>
				<li class="li-skinitem" title="blue"><span class="blue" rel="blue"></span></li>
				<li class="li-skinitem" title="cupertino"><span class="cupertino" rel="cupertino"></span></li>
				<li class="li-skinitem" title="dark-hive"><span class="dark-hive" rel="dark-hive"></span></li>
				<li class="li-skinitem" title="sunny"><span class="sunny" rel="sunny"></span></li>
			</ul>	
		</div>
	</div>
	
	<div region="west" border="true" split="true" title="Navigation" class="cs-west" id="cs-west-tree"></div>
	
	<div id="mainPanle" region="center" border="true" border="false">
		 <div id="tabs" class="easyui-tabs"  fit="true" border="false" >
                <div title="Home">
				<div class="cs-home-remark">
					<h1>Java Web 快速开发框架</h1> <br>
					<a href="${actionPath}/user_logout">注销</a><br>
					<a href="${actionPath}/common_clearCache">清空缓存</a><br>
					<a href="/common/jquery-easyui/index-api.html" target="_blank">jquery easyui demo</a><br>
					制作：张晓飞 <br>
					博客：<a href="http://my.csdn.net/zhangxiaofei2012" target="_blank">http://my.csdn.net/zhangxiaofei2012</a><br>
					说明：jQuery EasyUI 1.3.0。<a href="http://www.jeasyui.com/documentation/index.php#" target="_blank">官方在线API</a><br>
					功能：<br>
					<span style="margin-left:20px;">1. 权限管理(RBAC), 可使用命令对用户授权，目前只支持linux命令。</span>
					其它：<a href="http://www.ltesting.net" target="_blank">软件测试</a><br>
				</div>
				</div>
        </div>
	</div>

	<div region="south" border="false" class="cs-south">Email: java11@126.com  QQ: 295154688</div>
	
	<div id="mm" class="easyui-menu cs-tab-menu">
		<div id="mm-tabupdate">刷新</div>
		<div id="mm-tabcopy">复制</div>
		<div class="menu-sep"></div>
		<div id="mm-tabclose">关闭</div>
		<div id="mm-tabcloseother">关闭其他</div>
		<div id="mm-tabcloseall">关闭全部</div>
	</div>
</body>
</html>