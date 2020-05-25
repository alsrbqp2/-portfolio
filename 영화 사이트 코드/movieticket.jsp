<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<%@include file='login_menu.jsp' %>
</head>
<body>
	<center><h2>결제</h2></center>
	<form action="mypage.jsp" name="meber" method="post">
	<center><table>
	<% 
	request.setCharacterEncoding("utf-8");
	   String ss = request.getParameter("name");
	   if (ss.equals("rank1")){
	      ss="알라딘";
	  }
	   else if (ss.equals("rank2")){
		      ss="악인전";
		}
	   else if (ss.equals("rank3")){
		      ss="어벤져스";
		 }
	   else if (ss.equals("rank4")){
		      ss="어린의뢰인";
		   }
	   else if (ss.equals("rank5")){
		      ss="걸캅스";
		 }
	   else if (ss.equals("rank6")){
		      ss="물의기억";
		   }
	   else if (ss.equals("rank7")){
		      ss="배심원들";
		   }
	   else if (ss.equals("rank8")){
		      ss="명탐정 피카츄";
		   }
	   else if (ss.equals("rank9")){
		      ss="더 보이";
		   }
	   else if (ss.equals("rank10")){
		      ss="교회 오빠";
		   }
	   
	 
	
	out.println("<tr><td>영화제목:<input type='text' name='movie' value="+ss+"></td><td></td></tr>");
 
	out.println("<tr><td ></td><td><input type='submit' value='예매'>");
	out.println("<input type='reset' value='다시쓰기'></td></tr>");
	
%>
	</table></center>
	</form>




<%@include file='Bottom.jsp' %>
</body>

</html>