<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<%@ include file='login_menu.jsp' %>
</head>
<body>
	<center><h2>예매</h2></center>
	<form action="" name="meber" method="post">
	<center><table>
	<tr><td>영화제목:<% 
	request.setCharacterEncoding("utf-8");
	   String ss = request.getParameter("name");
	   if (ss.equals("rank1")){
	      ss="알라딘";
	   out.println(ss);}
	   else if (ss.equals("rank2")){
		      ss="악인전";
		   out.println(ss);}
	   else if (ss.equals("rank3")){
		      ss="어벤져스";
		   out.println(ss);}
	   else if (ss.equals("rank4")){
		      ss="어린의뢰인";
		   out.println(ss);}
	   else if (ss.equals("rank5")){
		      ss="걸캅스";
		   out.println(ss);}
	   else if (ss.equals("rank6")){
		      ss="물의기억";
		   out.println(ss);}
	   else if (ss.equals("rank7")){
		      ss="배심원들";
		   out.println(ss);}
	   else if (ss.equals("rank8")){
		      ss="명탐정 피카츄";
		   out.println(ss);}
	   else if (ss.equals("rank9")){
		      ss="더 보이";
		   out.println(ss);}
	   else if (ss.equals("rank10")){
		      ss="교회 오빠";
		   out.println(ss);}
	   
	    %></td></tr>
	<tr><td>결제</td></tr>
	<tr><td>ID:<input type="text" name="id"></td><td></td></tr>
	<tr><td colspan="2">비밀번호:<input type="passwd" name="passwd"></td></tr>
	
	<tr><td>이름:<input type="text" name="name"></td><td></td></tr>
	<tr><td>카드 종류<select name="card"><option value="bc">BC카드</option>
	<option value="NH">NH농협</option>
	<option value="SM">삼성카드</option>
	<option value="KB">국민카드</option></select></td></tr>
	<tr><td colspan="2"><input type="text" maxlength="4" size=4 name="cardnum">-
	<input type="text" maxlength="4" size=4 name="cardnum2">-
	<input type="text" maxlength="4" size=4 name="cardnum3">-
	<input type="text" maxlength="4" size=4 name="cardnum4"></td></tr>
	</select></td></tr>
	<tr><td ></td><td><input type="submit" value="예매">
	<input type="reset" value="다시쓰기"></td></tr>
	

	</table></center>
	</form>




<%@include file='Bottom.jsp' %>
</body>

</html>