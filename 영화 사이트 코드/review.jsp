<%@page contentType="text/html; charset=utf-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.ArrayList" %>

<html>
<head>
<%@include file='login_menu.jsp' %>
</head>



<body>

<table border=0>
<form action=review_action.jsp method =get>
<tr><td width=500></td><td>작성자</td><td colspan=2>내용</td></tr>
<tr><td></td><td><input type=text name=name></td><td>
<textarea name='msg' cols='50' rows='2'></textarea></td>
<td><input type='submit' value='전송'></td></tr>

</table>

</form>

<br><br><br>

<table border=0>
<%

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
	
	//NO의 auto_increment 재정령
	String sql="ALTER TABLE review AUTO_INCREMENT=1";
	pstmt = conn.prepareStatement(sql);
	pstmt.executeUpdate(sql);
	sql="SET @CNT = 0";
	pstmt.executeUpdate(sql);
	sql="UPDATE review SET review.no = @CNT:=@CNT+1";
	pstmt.executeUpdate(sql);
	
	//데이터를 배열에 저장
	sql = "SELECT * FROM review";
	pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	
	ArrayList num = new ArrayList();
	ArrayList name = new ArrayList();
	ArrayList time = new ArrayList();
	ArrayList msg = new ArrayList();

	while(rs.next()){
		num.add(rs.getString("no"));
		name.add(rs.getString("name"));
		time.add(rs.getString("time"));
		msg.add(rs.getString("msg"));
	}
	
	//저장된 배열을 역으로 출력
	out.println("<tr><td width=400><td width=50>No</td><td width=80>작성자</td><td width=500>내용</td><td>작성시간</td></tr>");
	
	for(int i=num.size()-1;i>=0;i--){
		out.println("<tr><td></td><td>"+num.get(i)+"</td>");
		out.println("<td>"+name.get(i)+"</td>");
		out.println("<td>"+msg.get(i)+"</td>");
		out.println("<td>"+time.get(i)+"</td></tr>");
	}
	
	
	
	
}catch(SQLException ex){
	out.println("SQLException:"+ex.getMessage());
}finally{
	if(pstmt !=null)
		pstmt.close();
	if(conn != null)
		conn.close();
}
%>
<%@include file="Bottom.jsp" %>
</body>

</html>