<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<%@ include file='login_menu.jsp' %>
</head>
<body>
<form action="" name="detail" method="post">
<table>
<tr><td rowspan="7"></>
<img src= "C:\Users\최기호\Desktop\영화사진\10위.jpg" >
</td><td>교회 오빠(ALL)</td></tr>
<tr><td  width=400>예매율 10위 0.9%<br> 타입 : 디지털<br>
개봉일 : 2019.05.16<br>감독 : 이호경
<br>출연진 : 이관희, 오은주, 이소연  <Br> 
 장르 : 다큐멘터리 / 85 분<br> 
누적관객 : 53,642명 | 전일관객 : 2,948명</td> </tr>
<tr><td><br>
<input type='button' onclick="location.href='movieticket.jsp?name=rank10'" value ='결제하기'></td></tr>
<tr><td colspan="2">줄거리<br>
머나먼 사막 속 신비의 아그라바 왕국의 시대.<br>
"하나님, 저희 가정 이러다 다 죽게 생겼습니다. 주님 살려주세요…"<br>
딸 아이를 출산하고, 산후조리원에서 나오는 날 들려온 남편의 4기 대장암 소식, <br>
갑작스러운 어머니의 죽음,  <br>
아내의 4기 혈액암… <br>
함께 기도로 매달리는 것밖에는 할 수 없었다. <br>
</td> </tr>
</table>
<%@include file='Bottom.jsp' %>
</body>
</form>
</html>