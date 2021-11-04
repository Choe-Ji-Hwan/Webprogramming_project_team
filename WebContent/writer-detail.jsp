<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="page-detail.css">
<meta charset="UTF-8">
<title>저자 소개 페이지</title>
</head>
<body>
<div>
<header>
		<%-- 로고 : href를 쓸 때, 로그인 정보도 같이 가야됨. --%>
		<a href="mainpage.jsp"><img id="logo" src="image/logo.PNG"></a>
	<div align="left">
		<%-- 마이페이지 버튼 : login case  / logout state case --%>
		<button id="mypage" type="button" 
				onclick="location.href='mypage.jsp'">마이페이지</button>
	</div>
	<div align="right">
		<%-- 로그인/회원가입 버튼 : login case /  logout state case --%>
		<button  id="login" type="button" 
				onclick="location.href='login.jsp'">로그인/회원가입</button><br><br>
		
		<%-- 검색어 부분 : insert(have) login info so, login case / logout state case --%>		
		<form  name="search" method="post">
			<input id="inputsearch" type="text" placeholder="검색어 입력">
			<button id="search">검색</button><br><br><br><br>
		</form>
	</div>
</header>

<hr>

<article>
	<div class="innerBox">
		<div>
			<%-- profile image 원형으로 출력, 사진이 등록되어 있지 않으면 이름을 보여줌 --%>
			<div class="not-float-profile">
				<img id="profile" src="image/demo_profile.png" alt="저자의 이름" style="vertical-align:middle;">
				<%-- 데이터베이스에서 이름 가져옴 --%>
				<span><b class="big-font">이기주(예)</b></span>
			</div>
			
		</div>
		<div class="innerBox" style="border-top:1px solid #f77;">
			<p>저자의 소개</p>
			<p> <%-- 데이터베이스에서 저자의 소개를 가져옵니다. --%>
			 말을 아껴 글을 쓴다. 쓸모를 다해 버려졌거나 사라져 가는 것에 대해 주로 쓴다. 활자 중독자를 자처하며 서점을 배회하기를 좋아한다. 
			 퇴근길에 종종 꽃을 사서 어머니 화장대에 담담히 올려놓는다. 뤽 베송 감독의 영화 ‘그랑블루’를 좋아한다. 지은 책으로는 『언어의 온도』 『말의 품격』『글의 품격』 『한때 소중했던 것들』『사랑은 내 시간을 기꺼이 건네주는 것이다』등이 있다.
			</p>
		</div>
	</div>
</article>

<hr>

<footer>
	<div class="innerBox">
		<table>
			<tr>
				<%-- 자신이 리뷰한 6개만 책 표시 --%>
				<td colspan="6"><div>
					<p><b class="big-font"> 작품들 </b></p>
				</div></td>
			</tr>
			<tr>
				<%-- for문을 이용해서 아래 양식을 형식으로 출력한다. --%>
				<td>
				<div class="info-book-format">
					<a href="book-detail.jsp"><img id="bookImage" src="image/demo_book1.jpg" alt="저자의 책" style="float:left;"></a>
					<div class="info-of-book">책 제목: ~<br>평점: ~</div>
				</div>
			
				<%-- for문을 이용해서 아래 양식을 형식으로 출력한다. --%>
				<div class="info-book-format">
					<a href="book-detail.jsp"><img id="bookImage" src="image/demo_book2.jpg" alt="저자의 책" style="float:left;"></a>
					<div class="info-of-book">책 제목: ~<br>평점: ~</div>
				</div>
				</td>
			</tr>
		</table>
		</div>
</footer>
</div>
</body>
</html>
