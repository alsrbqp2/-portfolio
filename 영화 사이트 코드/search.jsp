<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*" %>

<html>
<head>
<%@include file='login_menu.jsp' %>
</head>
<table border=0>
<body>

<%
//검색창의 문자 받기
request.setCharacterEncoding("utf-8");
String message = request.getParameter("search_msg");


//DB연동
Connection conn=null;
try{
String url = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false";
String user="root";
String passwd = "1234";
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection(url,user,passwd);

//쿼리 select
String sql = "SELECT * FROM movielist WHERE name like'%"+message+"%'" ;
PreparedStatement pstmt = conn.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();
while(rs.next()){
	switch(rs.getString("name")){
		case "알라딘":
			out.println("<tr><td width=650></td><td width=200 align=center><img src=C:\\Users\\최기호\\Desktop\\영화사진\\rank1.jpg> </td></tr>");
			out.println("<tr><td></td><td  align='center'>알라딘(전체) <input type='button' value='예매' onclick=location.href="+"'moviedetail.jsp'"+"></td></tr>");
			break;
		
		case "악인전":
			out.println("<tr><td width=650></td><td width=200 align=center><img src=C:\\Users\\최기호\\Desktop\\영화사진\\rank2.jpg> </td></tr>");
			out.println("<tr><td></td><td  align='center'>악인전(청불) <input type='button' value='예매' onclick=location.href="+"'moviedetail2.jsp'"+"></td></tr>");
			break;
		case "어벤져스":
			out.println("<tr><td width=650></td><td width=200 align=center><img src=C:\\Users\\최기호\\Desktop\\영화사진\\rank3.jpg> </td></tr>");
			out.println("<tr><td></td><td  align='center'>어벤져스:엔드게임(12세) <input type='button' value='예매' onclick=location.href="+"'moviedetail3.jsp'"+"></td></tr>");
			break;
		case "어린의뢰인":
			out.println("<tr><td width=650></td><td width=200 align=center><img src=C:\\Users\\최기호\\Desktop\\영화사진\\4위.jpg> </td></tr>");
			out.println("<tr><td width=650></td><td  align='center'>어린의뢰인(12세) <input type='button' value='예매' onclick=location.href="+"'moviedetail4.jsp'"+"></td></tr>");
			break;
		case "걸캅스":
			out.println("<tr><td width=650></td><td width=200 align=center><img src=C:\\Users\\최기호\\Desktop\\영화사진\\5위.jpg> </td></tr>");
			out.println("<tr><td width=650></td><td  align='center'>걸캅스(15세) <input type='button' value='예매' onclick=location.href="+"'moviedetail5.jsp'"+"></td></tr>");
			break;
		case "물의 기억":
			out.println("<tr><td width=650></td><td width=200 align=center><img src=C:\\Users\\최기호\\Desktop\\영화사진\\6위.jpg> </td></tr>");
			out.println("<tr><td width=650></td><td  align='center'>물의 기억(전체) <input type='button' value='예매' onclick=location.href="+"'moviedetail6.jsp'"+"></td></tr>");
			break;
		case "배심원들":
			out.println("<tr><td width=650></td><td width=200 align=center><img src=C:\\Users\\최기호\\Desktop\\영화사진\\7위.jpg> </td></tr>");
			out.println("<tr><td width=650></td><td  align='center'>배심원들(12세) <input type='button' value='예매' onclick=location.href="+"'moviedetail7.jsp'"+"></td></tr>");
			break;
		case "명탐정 피카츄":
			out.println("<tr><td width=650></td><td width=200 align=center><img src=C:\\Users\\최기호\\Desktop\\영화사진\\8위.jpg> </td></tr>");
			out.println("<tr><td width=650></td><td  align='center'>명탐정 피카츄(전체) <input type='button' value='예매' onclick=location.href="+"'moviedetail8.jsp'"+"></td></tr>");
			break;
		case "더보이":
			out.println("<tr><td width=650></td><td width=200 align=center><img src=C:\\Users\\최기호\\Desktop\\영화사진\\9위.jpg> </td></tr>");
			out.println("<tr><td width=650></td><td  align='center'>더보이(15세) <input type='button' value='예매' onclick=location.href="+"'moviedetail9.jsp'"+"></td></tr>");
			break;
		case "교회오빠":
			out.println("<tr><td width=650></td><td width=200 align=center><img src=C:\\Users\\최기호\\Desktop\\영화사진\\10위.jpg> </td></tr>");
			out.println("<tr><td width=650></td><td  align='center'>교회오빠(전체) <input type='button' value='예매' onclick=location.href="+"'moviedetail10.jsp'"+"></td></tr>");
			break;
	}
			
}

}catch(SQLException ex){
out.println("데이터베이스 연결이 실패했습니다.<br>");
out.println("SQLException: "+ex.getMessage());
}finally{
	if(conn !=null)
		conn.close();
}

%>
</table>

<%@include file="Bottom.jsp" %>
</body>

</html>