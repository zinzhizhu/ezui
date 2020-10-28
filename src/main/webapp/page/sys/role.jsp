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

$(function(){
	$('#role_table').datagrid({
	    url:'showRole',
	    columns:[[
	        {field:'id',title:'编号',width:100,hidden:true},
	        {field:'name',title:'角色名称',width:100},
	        {field:'sort',title:'排序id',width:100,align:'right'},
	        {field:'remark',title:'备注',width:100,align:'right'}
	    ]],
	    pagination:true
	    /* pageList:[2,4,6] */
	});	
	
	
	
})

</script>
<table id="role_table"></table>
</body>
</html>