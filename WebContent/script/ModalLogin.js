//모달 로그인 창 띄우기 
function showLoginPage(){
	var backGround = document.getElementById("backScreen");
	var loginPage = document.getElementsByClassName("modalScreen");
	var blockScroll = document.body.setAttribute("class", "disableBodyScrolling");
	backGround.style.display = "block";
	loginPage.item(0).style.display="flex";
}

// 로그인 버튼 클릭 **************************************** 로그인 버튼 있는 페이지에 적용시 주석 꼭~~ 풀어주세요


var loginBtn = document.getElementById("login");
loginBtn.addEventListener("click", showLoginPage);
var login_flag = document.getElementById("login-flag");

// 회원 가입 버튼 클릭
var loginBtn = document.getElementById("signUp");
loginBtn.addEventListener("click", showSignInPage);
loginBtn.addEventListener("click", showLoginPage);


// 영역 밖 클릭시 모달 창 없애기

$('html').click(function(e) { 
	if($(e.target).hasClass("modalScreen")) { 
		$("#backScreen").css("display", "none"); 
		$(".modalScreen").css("display", "none"); 
		$("body").removeAttr("class");
		} 
});


// 카카오 로그인버튼

Kakao.init('686bdc322edbf65d66d89942c37cd301');  // 여기에 API key

// 카카오 로그인 버튼을 생성합니다.
Kakao.Auth.createLoginButton({
  container: '#kakaoLoginButton',
  success: function(authObj) {
 alert(JSON.stringify(authObj));
  },
  fail: function(err) {
  alert(JSON.stringify(err));
  }
});

////////////////////////////////////////////////////////////////////////////////////////////////
//회원가입 창 스크립트

//     [css class list]
//이름 input class : userInput
//회원가입 버튼: signUpButton
//작은 회원가입 버튼: smallSignUpButton
//작은 로그인 버튼: smallSignInButton



// 회원가입 버튼 누르실 div 업데이트 한 후 작은 회원가입 버튼을 로그인 버튼으로 변경
var nameBox = $("<div/>" , {
	class: "userDataContainer"
}) // userDataContainer 클래스 가진 div 태그 동적 생성

var nameInput = $("<input/>" , {
	class: "userInput",
	name: "name",
	type: "text",
	placeholder: "이름",
	value: ""
}) // input 태그 동적 생성

var smallSignInButton = $("<button/>", {
	class: "smallSignInButton",
})

var smallSignUpButton = $("<button/>", {
	class: "smallSignUpButton",
})

$(document).on("click", ".smallSignInButton", showSignUpPage)

$(".smallSignUpButton").click(showSignInPage);

function showSignInPage() {
	$(".modalScreen").find("h4").text("회원가입"); // 회원가입으로 메세지 변경
	$(".modalScreen").find("form").prepend(nameBox); // 입력 틀 집어 넣기
	$(".userDataContainer:eq(0)").append(nameInput); // 틀 안에 input 태그 집어 넣기
	// 데이터베이스 활용을 위한 값변경
	login_flag.setAttribute("value","signup");
	
	$(".loginButton").attr("class", "signUpButton"); // 큰 로그인 버튼을 회원가입 버튼으로 교체
	$(".signUpButton").text("회원가입");
	
	$(".smallSignUpButton").hide();  // 작은 회원가입 버튼 숨기기
	$(".messageContainer").contents()[0].textContent = "이미 가입하셨나요?"; // 메세지 변경
	$(".messageContainer").append(smallSignInButton); // 작은 회원가입 버튼을 로그인 버튼으로 교체
	$(".smallSignInButton").text("로그인");
}

function showSignUpPage() {
	$(".userDataContainer:eq(0)").remove();  // 이름 입력칸 삭제
	$(".smallSignInButton").remove(); // 작은 로그인 버튼 숨기기
	$(".smallSignUpButton").show();  // 
	
  	 // 데이터베이스 활용을 위한 값변경
   	login_flag.setAttribute("value","login");
	
	$(".modalScreen").find("h4").text("로그인"); // 로그인으로 메세지 변경
	
	$(".messageContainer").contents()[0].textContent = "계정이 없으신가요?"; // 메세지 변경
	
	$(".signUpButton").attr("class", "loginButton"); // 큰 로그인 버튼을 회원가입 버튼으로 교체
	$(".loginButton").text("로그인");
}
