<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="book-detail.css">
	<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
	<meta charset="UTF-8">
	<title>동서남book</title>
</head>
<body>
	<div>
		<div id="backScreen"></div>
		<div class="modalScreen">
			<div class="loginContainer">
				<div class="innerLoginBox">
					<header>		
						<img class="loginLogoBox" src="image/logo.png">			
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
						<div class="signUpContainer">
							계정이 없으신가요?
							<button class="signUpButton">회원가입</button>
						</div>
						<hr class="orLine"></hr>
						<a id="kakaoLoginButton"></a>
					</section>
				</div>
			</div>
		</div>
		<header>
			<div align="center">
				<a href="mainpage.jsp"><img id="logo" src="image/logo.png"></a>
			</div>
			<div>
				<button align="left" id="mypage" type="button" onclick="location.href='mypage.jsp'">마이페이지</button>
				<button align="right" id="login" type="button" >로그인/회원가입</button><br><br>
				<form align="right" name="search" method="post">
					<input id="inputsearch" type="text" placeholder="검색어 입력">
					<button id="search">검색</button><br><Br>
				</form>	
			</div>
		</header>
		<section>
			<section id="topSection">
				<fieldset id="bookSection">
					<legend><img class="bookImage" src="https://an2-img.amz.wtchn.net/image/v1/watcha/image/upload/c_fill,h_400,q_80,w_280/v1602533923/f2ln96lk4qpejxgkhu4j.jpg" alt="어떻게 말해줘야 할까의 포스터"></legend>
				</fieldset>
			</section>
			<section id="bottomSection">
				<div id="informationBox">
					<div class="outerBox" >
						<div class="innerBox" id="defaultInfo">
							<h4>기본 정보</h4><br>
							오은영의 현실밀착 육아회화<br>
							오은영/차상미<br>
							2020 · 대한민국 · 400p<br>
							‘국민 육아멘토’ ‘대한민국 엄마·아빠들의 엄마’ 오은영 박사의 신간. 누구나 쉽게 따라 할 수 있는 ‘부모의 말 한마디’를 친절하게 알려주는 책이다. 
							아이에게 하는 부모의 말이 잔소리가 아니라 효과적인 훈육이 되는 방법을 소개한다. 차상미 작가의 그림을 여럿 더하여 따...<br><br>
							
						</div>
					</div>
					<div class="outerBox">
						<div class="innerBox" id="writerInfo">
							<h4>저자 소개</h4><br>
							정신건강의학과 전문의이자 소아청소년정신과 전문의. SBS &lt우리 아이가 달라졌어요&gt, EBS &lt60분 부모&gt &ltLIVE TALK 부모&gt 등 여러 방송과 강연을 통해 대한민국 부모들이 가장 신뢰하는 ‘국민 육아 멘토’ ‘육아의 ...
							<br><br>
							
						</div>
					</div>
					<div class="outerBox">
						<div class="innerBox" id="writerProfile">
							<h4>저자/역자</h4>
							<ul>
								<li>
									<a title="저자이름" href="writer-detail.jsp">
										<div class="containerRow">
											<div class="writerImageBox">
												<img class="imageCircle" src="https://an2-img.amz.wtchn.net/image/v1/people/medium/2033f3dd867aa574226d.jpg" alt="저자 사진">
											</div>
											<div class="containerRow">
												<div id="writerName">
													<div>오은영</div>
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
							<h4>코멘트</h4>
							
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
									<div class="commentBox swiper-slide" >
										<div class="userInfo">
											<div class="containerRow commentInner">
												<div class="userImageBox">
													<img class="imageCircle" src="https://an2-img.amz.wtchn.net/image/v1/people/medium/2033f3dd867aa574226d.jpg" alt="저자 사진">
												</div>
												<h4>User3</h4>
											</div>	
										</div>
										<div class="userText">
											<div class="commentInner">앙 기모링~</div>
										</div>
										<div class="likeBox">
											<div class="commentInnerFlex">
												<img class="likeImage" src="image/like.svg">
												10
												
												<img class="unlikeImage" src="image/unlike.svg">
												2
											</div>
										</div>		
									</div>
									<div class="commentBox swiper-slide" >
										<div class="userInfo">
											<div class="containerRow commentInner">
												<div class="userImageBox">
													<img class="imageCircle" src="https://an2-img.amz.wtchn.net/image/v1/people/medium/2033f3dd867aa574226d.jpg" alt="저자 사진">
												</div>
												<h4>User4</h4>
											</div>	
										</div>
										<div class="userText">
											<div class="commentInner">언제 다해 ㅡㅡ</div>
										</div>
										<div class="likeBox">
											<div class="commentInnerFlex">
												<img class="likeImage" src="image/like.svg">
												7
												
												<img class="unlikeImage" src="image/unlike.svg">
												0
											</div>
										</div>		
									</div>
									<div class="commentBox swiper-slide" >
										<div class="userInfo">
											<div class="containerRow commentInner">
												<div class="userImageBox">
													<img class="imageCircle" src="https://an2-img.amz.wtchn.net/image/v1/people/medium/2033f3dd867aa574226d.jpg" alt="저자 사진">
												</div>
												<h4>User5</h4>
											</div>	
										</div>
										<div class="userText">
											<div class="commentInner">살려줘...</div>
										</div>
										<div class="likeBox">
											<div class="commentInnerFlex">
												<img class="likeImage" src="image/like.svg">
												3
												
												<img class="unlikeImage" src="image/unlike.svg">
												1
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
		</section>
		<article>
			<div>
			</div>
		</article>
	
		<footer>
			<div>
			</div>
		</footer>
	</div>
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script src="script/modalLogin.js"></script>
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
