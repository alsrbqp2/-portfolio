<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.ArrayList" %>

<html>
<head>
<%@include file='login_menu.jsp' %>
</head>
<table border=0>
<body>
<center><h2>예매목록</h2></center>
<br>
<%
//로그인폼의 문자 받기
String user_id = (String) session.getAttribute("userID");

//DB연동
Connection conn=null;
try{
String url = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false";
String user="root";
String passwd = "1234";
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection(url,user,passwd);

//쿼리 select
String sql = "SELECT * FROM moviedb WHERE id='"+user_id+"'" ;
PreparedStatement pstmt = conn.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();
rs.next();
while(rs.next()){
	out.println("<center><tr><td width=600></td><td>영화이름:</td><td>"+rs.getString("movie")+"</td>");
	out.println("<td>아이디:</td><td>"+rs.getString("id")+"</td></tr></center>");
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
<%@include file='Bottom.jsp' %>
</body>

</html>