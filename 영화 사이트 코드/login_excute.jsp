<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*" %>
<%@page import ="java.io.*,java.util.*" %>

<html>
<body>
<%

Connection conn=null;

try{
	
	//mysql 연결
	String url = "jdbc:mysql://localhost:3306/jspdb?serverTimezone=UTC&useSSL=false";
	String user="root";
	String passwd = "1234";
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection(url,user,passwd);
	
	//form 데이터 받기
	request.setCharacterEncoding("utf-8");

	String userid = request.getParameter("id");
	String password = request.getParameter("passwd");
	session.setAttribute("userID", userid);
	session.setAttribute("userPW", password);
	
	if(userid == "")
		 response.sendRedirect("index.jsp");
	
	//쿼리 select
	String sql = "SELECT * FROM moviedb WHERE id='"+userid+"'" ;
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
		if (userid.equals(rs.getString("id")) && password.equals(rs.getString("passwd"))){
			out.println("로그인 성공");
			}
		else{
			out.println("로그인실패");
			response.sendRedirect("index.jsp");
		}

	}
	response.sendRedirect("login_index.jsp");
	
}catch(SQLException ex){
	out.println("데이터베이스 연결이 실패했습니다.<br>");
	out.println("SQLException: "+ex.getMessage());
	response.sendRedirect("index.jsp");
}finally{
if(conn !=null)
	conn.close();
}

%>

</body>
</html>