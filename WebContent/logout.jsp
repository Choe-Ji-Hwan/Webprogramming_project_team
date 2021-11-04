<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<link rel="stylesheet" href="mainpage.css">
<meta charset="UTF-8">
<title>동서남book</title>
</head>
<body>

<%
	System.out.println("로그인 상태였어야 합니다.");

	// 로그인 유지 쿠키 삭제
	Cookie[] cookies = request.getCookies();
	if(cookies != null && cookies.length != 1){
		System.out.println("쿠키는 존재합니다." + cookies.length);
		for(Cookie c : cookies){
			if(c.getValue().equals(session.getAttribute("userid"))){
				
				System.out.println("정상적인 로그아웃 방법으로 들어왔습니다.");
				session.invalidate(); // 세션 초기화

				System.out.println(c.getValue()+"님의 쿠키 수명을 0으로 만듭니다.");
				c.setMaxAge(0);
				c.setPath("/");
				response.addCookie(c);
				%><script>
				alert("로그아웃 되었습니다.");
				location.href="mainpage.jsp";
				</script><%
			}	
		}
	}
	// 로그인 유지 쿠키가 만료될 경우 로그아웃
	else if(cookies.length==1){
		// 쿠키가 default쿠키 1개만 남은 경우
			cookies[0].setMaxAge(0);
			cookies[0].setPath("/");
			response.addCookie(cookies[0]);
			session.invalidate();
			%><script>
			alert("로그아웃 되었습니다.");
			location.href="mainpage.jsp";
			</script><%
	}
	%>
</body>
</html>