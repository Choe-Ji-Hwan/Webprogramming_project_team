//모달 로그인 창 띄우기 
function showLoginPage(){
	var backGround = document.getElementById("backScreen");
	var loginPage = document.getElementsByClassName("modalScreen");
	var blockScroll = document.body.setAttribute("class", "disableBodyScrolling");
	backGround.style.display = "block";
	loginPage.item(0).style.display="flex";
}

// 로그인 버튼 클릭
var loginBtn = document.getElementById("login");
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
