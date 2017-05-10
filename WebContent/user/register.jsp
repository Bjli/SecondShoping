<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>注册</title>
	<link rel="stylesheet" href="..\static\css\bootstrap.min.css">
	<script src="..\static\js\jquery-1.11.2.js"></script>
	<script src="..\static\js\bootstrap.min.js"></script>
	<style>
	form{
		/*background-color:#DCDCDC;*/
		/*border:3px solid #FFEBCD;*/
		width:400px;
		padding:7px;
		margin:100px auto;
	}
	h2{
		text-align:center;
	}
	</style>
</head>
<body>
	<div class="container">
		<form action="<%=basePath%>user/register" class="form-horizontal">
			<h2>注册</h2>
			<div class="form-group">
				<label for="email" class="control-label col-sm-2">邮箱</label>
				<div class="col-sm-10">
					<input type="email" name="email" class="form-control" placeholder="Email Address" required autofocus>
				</div>
			</div>
			<div class="form-group">
				<label for="nickname" class="control-label col-sm-2">昵称</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="name" placeholder="Choose a smart nickname for you">
				</div>
			</div>
			<div class="form-group">
				<label for="psw" class="control-label col-sm-2">密码</label>
				<div class="col-sm-10">
					<input type="password" name = "password" class="form-control" placeholder="Password" required>
				</div>
			</div>
			<div class="form-group">
				<label for="psw2" class="control-label col-sm-2">确认</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" placeholder="Confirm Password" required>
				</div>
			</div>
			<div class="form-group">
				<label for="tel" class="control-label col-sm-2">电话</label>
				<div class="col-sm-10">
					<input type="tel"  name= "telephone" class="form-control" required>
				</div>
			</div>	
			<button class="btn btn-success btn-block submit">注册</button>					
			<!-- <input type="submit" class="btn btn-success btn-block" value="submit"> -->
		</form>
	</div>
</body>
<script>

</html>
