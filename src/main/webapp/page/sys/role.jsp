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
			$('#role_table')
					.datagrid(
							{
								url : 'showRole',
								toolbar : [
										{
											iconCls : 'icon-add',
											handler : function() {

											}
										},
										'-',
										{
											iconCls : 'icon-edit',
											handler : function() {
												if ($("#role_table").datagrid("getSelections").length == 1) {
													$('#role_dialog').dialog({
														title : '修改',
														width : 400,
														height : 200,
														closed : false,
														cache : false,
														href : 'sys/role_edit.jsp',
														modal : true,
														onLoad:function(){
															

															
															
															/* $("input:text:eq(0)").val("hello world!"); */
														
															/* alert($("#role_edit_form:text:eq(0)").val()); */
															typeof($("#role_edit_form:text:eq(0)").val(function(index
																	,value){
																return "哈哈";
															}));
															
															$("#role_edit_form:text:eq(0)").val($("#role_table").datagrid("getSelected").name);
															$('#role_edit_form:text:eq(1)').val($('#role_table').datagrid("getSelected").sort);
															$('#role_edit_form:text:eq(2)').val($('#role_table').datagrid("getSelected").remark);
														}
													});

												}else{
													$.messager.alert("系统提示","请选择<b>一行</>")
												}

											}
										} ],
								columns : [ [
										{
											field : 'id',
											title : '编号',
											width : 100,
											hidden : true
										},
										{
											field : 'name',
											title : '角色名称',
											width : 100
										},
										{
											field : 'sort',
											title : '排序id',
											width : 100,
											align : 'right'
										},
										{
											field : 'remark',
											title : '备注',
											width : 100,
											align : 'right'
										},
										{
											field : '',
											title : '操作',
											width : 100,
											align : 'right',

											formatter : function(value, row,
													index) {
												return "<a href=''>分配权限  </a> &nbsp;<a href=''>查看 </a>";
											}
										} ] ],
								pagination : true,
								fitColumns : true,
								striped : true,
								pageList : [ 5, 10, 15, 20, 25 ],
								rownumbers : true

							});

		})
	</script>


	</script>
	<table id="role_table"></table>
	<div id="role_dialog">Dialog Content.</div>
</body>
</html>