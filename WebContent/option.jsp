<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="option.css">
<body>
<div id="backScreen"></div>
<div class="modalScreen">
	<div class="loginContainer">
		<div class="innerLoginBox">
			<header>
				<div style="margin: 0px 20px; padding: 2px 0px">
					<div class="cancelButtonContainer">
						<button class="cancelButton"></button>
					</div>		
					<h2>설정</h2>		
				</div>
			</header>
			<section style="padding: 30px 0px 0px">
				<div style="margin: 0px 20px">
					<!-- 공지사항 링크 -->
					<div class="serviceContainer"><a href="dfdf.jsp">공지사항</a></div>
					<hr class="line"></hr>
				
					<!-- 부제목 -->
					<div class="subTitle">고객센터</div>	
					<!-- FAQ 링크 -->
					<div class="serviceContainer"><a href="dfdf.jsp">FAQ</div>
					<hr class="line"></hr>
					<!--건의사항 링크 -->
					<div class="serviceContainer"><a href="dfdf.jsp">건의사항</a></div>
					<hr class="line"></hr>
					<div style="margin: 35px 0px"></div>
					<!-- 로그아웃 링크 -->
					<div class="serviceContainer"><a href="dfdf.jsp">로그아웃</a></div>
					<hr class="line"></hr>
					<!--회원탈퇴 링크 -->
					<div class="serviceContainer"><a href="">회원탈퇴</a></div>
				</div>	
			</section>
		</div>
	</div>
</div>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<script src="script/ModalOption.js"></script>
</body>
</html>
