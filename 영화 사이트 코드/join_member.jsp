<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<%@include file='menu.jsp' %>
</head>
<body>
<center>
 <h3>회원 가입</h3>
 <form action="meberdetail.jsp" name="meber" method="post">
 <table>
 <tr><td>아이디:</td><td ><input type="text" name="id">
 <input type="button" value="아이디 중복 검사"></td></tr>
 <tr><td>비밀번호:</td><td><input type="password" name="pass"></td></tr>
 <tr><td>이름:</td><td><input type="text" name="name"></td></tr>
 <tr><td>성별:</td><td><input type="radio" name="sex" value="남성">남성
 <input type="radio" name="sex" value="여성">여성 </td></tr>
 <tr><td>휴대전화:</td><td ><select name="phone1"><option value="010">010</option>
 <option value="011">011</option>
 <option value="016">016</option>
 <option value="017">017</option></select>-<input type="text" maxlength="4" size=4 name="phone2">-
 <input type="text" maxlength="4" size=4 name="phone3"></td></tr>
 <tr><td>email:</td><td><input type="text" name="mail">@<input type="text" name="mailaddress">
 </select></td></tr>
 <tr><td>주소:</td><td><input type="text" name="address"></td></tr>
 <tr><td>가입경로:</td><td><input type="checkbox" name=internet>인터넷
 <input type="checkbox" name=boox>책
 <input type="checkbox" name=ad>광고
 <input type="checkbox" name=fr>친구</td></tr>
 <tr><td ></td><td><input type="submit" value="가입">
 <input type="reset" value="다시쓰기"></td></tr>
 
</center>
 </table>
 </form>

 

 
<%@include file='Bottom.jsp' %>
</body>

</html>