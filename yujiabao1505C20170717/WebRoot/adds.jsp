<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
	
	<script type="text/javascript" src="static/js/jquery-3.2.1.js"></script>
	
	<script type="text/javascript" src="static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		
		$(function(){
		alert("注册成功");
		var uname=false;
		var password=false;
		$("#uname").blur(function(){
		$("#unames").empty();
		if($(this).val()==null||$(this).val()==''){
		var span=$("<span id='unames'>账号不能为空！！<span>");
		$(this).after(span);
		}else{
		uname=true;
		}
		});
		
		$("#password").blur(function(){
		$("#passwords").empty();
		if($(this).val()==null||$(this).val()==''){
		var span=$("<span id='passwords'>密码不能为空！！<span>");
		$(this).after(span);
		}else{
		password=true;
		}
		});
		
		$("#bu").click(function(){
		if(uname&&password){
			$("form").submit();
		}else{
			alert("注册失败！请重新根据要求进行注册！！");
		}
		});
		
		});
	
	</script>
	
	
  </head>
  
  <body>
   <center>
   <h1>注册页面！</h1><br/><br/>
   <form action="${pageContext.request.contextPath}/user/insert" method="post">
   账号：<input type="text" name="uname" id="uname"><br/><br/>
   密码：<input type="text" name="password" id="password"><br/><br/>
   <button type="button" class="btn btn-success" id="bu">注册
   <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
   </button>
   </form>
   </center>
  </body>
</html>
