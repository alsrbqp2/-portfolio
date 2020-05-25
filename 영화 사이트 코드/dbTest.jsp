<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*" %>
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
	
	out.println("데이터베이스 연결이 성공했습니다.");
	
	
	//쿼리 select
	String sql = "SELECT * FROM moviedb";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
		out.println(rs.getString("id") + ", "+rs.getString("name")+"<br>");
	}
	
	//삽입
	
	//sql = "insert into moviedb(id, passwd, name) values(?,?,?)";
	//PreparedStatement pstmt = conn.prepareStatement(sql);
	//pstmt.setString(1, "idtwo");
	//pstmt.setString(2, "psswd2");
	//pstmt.setString(3, "name2");
	//pstmt.executeUpdate();
	//pstmt.close();
	
}catch(SQLException ex){
	out.println("데이터베이스 연결이 실패했습니다.<br>");
	out.println("SQLException: "+ex.getMessage());
}finally{
	if(conn !=null)
		conn.close();
}

%>
</body>
</html>