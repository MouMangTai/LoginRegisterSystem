<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script src="js/jquery/2.0.0/jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="css/bootstrap/3.3.6/bootstrap.min.js"></script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script>
	function judge(){
		var a = document.getElementById("mail").value;
		var b = document.getElementById("password").value;
		var c = document.getElementById("name").value;
		if(a==""||b==""||c==""){
			alert("请输入完整的信息");
			return false;
		}
		return true;
	}
</script>
<body>
<center>
	<h1>
		用户注册
	</h1>
</center>
<hr>
	<table align="center" >
		<form action="RegisterServlet" method="post">
			<tr><td>电子邮箱:</td><td><input type="text" name="mail" id="mail"value="${LastRegisterMail }" placeholder="输入邮箱" class="form-control"></td></tr>
			<tr><td colspan="2"><span id="checkResultMail"></span></td></tr>
			<tr><td>密码:</td><td><input type="password" name="password" id="password"value="${LastRegisterPassword }"placeholder="输入密码" class="form-control"></td></tr>
			<tr><td colspan="2"><span id="checkResultMima"></span></td></tr>
			<tr><td>用户名:</td><td><input type="text" name="name" id="name"value="${LastRegisterName }"placeholder="4-16位(字母,数字,下划线)" class="form-control"></td></tr>
			<tr><td colspan="2"><span id="checkResultMima"></span></td></tr>
			<tr ><td colspan="2"><input class="btn btn-block" type="submit" value="注册" onclick="return judge();"></td></tr>
			<tr><td align="right" colspan="2"><font size="1"><a href="Login.jsp" >返回</a></font></td></tr>
		</form>
	</table>
</body>
</html>