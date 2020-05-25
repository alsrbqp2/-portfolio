<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<%@ include file='login_menu.jsp' %>
</head>
<body>
<form action="" name="detail" method="post">
<table>
<tr><td rowspan="7"></>
<img src= "C:\Users\최기호\Desktop\영화사진\9위.jpg" >
</td><td>더 보이(15)</td></tr>
<tr><td  width=400>예매율 9위 1.5%<br> 타입 : 디지털(자막)<br>
개봉일 : 2019.05.23<br>감독 : 데이빗 야로베스키<br> 출연진 : 잭슨 A. 던, 엘리자베스 뱅크스, 데이빗 덴맨 <Br> 
 장르 : 공포(호러), SF / 90 분<br> 
누적관객 : 83,855명  | 전일관객 : 5,621명</td> </tr>
<tr><td><br>
<input type='button' onclick="location.href='movieticket.jsp?name=rank9'" value ='결제하기'></td></tr>
<tr><td colspan="2">줄거리<br>
슈퍼히어로의 힘을 가진 다른 세계에서 온 소년<br>
두려워하라<br>
어느 날, 간절히 아기를 원하던 부부에게 찾아온<br>
다른 세계의 소년 ‘브랜든’<br>
그는 과연 축복인가, 재앙인가? <br>
</td> </tr>
</table>
<%@include file='Bottom.jsp' %>
</body>
</form>
</html>