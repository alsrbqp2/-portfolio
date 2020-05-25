<%@page contentType="text/html; charset=utf-8"%>

<html>
<head>
<%@include file='login_menu.jsp' %>
</head>
<body>

<form action="mypage_process.jsp" method="post">
<center><h2>로그인해주세요</h2></center> 
<center><table>
	<tr><td>이름:</td><td><input type="text" name="name"></td></tr>
	<tr><td>아이디:</td><td ><input type="text" name="id"></td></tr>
	<tr><td>비밀번호:</td><td><input type="password" name="pass"></td></tr>
	<tr><td ></td><td><input type="submit" value="로그인">
	<input type="reset" value="다시쓰기"></td></tr>
</table></center>


</form>
<%@include file='Bottom.jsp' %>
</body>

 

</html>