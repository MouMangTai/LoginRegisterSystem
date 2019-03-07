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
<body>
<center>
	<h1>
		用户注册
	</h1>
</center>
<hr>
	<table align="center" >
		<form action="RegisterServlet" method="post">
			<tr><td>电子邮箱:</td><td><input type="text" name="mail" value="${LastRegisterMail }" placeholder="" class="form-control"></td></tr>
			<tr><td colspan="2"><span id="checkResultMail"></span></td></tr>
			<tr><td>密码:</td><td><input type="password" name="password" value="${LastRegisterPassword }"placeholder="" class="form-control"></td></tr>
			<tr><td colspan="2"><span id="checkResultMima"></span></td></tr>
			<tr><td>用户名:</td><td><input type="text" name="name" value="${LastRegisterName }"placeholder="" class="form-control"></td></tr>
			<tr><td colspan="2"><span id="checkResultMima"></span></td></tr>
			<tr ><td colspan="2"><input class="btn btn-block" type="submit" value="注册" onclick="return judge();"></td></tr>
			<tr><td align="right" colspan="2"><font size="1"><a href="Login.jsp" >返回</a></font></td></tr>
		</form>
	</table>
</body>
</html>