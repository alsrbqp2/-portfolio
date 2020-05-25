<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
<%@include file="menu.jsp" %>
</head>

<script type="text/javascript">
function checkForm(){
alert("로그인을 해주십시오.");
}

</script>
<body>
<%
session.removeAttribute("userID");
session.removeAttribute("userPW");
%>
<table border=0>
<form action='login_excute.jsp' method='post'>

<tr><td></td><td colspan=2 align='center' bgcolor='lightgray'>로그인</td></tr>
<tr><td width='1300'></td>

<td align='center' width=95 bgcolor='lightgray'>아이디</td><td bgcolor='lightgray'><input type='text' name='id'></td></tr>
<tr><td width='1300'></td>

<td align='center' width=95 bgcolor='lightgray'>비밀번호</td><td bgcolor='lightgray'><input type='password' name='passwd'></td></tr>
<tr><td colspan='2'></td><td>
<input type='submit' name='login' value='로그인'><input type='button' onclick="location.href='join_member.jsp'" value = '회원가입'></td></tr>
</form>
</table>

<center>
<table border=0>
<tr><td><h1>영화 TOP3</h1></td></tr>
<tr>
<td width=300 align='center'><img src='C:\Users\최기호\Desktop\영화사진\rank1.jpg'></td>
<td width=300 align='center'><img src='C:\Users\최기호\Desktop\영화사진\rank2.jpg'></td>
<td width=300 align='center'><img src='C:\Users\최기호\Desktop\영화사진\rank3.jpg'></td>
</tr>

<form action='#' method='post'>
<tr>
<td align='center'><input type="button" name='b1' value='예매' onclick=checkForm() ></td>
<td align='center'><input type="button" name='b2' value='예매' onclick=checkForm() ></td>
<td align='center'><input type="button" name='b3' value='예매' onclick=checkForm() ></td>
</form>
</table>
</center>

<%@include file="Bottom.jsp" %>

</body>
</html>
