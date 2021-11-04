<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="webproject.searchbook" %>

<%@ page import="webproject.popularbook" %>    
<%@ page import="webproject.newbook" %>

<%searchbook s=new searchbook();%>
<% String title=request.getParameter("searchword");%>
<%s.info(title);%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="book-detail.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
	<meta charset="UTF-8">
	<title>동서남book</title>
</head>
<body>
	<!-- 헤더 -->
	<header id="mainPageHeader">
			<nav class="headerContainer">
			<div class="logoContainer">
				<a href="mainpage.jsp"><img id="logo" src="image/logo.PNG"></a>  
			</div>   		
			<div class="searchContainer">
	         <form action="book-detail.jsp" style="width: 100%">
	             <label class="searchLabel">
	                 <div class="searchBox">
	                     <input class="inputSearch" name="searchword" type="search" placeholder="책 제목, 저자를 검색해보세요." autocomplete="off" value="">
	                 </div>
	             </label>
	         </form>
	 		</div><%-- 로그인 버튼을 로그아웃 버튼으로 바꾸기 --%>

	        <div class="LoginButtonContainer">
	        	<% 
					if(session.getAttribute("userid")==null){%>
							<button id="login" type="button">로그인</button><%}
					else{
						%><%=session.getAttribute("userid")%>분 환영합니다!<button align="right" id="logout" type="button" onclick="location.href='logout.jsp'">로그아웃</button><br><br>
					<%}
				%>
	        </div>
	        <div class="signUpButtonContainer">
	        	<% 
					if(session.getAttribute("userid")==null){%>
							<button id="signUp" type="button">회원가입</button><%
							}
					else{}
				%>
	        </div>
	        <div class="myPageButtonContainer">
	        	<button id="mypage" type="button" onclick="location.href='mypage.jsp'">마이페이지</button>
	        </div>
		</nav>
	</header>
	
	<main>
		<div class="backgroundBookImage">
			Image
		</div>
		<!-- 책 이미지, 제목 있는 부분  -->
		<section class="topContainer" >
			<div class="bookContainer">
				<div class="bookImageContainer">
					<img class="bookImage" src="<%=s.printImage()%>" alt="bookImage">
				</div>
				<div class="bookTitleContainer">
					<%=s.printTitle() %>
				</div>
			</div>
		</section>
		<section class="bottomContainer">
			<div id="informationBox">
				<div class="outerBox" >
					<div class="innerBox" id="defaultInfo">
						<div class="infoTitleContainer">기본 정보</div>
						<div class="contentContainer">
							요약 : <%=s.printDescription() %>
							출판사 : <%=s.printPublisher() %><br>
							출판날짜 : <%=s.printPubdate() %><br>
							<a id="more" href="<%=s.printLink() %>">더보기</a>
						</div>
					</div>
				</div>
				<div class="outerBox">
					<div class="innerBox" id="writerInfo">
						<div class="infoTitleContainer">저자 소개</div>
						<div class="contentContainer">
						</div>					
					</div>
				</div>
				<div class="outerBox">
					<div class="innerBox" id="writerProfile">
						<div class="infoTitleContainer">저자/역자</div>
						<ul>
							<li>
								<a title="저자이름" href="writer-detail.jsp">
									<div class="containerRow">
										<div class="writerImageBox">
											<img class="imageCircle" src="https://an2-img.amz.wtchn.net/image/v1/people/medium/2033f3dd867aa574226d.jpg" alt="저자 사진">
										</div>
										<div class="containerRow">
											<div id="writerName">
												<div><%=s.printAuthor() %></div>
												<div>저자</div>
											</div>
										</div>
									</div>		
								</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="outerBox">
					<div class="innerBoxNoline">
						<div class="infoTitleContainer">코멘트</div>
						<div class="swiper-container" id="commentSwiper">
							<div class="swiper-wrapper">
								<div class="commentBox swiper-slide" >
								<div class="userInfo">
									<div class="containerRow commentInner">
										<div class="userImageBox">
											<img class="imageCircle" src="https://an2-img.amz.wtchn.net/image/v1/people/medium/2033f3dd867aa574226d.jpg" alt="저자 사진">
										</div>
										<h4>User1</h4>
									</div>	
								</div>
								<div class="userText">
									<div class="commentInner">이 책을 보고 아따맘마가 되었다.</div>
								</div>
								<div class="likeBox">
									<div class="commentInnerFlex">
										<img class="likeImage" src="image/like.svg">
										150
										
										<img class="unlikeImage" src="image/unlike.svg">
										10
									</div>
								</div>		
								</div>
								<div class="commentBox swiper-slide" >
									<div class="userInfo">
										<div class="containerRow commentInner">
											<div class="userImageBox">
												<img class="imageCircle" src="https://an2-img.amz.wtchn.net/image/v1/people/medium/2033f3dd867aa574226d.jpg" alt="저자 사진">
											</div>
											<h4>User2</h4>
										</div>	
									</div>
									<div class="userText">
										<div class="commentInner">아이와 말하기의 정석</div>
									</div>
									<div class="likeBox">
										<div class="commentInnerFlex">
											<img class="likeImage" src="image/like.svg">
											37
											
											<img class="unlikeImage" src="image/unlike.svg">
											5
										</div>
									</div>		
								</div>
							</div>
							<div class="swiper-button-next"></div>
   							<div class="swiper-button-prev"></div>
						</div>
					</div>
				</div>
			</div>
		</section>	
	</main>
		
		<article>
			<div>
			</div>
		</article>
	
		<footer>
			<div>
			</div>
		</footer>
	
<div id="backScreen"></div>
<div class="modalScreen">
	<div class="loginContainer">
		<div class="innerLoginBox">
			<header>		
				<img class="loginLogoBox" src="image/logo.PNG">			
			</header>
			<h4>로그인</h4>
			<section>
				<div class="loginDataBox">
					<form>
						<div class="userDataContainer">
							<input class="userInput" name="id" type="text" label="아이디" placeholder="아이디" autocomplete="off" value="">
						</div>
						<div class="userDataContainer">
							<input class="userInput" name="pwd" type="password" label="비밀번호" placeholder="비밀번호" autocomplete="off" value="">	
						</div>
						<button class="loginButton">로그인</button>
					</form>
				</div>
				<div class="messageContainer">
					계정이 없으신가요?
					<button class="smallSignUpButton">회원가입</button>
				</div>
				<hr class="orLine"></hr>
				<a id="kakaoLoginButton"></a>
			</section>
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="script/ModalLogin.js?var=1"></script>
<script>
	var swiper = new Swiper('.swiper-container', {
	    slidesPerView: 3,
		navigation: {
	        nextEl: '.swiper-button-next',
	        prevEl: '.swiper-button-prev',
	      },
	    });
</script>
</body>
</html>
