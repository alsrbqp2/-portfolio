<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*" %>

<html>
<head>
</head>
<body>

<%
//Textarea의 문자 받기
request.setCharacterEncoding("utf-8");
String id=request.getParameter("id");
String password=request.getParameter("pass");
String name=request.getParameter("name");
String sex=request.getParameter("sex");
String address=request.getParameter("address");
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
	

	String sql = "insert into moviedb(id,passwd) values(?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.setString(2,password);
	pstmt.executeUpdate();

}catch(SQLException ex){
	out.println("SQLException:"+ex.getMessage());
}finally{
	if(pstmt !=null)
		pstmt.close();
	if(conn != null)
		conn.close();
	response.sendRedirect("index.jsp");
}

%>

</body>

 

</html>
