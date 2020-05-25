<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<%@ include file='login_menu.jsp' %>
</head>
<body>
<form action="" name="detail" method="post">
<table>
<tr><td rowspan="7"></>
<img src= "C:\Users\최기호\Desktop\영화사진\4위.jpg" >
</td><td>어린 의뢰인(12)</td></tr>
<tr><td  width=300>예매율 4위9.9%<br> 타입 : 디지털<br>
개봉일 : 2019.05.22<br>감독 : 장규성<br> 출연진 : 이동휘(정엽), 유선(지숙), 최명빈(다빈), 이주원(민준) <Br> 
 장르 : 드라마 / 114 분<br> 누적관객 : 175,403명전일관객 : 12,214명<br> </td> </tr>

<tr><td><br>
<input type='button' onclick="location.href='movieticket.jsp?name=rank4'" value ='결제하기'></td></tr>
<tr><td colspan="2">줄거리<br>

2013년 대한민국을 충격에 빠뜨렸던 실화!<br>
“제가 동생을 죽였어요”<br>
인생 최대 목표는 오직 성공뿐인 변호사 ‘정엽’<br>
주변에 무관심한 그에게 ‘다빈’과 ‘민준’ 남매가 자꾸 귀찮게 얽힌다.<br>
10살 소녀 ‘다빈’이 7살 남동생을 죽였다는 충격적인 자백<br>
뒤늦게 미안함을 느낀 ‘정엽’은 자신의 모든 것을 걸고<br>
‘다빈’의 엄마 ‘지숙’에게 숨겨진 진실을 밝히려고 하는데… <br>
</td> </tr>
</table>
<%@include file='Bottom.jsp' %>
</body>
</form>
</html>