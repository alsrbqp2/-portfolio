<%@page contentType="text/html; charset=utf-8"%>
<html>

<head>
<title>Paichai Movie</title>

<!--폰트 링크-->
<link href="https://fonts.googleapis.com/css?family=Sunflower:300,700&display=swap&subset=korean" rel="stylesheet">

<!--메뉴 css 속성 -->
<style>

  .btn {
  display: inline-block;
  background: transparent;
  text-transform: uppercase;
  font-weight: 500;
  font-style: bold;
  font-size: 1.3rem;
  letter-spacing: 0.3em;
  color: black;
  border-radius: 0;
  padding: 10px 40px 10px;
  transition: all 0.1s;
  background: linear-gradient(270deg, #090817, #090817, #F9F8F7, #F9F8F7);
  background-position: 1% 50%;
  background-size: 300% 300%;
  text-decoration: none;
  margin: 0.625rem;
  border: 1px solid white;
}

.btn:hover {
  border: 1px solid black;
}

body {
  background: white;
  color: black;
  font-family: 'Sunflower', sans-serif;
}

article {
  height: 100vh;
}

body {
  align-items: top;
  justify-content: center;
  
}
type='text/css'
A:link    {color:orange;text-decoration:none;} /* 아직 방문하지 않은경우 */
A:visited {color:black; text-decoration:none; } /* 한번 이상 방문한 링크 처리 */
A:active  {color:black; text-decoration:none; }/* 마우스로 클릭하는 순간 */
A:hover  {color:red; text-decoration:none; } /* 마우스 링크 위 올려 놓았을때 */
    </style>

</head>
<script type="text/javascript">
function checkForm(){
alert("로그인을 해주십시오.");
}
</script>
<body>
<center>
<a href='index.jsp'><h1>Paichai Movie</h1></a>

<!-- 검색 창 -->
<table border=0>
<form action='#' method='post'>
<tr><td width='1000'></td>
<td><input type='text' id='id'></td><td><input type='submit' value='검색'  onclick=checkForm()></td></tr>
</form>
</table>

<a class="btn" href="#" onclick="checkForm()">소개</a>
<a class="btn" href="#" onclick="checkForm()">영화</a>
<a class="btn" href="#" onclick="checkForm()">리뷰게시판</a>
<a class="btn" href="#" onclick="checkForm()">마이페이지</a>

</center>
<br><br><br><br><br>


</body>
</html>
