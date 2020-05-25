<%@ page contentType="text/html; charset=utf-8" %>
<html>
<head>
<%@ include file='login_menu.jsp' %>
</head>
<body>
<form action="" name="detail" method="post">
<table>
<tr><td rowspan="7"></>
<img src= "C:\Users\최기호\Desktop\영화사진\rank1.jpg" >
</td><td>알라딘(ALL)</td></tr>
<tr><td  width=300>예매율 1위 30.9%<br> 타입: 디지털(자막),ATMOS(자막),디지털(더빙),3D(자막)<br>
 개봉일:2019.05.23 <br> 감독:가이 리치 출연진: 윌 스미스,나오미 스콧<Br> 
 장르: 가족,판타지,어드벤처/ 127분<br> 누적관객:1,092,052명  |  전일관객:108,341명<br> </td> </tr>

<tr><td><br>
<input type='button' onclick="location.href='movieticket.jsp?name=rank1'" value ='결제하기'></td></tr>
<tr><td colspan="2">줄거리<br>
머나먼 사막 속 신비의 아그라바 왕국의 시대.<br>

좀도둑 ‘알라딘’은 마법사 ‘자파’의 의뢰로 마법 램프를 찾아 나섰다가<br>

주인에게 세 가지 소원을 들어주는 지니를 만나게 되고,<br>

자스민 공주의 마음을 얻으려다 생각도 못했던 모험에 휘말리게 되는데… <br>
</td> </tr>
</table>
<%@include file='Bottom.jsp' %>
</body>
</form>

</html>