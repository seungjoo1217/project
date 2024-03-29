<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인 화면</title>

	<link rel="stylesheet" href="/resource/css/login.css">
</head>
<body>
	<main class="main">
        <!-- 헤더부분 -->
        <header>
            <div class="top-main">
                <!-- 영화관 로고와 로그인, 회원가입 배너 -->
                <div class="top-top">
                    <!-- 로고 -->
                    <div id="logo"><div></div></div>

                    <!-- 승주시네마 -->
                    <div id="cinemaName"><a href="/">SJ CiNeMa</a></div>


                    <!-- 회원가입-->
                    <div id="signup"><a href="/signup">회원가입</a></div>
                </div>
    
    
                <!-- 영화 선택, 예매 선택 상단바(고정) -->
                <div class="top-bottom">
                    <nav>
                        <span id="movieSelect"><a href="/movies">영화</a></span>
                        <span id="reservation"><a href="/reservation">예매</a></span>
                    </nav>
                </div>

            </div>
        </header>



		<!-- 로그인창 -->

		<p style="font-size: 30px; text-align: center; margin: 0;">로그인</p>
		
		<form action="/login" method="post" class="login-form">
			<div>
				<!-- 아이디 입력창 -->
				<div><input type="text" name="inputId"  id="inputId" placeholder="아이디를 입력해주세요"></div>

				<!-- 비밀번호 입력창-->
				<div><input type="password" name="inputPw" id="inputPw" placeholder="비밀번호를 입력해주세요"></div>

				<!-- 로그인버튼 -->
				<div><button id="loginButton">Login</button></div>

				<!-- 아이디/비밀번호 찾기 -->
				<div id="findIdPw">
					<a href="/findId">아이디 찾기</a> | <a href="/findPw">비밀번호 찾기</a>
				</div>

				<!-- 회원가입 버튼 -->
				<div id="signupButton"><a href="/signup">Sign Up</a></div>
			</div>
		</form>


	</main>

	
	<c:if test="${not empty sessionScope.message}">
	
		<script>
			alert('${message}');
			
			
		</script>
		 <c:remove var="message" scope="session" />
	
	
	</c:if>
</body>
</html>