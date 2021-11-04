<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="page-detail.css">
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<%-- 로그인 해야지 들어갈 수 있는 페이지 --%>
<body>
<div>
<header>
		<%-- 로고 : href를 쓸 때, 로그인 정보도 같이 가야됨. --%>
		<a href="mainpage.jsp"><img id="logo" src="image/logo.PNG"></a>
		<div align="right">
		<%-- 로그아웃 버튼 : login case /  logout state case --%>
		<button  id="login" type="button" 
				onclick="location.href='login.jsp'">로그아웃</button><br><br>
		
		<%-- 검색어 부분 : insert(have) login info so, login case / logout state case --%>		
		<form  name="search" method="post">
			<input id="inputsearch" type="text" placeholder="검색어 입력">
			<button id="search">검색</button><br><br><br><br>
		</form>
	</div>
</header>

<article>
		<div>
			<%-- profile image 원형으로 출력, 사진이 등록되어 있지 않으면 이름을 보여줌 --%>
			<table style="width:100%">
			<tr>
			<td style="width:10%">
				<hr>
				&nbsp;
			</td>
			<td style="width:100px">
			<div class="not-float-profile">
				<legend><img id="profile" src="image/demo_profile.png" alt="저자의 이름" style="vertical-align:middle;"></legend>
			</div>
			</td>
			<td style="width:90%">
				<hr>
				<button class="button" type="button" style="background-color:white; border-color:white;" 
					onclick="location.href='option.jsp'">
					<img src="image/gear.png" alt="gear" style="vertical-align:middle; width:20px; height:20px;">
					</button>&nbsp;
			</td>
			</tr>
			</table>
		</div>

		<div class="innerBox">
		<table>
			<tr>
				<%-- 자신이 리뷰한 6개만 책 표시 --%>
				<td colspan="6"><div>
					<p><b class="big-font"> 리뷰한 작품들 </b></p>
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
</article>

<hr>

<footer>
	<div class="innerBox">
	<table style="border-collapse: collapse; width:90%; margin-left: auto; margin-right: auto;">
		<tbody>
			<tr>
				<td style="width: 20%; padding-left: 50px"><b class="big-font">내 리뷰</b></td>
				
				<%-- 더보기 팝업이 필요할 예정 (javascript 넣으면 됨) --%>
				<td style="width: 80%; text-align: right;"><button  id="login" type="button" 
					onclick="location.href='login.jsp'"> 더보기 + </button></td>
			</tr>
			<tr>
				<td style="width: 20%; text-align: center;" rowspan="2">			
				<div class="info-book-format">
					<a href="book-detail.jsp"><img id="bookImage" src="image/demo_book1.jpg" alt="저자의 책" style="float:left;"></a>
					<div class="info-of-book">책 제목: ~<br>평점: ~</div>
				</div></td>
				<td style="width: 80%; text-align: center;">		
				<div>
					<p> <%-- 데이터베이스에서 리뷰 내용을 가져옵니다. --%>
					  재미있네요!
					</p>
				</div></td>
			</tr>
			<tr>
				<td style="width: 80%; text-align: left;"><button  id="mypage" type="button" 
					onclick="location.href='login.jsp'"> 좋아요 </button><button  id="mypage" type="button" 
					onclick="location.href='login.jsp'"> 싫어요 </button></td>
			</tr>
		</tbody>
	</table>
	</div>
</footer>
</div>
</body>
</html>