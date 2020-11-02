<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<script type="text/javascript">
	$(function() {
		$("#role_edit_sbmit").click(function() {
			$('#role_edit_form').form('submit', {
				url : "updataRole",
				onSubmit : function() {
				},
				success : function(data) {
					if(data=="1"){
						$("#role_dialog").dialog('close');
						$("#role_table").datagrid('reload');
						$.messager.show({
							title:'系统提示',
							msg:'修改成功',
							showType:'slide',
						});
					}else{
						$.messager.alert("系统消息","修改失败");
					}
				}
			});

		});

	})
</script>
	<div style="paddin: 10px">
		系统设置>>修改角色
		<form id="role_edit_form" method="post" action="updataRole">
			<input type="hidden" name="id" />
			<table>
				<tr>
					<td>用户姓名</td>
					<td><input type="text" name="name" value="" /></td>
				</tr>
				<tr>
					<td>用户排序</td>
					<td><input type="text" name="sort" /></td>
				</tr>
				<tr>
					<td>用户备注</td>
					<td><input type="text" name="remark" /></td>
				</tr>
				<tr>
					<td colspan="2"><a id="role_edit_sbmit" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-search'">确认修改</a>
					</td>
				</tr>
			</table>
		</form>

	</div>
</body>
</html>