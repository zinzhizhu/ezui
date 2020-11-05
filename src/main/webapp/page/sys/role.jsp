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
	function role_privilege(obj){
		$('#role_dialog').dialog({	
			  title: '分配权限 ',
			    width:1000 ,
			    height: 700,
			    closed: false,
			    cache: false,
			    href: 'sys/privilege.jsp',
			    modal: true,
			    onLoad:function(){
			    	$("#role_privilege_form :hidden:eq(0)").val($(obj).parent().parent().siblings().children().html());
			    	$('#privilege_tree').tree({
			    	    url:'showPrivilege?id='+$("#role_privilege_form :hidden:eq(0)").val(),
			    	    checkbox:true
			    	    
			    	});
			    	
			    },
			    
		
		});
	
	}
		$(function() {
			$('#role_table').datagrid(
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
											text:"修改",
											handler : function() {
											if($("#role_table").datagrid("getSelections").length==1){
												$('#role_dialog').dialog({	
													
													  title: '修改 ',
													    width: 400,
													    height: 200,
													    closed: false,
													    cache: false,
													    href: 'sys/role_edit.jsp',
													    modal: true,
													    onLoad:function(){
													    	$("#role_edit_form :text:eq(0)").val($("#role_table").datagrid("getSelected").name);
													    	$("#role_edit_form :text:eq(1)").val($("#role_table").datagrid("getSelected").sort);
													    	$("#role_edit_form :text:eq(2)").val($("#role_table").datagrid("getSelected").remark);
													    	$("#role_edit_form :hidden:eq(0)").val($("#role_table").datagrid("getSelected").id);
													    }
												});
											}else {
											
												$.messager.alert("系统提示","全选择<b style='color:red'>一行</b>")
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
											field : 'abc',
											title : '操作',
											width : 100,
											align : 'right',
											formatter: function(value,row,index){
												return "<a href='' onclick='javascript:role_privilege(this);return false;'>分配权限"
											}
										} ] ],
								pagination:true,
								fitColumns:true,
								striped:true,
								pageList:[10,20,30,40],
								rownumbers:true
							});
		})
</script>

	<table id="role_table"></table>
	<div id="role_dialog">Dialog Content.</div>
</body>
</html>