<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*" %>

<html>
<head>
<%@include file='login_menu.jsp' %>
</head>

<body>
<%
//Textarea의 문자 받기
request.setCharacterEncoding("utf-8");
String message = request.getParameter("msg");
String name = request.getParameter("name");

//DB연동
Connection conn=null;

String url = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false";
String user="root";
String passwd = "1234";
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection(url,user,passwd);

//DB 데이터 삽입

PreparedStatement pstmt = null;

try{
	if(name ==""){
		name = "익명";
	}
	String sql = "insert into review(name,msg) values(?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, message);
	pstmt.executeUpdate();
	
}catch(SQLException ex){
	out.println("SQLException:"+ex.getMessage());
}finally{
	if(pstmt !=null)
		pstmt.close();
	if(conn != null)
		conn.close();
	response.sendRedirect("review.jsp");
}
%>
</body>

</html>