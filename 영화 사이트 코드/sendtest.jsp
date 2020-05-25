<%@page contentType="text/html; charset=utf-8"%>
<html>
<form action='#' method="get">
<%
request.setCharacterEncoding("utf-8");

String userid = request.getParameter("id");

out.println("<input type='text' value="+userid+">");
%>


</html>