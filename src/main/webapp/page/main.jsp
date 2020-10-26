<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/js/ezui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/js/ezui/themes/icon.css">
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/ezui/jquery.easyui.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#tt').tree({
		url : '/menu',
		onClick:function(node){
			$('#main_tabs').tabs('add',{
				title: node.text,
				selected: true,
				href:""
				//...
			});
		}
	});	
	
})
	
</script>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',title:'至尊管理系统',split:true"
		style="height: 100px;">
		<div
			style="width: 400px; height: 70px; float: left; font-size: 20px; line-height: 70px; margin-left: 20px; font-weight: bold;">至尊管理系统</div>

		<div
			style="width: 200px; height: 70px; float: right; line-height: 70px;">你好，欢迎${user.username}登陆</div>
	</div>
	<div data-options="region:'south',title:'底部声明',split:true"
		style="height: 100px;">
		<div
			style="height: 70px; line-height: 70px; color: gray; text-align: center;">&copy智诚安环2020</div>
	</div>
	<div data-options="region:'west',title:'菜单',split:true"
		style="width: 200px;">
		<ul id="tt"></ul>
	</div>
	<div data-options="region:'center',title:'内容'"
		style="padding: 5px; background: #eee; " >
		<div id="main_tabs" class="easyui-tabs" style="width:500px;height:250px;" data-options="fit:true">
    <div title="Tab1" style="padding:20px;">
		tab1
    </div>
    <div title="Tab2" data-options="closable:true" style="overflow:auto;padding:20px;">
		tab2
    </div>
    <div title="Tab3" data-options="iconCls:'icon-reload',closable:true" style="padding:20px;">
		tab3
    </div>
</div>
		</div>
</body>
</html>