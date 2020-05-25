<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*" %>

<html>
<head>
</head>
<body>

<%
//Textarea의 문자 받기
request.setCharacterEncoding("utf-8");
String movietitle=request.getParameter("movie");
String id = request.getParameter("id");
String name = request.getParameter("name");
String password = request.getParameter("password");
String card = request.getParameter("card");
//DB연동
Connection conn=null;

String user_id = (String) session.getAttribute("userID");
String user_pw = (String) session.getAttribute("userPW");

String url = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false";
String user="root";
String passwd = "1234";
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection(url,user,passwd);
//DB 데이터 삽입

 
PreparedStatement pstmt = null;
try{
	

	String sql = "insert into moviedb(id, passwd, movie) values(?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,user_id);
	pstmt.setString(2,user_pw);
	pstmt.setString(3,movietitle);
	pstmt.executeUpdate();

}catch(SQLException ex){
	out.println("SQLException:"+ex.getMessage());
}finally{
	if(pstmt !=null)
		pstmt.close();
	if(conn != null)
		conn.close();
	response.sendRedirect("MovieList.jsp");
}

%>

</body>

 

</html>
