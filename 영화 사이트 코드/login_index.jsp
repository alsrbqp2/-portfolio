<%@page contentType="text/html; charset=utf-8"%>
<html>
<head>
<%@include file="login_menu.jsp" %>
</head>

<table border=0>
<form action='index.jsp' method='post'>
<%
String user_id = (String) session.getAttribute("userID");
out.println("<tr><td></td><td colspan=2 align='center' bgcolor='lightgray' width=200>"+user_id+"님이 로그인 중 입니다.</td></tr>");
%>

<tr><td width='1300'></td>
<tr><td></td><td align='center' width=95 bgcolor='lightgray'><input type='submit' name='logout' value='로그아웃'></td></tr>
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
<td align='center'><input type="button" name='b1' value='예매' onclick="location.href='moviedetail.jsp'" ></td>
<td align='center'><input type="button" name='b2' value='예매' onclick="location.href='moviedetail2.jsp'" ></td>
<td align='center'><input type="button" name='b3' value='예매' onclick="location.href='moviedetail3.jsp'"></td>
</form>
</table>
</center>

<%@include file="Bottom.jsp" %>

</body>
</html>
