<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>비밀번호 찾기</title>

    <link rel="stylesheet" href="/resource/css/findPw.css">
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
					<c:choose>
						<c:when test="${empty sessionScope.loginMember}">
							<!-- 로그인 -->
                    	<div id="login"><a href="/login">로그인</a></div>
						</c:when>
						
						<c:otherwise>
							<div id="welcome">[${sessionScope.loginMember.memberName}]님 환영합니다</div>
                            <div id="logout"><a href="/logout">로그아웃</a></div>
						</c:otherwise>
					</c:choose>

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


        <p style="font-size: 30px; text-align: center; margin: 0;">비밀번호 찾기</p>
        <div id="mainBox">
            <form action="/findPw" id="box" method="post" onsubmit="return validate()">
                <div>
                    이름<input type="text" name="inputName" id="inputName">
                </div>
                <div>
                    아이디<input type="text" name="inputId" id="inputId">
                </div>
    
                <div class="randomNum">
                    <div id="randomNumImage"></div>
                    <input type="text" id="inputRandomNum" placeholder="보안숫자를 입력해주세요">
                </div>
                <span id="randomNumMessage"></span>

                <button id="findPwButton">비밀번호 찾기</button>
            </form>
        </div>









    </main>

    <script src="/resource/js/inputPw.js"></script>



    <c:if test="${not empty sessionScope.message}">
	
		<script>
			alert('${message}');
			
			
		</script>
		 <c:remove var="message" scope="session" />
	
	
	</c:if>
</body>
</html>