<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="signup.css">
<meta charset="UTF-8">
<title>동서남book</title>
</head>
<body>
<div>
<header>
<div align="center">
<a href="mainpage.jsp"><img id="logo" src="image/logo.PNG"></a></div>
<div>
<button align="left" id="mypage" type="button" onclick="location.href='mypage.jsp'">마이페이지</button>
<button align="right" id="login" type="button" onclick="location.href='login.jsp'">로그인/회원가입</button><br><br>
<form align="right" name="search" method="post">
<input id="inputsearch" type="text" placeholder="검색어 입력">
<button id="search">검색</button><br><Br>
</form>
</div>
<hr>
</header>

<article>
<form method="post" align="center" >
이름 : <input type="text"><br>
아이디 : <input type="text"><br>
비밀번호 :<input type="password"><br>
비밀번호 확인 : <input type="password"><br>
<input type="submit" value="가입">
<input type="reset" value="취소">
</form>


</article>

<footer>
<div>
</div>
</footer>

</div>
</body>
</html>