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
		<form name="useradd" action="<%=basePath%>user/register" class="form-horizontal">
			<h2>注册</h2>
			<div class="form-group">
				<label for="email" class="control-label col-sm-2">邮箱</label>
				<div class="col-sm-10">
					<input type="email" name="email" class="form-control" id="email" placeholder="Email Address" required autofocus>
				</div>
			</div>
			<div class="form-group">
				<label for="nickname" class="control-label col-sm-2">昵称</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="name" id="name" placeholder="Choose a smart nickname for you">
				</div>
			</div>
			<div class="form-group">
				<label for="psw" class="control-label col-sm-2">密码</label>
				<div class="col-sm-10">
					<input type="password" name = "password" id="pwd1" class="form-control" placeholder="Password" required>
				</div>
			</div>
			<div class="form-group">
				<label for="psw2" class="control-label col-sm-2">确认</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="pwd2" placeholder="Confirm Password" required>
				</div>
			</div>
			<div class="form-group">
				<label for="tel" class="control-label col-sm-2">电话</label>
				<div class="col-sm-10">
					<input type="tel"  name= "telephone"  id="phone" class="form-control" required>
				</div>
			</div>	
			<input type="button" class="btn btn-success btn-block"  onClick="return test()"  value="注册"/> 
		</form>
	</div>
</body>
<script>
function test()
{
     var email = document.getElementById("email");
     var name = document.getElementById("name");
     var pwd1 = document.getElementById("pwd1").value;
     var pwd2 = document.getElementById("pwd2").value;
     var phone = document.getElementById("phone");
     //对电子邮件的验证
     var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
     //对电话的验证
     var mobile=/^(13+\d{9})|(15+\d{9})|(17+\d{9})|(18+\d{9})$/;
    
     if(!myreg.test(email.value))
     {
         alert('提示\n\n请输入有效的email！');
         mobile.focus();
         return false;
      }else if(name==""||name==null){
    	  alert('提示\n\n请输入有效的昵称！');
          name.focus();
          return false;
      }else if(pwd1!=pwd2){
    	 alert('提示\n\n两次密码不一致！');
         pwd2.focus();
         return false; 
     }else if(!mobile.test(phone.value))
    {
        alert('提示\n\n请输入有效的手机号码！');
        mobile.focus();
        return false;
     }else{
    	 useradd.submit();
     }
}
</script>

</html>
