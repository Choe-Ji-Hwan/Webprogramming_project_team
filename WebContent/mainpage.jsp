<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="webproject.popularbook" %>    
<%@ page import="webproject.newbook" %>

<!-- API 객체 생성 -->

<%	popularbook p=new popularbook(); p.info(); 
	newbook r=new newbook(); r.info();
%>

<!-- 꾸끼 -->

<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null){
		for(Cookie c : cookies){
			if(c.getName().equals("userid")){
				String ids = c.getValue();
				session.setAttribute("userid", ids);
			}
		}
		String id = (String) session.getAttribute("userid");
		System.out.println(id+"분이 로그인 상태");
	}
%>

<%-- 로그인 버튼을 로그아웃 버튼으로 바꾸기 --%>
<% 
	if(session.getAttribute("userid")==null){%>
		<button align="right" id="login" type="button">로그인/회원가입</button><br><br><%}
	else{
	%><%=session.getAttribute("userid")%>분 환영합니다!<button align="right" id="logout" type="button" onclick="location.href='logout.jsp'">로그아웃</button><br><br>
	<%}
%>

<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="mainpage.css">
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
	         <form style="width: 100%">
	             <label class="searchLabel">
	                 <div class="searchBox">
	                     <input class="inputSearch" name="search" type="search" placeholder="책 제목, 저자를 검색해보세요." autocomplete="off" value="">
	                 </div>
	             </label>
	         </form>
	 		</div>
	        <div class="LoginButtonContainer">
	        	<button id="login" type="button">로그인</button>
	        </div>
	        <div class="signUpButtonContainer">
	        	 <button id="signUp" type="button">회원가입</button>     
	        </div>
	        <div class="myPageButtonContainer">
	        	<button id="mypage" type="button" onclick="location.href='mypage.jsp'">마이페이지</button>
	        </div>
		</nav>
	</header>

<main style="padding-top: 100px">
	<!-- 인기 있는 책 리스트 화면 -->
	<div class="sectionContainer">
		 <div class="listTitleContainer">
    		<p class="listTitle">인기 있는 책</p>
	    </div>
	    <div class="bookListContainer">
	    	<div class="swiper-container">
		    	<div class="swiper-wrapper">
		    		
		    		<%for(int i=0; i<10; i++){ %>
						<div class="swiper-slide">
				    		<div class="bookContainer">
				    			<a class="bookDetailLink" href="book-detail.jsp?bookname=<%=r.printTitle(i)%>">
					    			<div class="book">
					    				<img class="bookImage"src="<%=p.printImage(i) %>">
					    			</div>
					    			<div class="bookTitle">
					    				<%=p.printTitle(i) %>
					    			</div>
				    			</a>
				    		</div>
		    			</div>  
					<%} %>
	    		</div>  
	    		<div class="swiper-button-next" id="button1-next"></div>
	    		<div class="swiper-button-prev" id="button1-prev"></div> 
	    	</div>
		</div>	
	</div>
	
	<!-- 신규책 리스트 화면 -->
	<div class="sectionContainer">
		 <div class="listTitleContainer">
    		<p class="listTitle">신규 책</p>
	    </div>
	    <div class="bookListContainer">
	    	<div class="swiper-container">
		    	<div class="swiper-wrapper">
		    	
		    		<%for(int i=0; i<10; i++){ %>
						<div class="swiper-slide">
			    			<div class="bookContainer">
			    				<a class="bookDetailLink" href="book-detail.jsp?bookname=<%=r.printTitle(i)%>">
				    				<div class="book">
				    					<img class="bookImage"src="<%=r.printImage(i)%>">
				    				</div>
				    				<div class="bookTitle">
				    					<%=r.printTitle(i) %>
				    				</div>
			    				</a>
			    			</div>
		    			</div> 
					<%} %>	    	
	    		</div>
	    		<div class="swiper-button-next" id="button2-next"></div>
	    		<div class="swiper-button-prev" id="button2-prev"></div>      		 	 	
	    	</div>     	
		</div>
	</div>
	
	<!-- 로그인 및 회원가입 화면 -->
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
						<form action="loginpopup-db.jsp" method="post">
							<div class="userDataContainer">
								<input class="userInput" name="id" type="text" label="아이디" placeholder="아이디" autocomplete="off" value="">
							</div>
							<div class="userDataContainer">
								<input class="userInput" name="pw" type="password" label="비밀번호" placeholder="비밀번호" autocomplete="off" value="">	
							</div>
							<div>
								<input name="login" id="login-flag" type="hidden" name="login" value="login">
							</div>
							<button type="submit" class="loginButton">로그인</button>
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

</main>

<footer>
    <div>
    </div>
</footer>
   	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script src="script/swiper.js?var=1"></script>
    <script src="script/ModalLogin.js?var=1"></script>
</body>

</html>
