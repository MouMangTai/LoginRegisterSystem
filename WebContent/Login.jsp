<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<script src="js/jquery/2.0.0/jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="css/bootstrap/3.3.6/bootstrap.min.js"></script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆界面</title>
</head>
<script>
function judge(){
	var x = document.getElementById("mail").value;
	var y = document.getElementById("mima").value;
	if(x==""&&y==""){
		alert("请输入用户名和密码");
		return false;
	}else if(x==""){
		alert("请输入用户名");
		return false;
	}else if(y==""){
		alert("请输入密码");
		return false;
	}
	return true;
}
</script>
<body>
	<center>
            <h1>用户登录</h1>
    </center>
    <hr>
	<table align="center" >
		<form action="login" method="post">
			<tr><td>邮箱:</td><td><input type="text" name="mail" value="${LastLoginMail }" placeholder="输入邮箱" class="form-control"></td></tr>
			<tr><td>密码:</td><td><input type="password" name="password" value="${LastLoginPassword }"  placeholder="输入密码" class="form-control"></td></tr>
			<tr><td colspan="2"><input  class="btn btn-block" type="submit" value="登陆" onclick="return judge();"></td></tr>
			<tr><td align="right" colspan="2"><font size="1">没有账户请先<a href="Register.jsp" >注册</a></font></td></tr>
		</form>
	</table>
</body>
</html>