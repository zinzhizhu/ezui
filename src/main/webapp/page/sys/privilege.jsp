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
	 $("#pri_submit").click(function(){
		 
		var arr= $('#privilege_tree').tree('getChecked', ['checked','indeterminate']);
		 var result='';
		 for(var i =0;i<arr.length;++i){
			 
			 result+=arr[i].text;
		 }
		 alert(result);
	 })
}) 
</script>
	


<form action="" method="post" id="role_privilege_form">
<input type="hidden" name="id">
角色名称 <input type="text" name="" >角色排序ID:<input type="text" name="">
	
导航菜单：
<br/><ul id="privilege_tree"></ul>

<a id="pri_submit" href="#" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">提交</a>
</form>
</body>
</html>