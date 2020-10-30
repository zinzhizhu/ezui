<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Insert title here</title>

<title>至尊管理系统登陆界面</title>
<link rel="stylesheet" type="text/css" href="/js/ezui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="/js/ezui/themes/icon.css">
<script type="text/javascript" src="/js/jquery.js"></script>
<script type="text/javascript" src="/js/ezui/jquery.easyui.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#login_sbumit").click(function(){
			$('#login_form').form('submit',{
				url:'login',
				onSubmit:function(data){
					
				},
				success:function(data){
					if(data=="1"){
						location.href="page/main.jsp";
					}else{
						alert("登陆失败")
					}
				}
			})
		})
	})

</script>
</head>
<body style="background-color: gray;">
	<div style="margin: 100px auto; width: 400px">
		<div id="p" class="easyui-panel" title="登陆"
			style="width: 400px; height: 200px; padding: 10px; background: #fafafa;"
			data-options="iconCls:'icon-save',closable:false">
			<form id="login_form" action="login" method="post">
				<table width="225" align="center">
					<tr>
						<td colspan="2"
							style="font-size: 20px; font-weight: bold; text-align: center;">至尊管理系统</td>
					</tr>
					<tr>
						<td>用户名</td>
						<td><input placeholder="手机号" name="username" type="text" /></td>
					</tr>
					<tr>
						<td>密码</td>
						<td><input placeholder="8-12位密码" name="password"
							type="password" /></td>
					</tr>
					<tr>
						<td colspan="2"><a id="login_sbumit" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">登陆</a></td>
					</tr>
				</table>
			</form>
		</div>
	</div>

</body>
</html>