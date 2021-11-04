<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%
	// 데이터베이스 연결부분
	int new_no = 0;
	String name, id, pw, id_isbm;
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/book_webprogram?serverTimezone=UTC";
		System.out.println("연결 성공했습니다.");
		conn = DriverManager.getConnection(url, "root", "0000");
		System.out.println("데이터베이스와 커넥트 성공");
	}
	catch (Exception e){
			out.println("DB 연동 오류 : "+e.getMessage());
	}
%>
<html>

<head>
<link rel="stylesheet" href="mainpage.css">
<meta charset="UTF-8">
<title>동서남book</title>
</head>
<body>

	<%	// 데이터베이스 연결부분
		try{
		// 회원가입일 경우
		if(request.getParameter("login").equals("signup")){

			// 개수를 cnt로 불러올 쿼리문
			String signup_sql = "select count(*) as cnt from user_info_tbl";
			pstmt = conn.prepareStatement(signup_sql);
			System.out.println("회원가입 쿼리문까지 잘 작동했습니다.");
			rs = pstmt.executeQuery();
			
			rs.next();
					
			// personal_info_tbl의 개수에서 1증가한 값을 no로 저장
			new_no = Integer.parseInt(rs.getString("cnt"));
			new_no++;
			String insert_all_sql = "insert into user_info_tbl (No,NAME,ID,PW,ID_ISBM) values(?,?,?,?,?)";
			pstmt = conn.prepareStatement(insert_all_sql);
			pstmt.setInt(1, new_no);
			pstmt.setString(2, request.getParameter("name"));
			pstmt.setString(3, request.getParameter("id"));
			pstmt.setString(4, request.getParameter("pw"));
			pstmt.setString(5, null);
							
			int count = pstmt.executeUpdate();
			if(count <= 0) {
				System.out.println("Insert 실패"); 
			}
			%>
			<script>
				alert("회원가입 완료!");
				location.href = "mainpage.jsp";
			</script>
			<%
			}
				
		
		// 로그인일 경우
		else { 
			id = request.getParameter("id");
			pw = request.getParameter("pw");
			String login_check = "select count(PW) as cnt from user_info_tbl WHERE ID=?";
			pstmt = conn.prepareStatement(login_check);
			System.out.println("로그인 체크 쿼리문이 작동했습니다.");
			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			rs.next();
			int check = Integer.parseInt(rs.getString("cnt"));
			if(check == 0){
				System.out.println("login fail");
				%>
				<script>
					alert("로그인 실패!");
					location.href = "mainpage.jsp";
				</script>
				<%
			}
			
			String login_sql = "select PW from user_info_tbl WHERE ID=?";
			pstmt = conn.prepareStatement(login_sql);
			System.out.println("로그인 쿼리문이 작동했습니다.");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				System.out.println("현재 rs.getString(1)상태 : "+rs.getString(1));
				System.out.println("mainpage.jsp에서 받아온 pw정보 : " + pw);
				if(rs.getString(1).equals(pw)){
					System.out.println("login success");
					session.setAttribute("userid", id);
					session.setAttribute("userpw", pw);
					Cookie cookie = new Cookie("userid", id);
					cookie.setMaxAge(60);
					cookie.setPath("/");
					response.addCookie(cookie);
					%>
					<script>
						alert("로그인 성공!");	
						location.href = "mainpage.jsp";
					</script>
					<%
					}
				else
				{
					System.out.println("login fail");
					%>
					<script>
						alert("로그인 실패!");
						location.href = "mainpage.jsp";
					</script>
					<%
				}		
			}
		}	
		}catch (Exception e){
			out.println("DB 연동 오류 : "+e.getMessage());
		}
	%>

<%
	// 이전 페이지로 돌려줌.
    //String redirectURL = request.getHeader("referer");
    //response.sendRedirect(redirectURL);
%>
</body>
</html>
