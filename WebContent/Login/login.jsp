<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<body>
<%--backScreen: 뒤에 투명하고 검은 배경화면 --%>
<%--modalScreen: 로그인창 전체 --%>
<%--loginContainer: 로그인창 전체 --%>
<%--innerLoginBox: 로그인창 전체 // 베끼다 보니까 전체틀이 2개됨 ㅋㅋㅋ--%>
<%--header: 로고 틀--%>
<%--section: 로그인 틀--%>

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
<script src="script/modalLogin.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
</body>
</html>