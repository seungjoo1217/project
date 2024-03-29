<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>

	<link rel="stylesheet" href="/resource/css/updateMember.css">
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

        <!-- 회원가입 -->

        <p style="font-size: 30px; text-align: center; margin: 0;">개인정보 수정</p>

        <form action="/updateMember" method="post" class="signup-form" onsubmit="return validate()">
            <div class="signup-main">
                <!-- 왼쪽 -->
                <div class="signup-left">
                    <p>아이디</p>
                    <input type="text" name="inputId" id="inputId" autocomplete="off" placeholder="영어 소문자, 숫자, 특수문자 포함 6~14글자" value="${sessionScope.loginMember.memberId}"  required>
                    <span id="confirmId"></span>
                    <br><br>
        
                    <p>비밀번호</p>
                    <input type="password" name="inputPw" id="inputPw" required>
                    <br><br>
        
                    <p>비밀번호 확인</p>
                    <input type="password" name="inputPw2" id="inputPw2" required>
                    <span id="pwMessage"></span>
                    <br><br>
        
                    <p>이름</p>
                    <input type="text" name="inputName" id="inputName" value="${sessionScope.loginMember.memberName}"  required>
                    <span id="nameMessage"></span>
                    <br><br>
        
                    <p>이메일</p>
                    <input name="inputEmail" id="inputEmail" type="text"> @ <input name="email2" id="email2" type="text">
                    <select id="emailSelect">
                        <option value="type">직접입력</option>
                        <option>naver.com</option>
                        <option>daum.net</option>
                        <option>gmail.com</option>
                        <option>nate.com</option>
                        <option>yahoo.co.kr</option>
                    </select>
                    <br><br>
        
                    <p>주소</p>
                    <input type="text" name="inputAddress" id="inputAddress" value="${sessionScope.loginMember.address}"  required>
                    
                    <input value="${sessionScope.loginMember.memberNo}" name = "memberNo" type="hidden">
                </div>


                <!-- 오른쪽 -->
                <div class="signup-right">
                    <div class="randomNum">
                        <div id="randomNumImage"></div>
                        <input type="text" id="inputRandomNum" placeholder="보안숫자를 입력해주세요">
                    </div>
                    <span id="randomNumMessage"></span>
                    <button>Update</button>
                </div>


            </div>
        </form>


        

	</main>

    <script src="/resource/js/updateMember.js"></script>
    
    
    <c:if test="${not empty sessionScope.message}">
	
		<script>
			alert('${message}');
			
			
		</script>
		 <c:remove var="message" scope="session" />
	
	
	</c:if>
	
	
</body>
</html>