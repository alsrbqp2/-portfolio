<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<%@ include file='login_menu.jsp' %>
</head>
<body>
<form action="" name="detail" method="post">
<table>
<tr><td rowspan="7"></>
<img src= "C:\Users\최기호\Desktop\영화사진\6위.jpg" >
</td><td>물의 기억(ALL)</td></tr>
<tr><td  width=400>예매율 6위 5.9%<br> 타입 : 디지털, 필름소사이어티, 필름소사이어티<br>
개봉일 : 2019.05.15<br>감독 : 진재운<br> 출연진 : 김명곤  <Br> 
 장르 : 다큐멘터리 / 100 분<br> 누적관객 : 18,747 |명전일관객 : 61명 </td> </tr>

<tr><td><br>
<input type='button' onclick="location.href='movieticket.jsp?name=rank6'" value ='결제하기'></td></tr>
<tr><td colspan="2">줄거리<br>

“물은 모든 걸 기억한다”<Br>
비밀스러운 자연의 법칙이 펼쳐지면 경이로운 아름다움이 된다<Br>
물은 이 모든 것을 기억하고 비춰주는 생명 그 자체다 <Br>
이러한 물의 기억에 담긴 자연과 생태계의 신비로운 기록들을 따라가다 보면<Br>
고향으로 내려온 그가 ‘생명 농법’을 시작하며 꿈꿨던 미래는 과연 어떤 모습일까?<Br>
</td> </tr>
</table>
<%@include file='Bottom.jsp' %>

</body>
</form>
</html>