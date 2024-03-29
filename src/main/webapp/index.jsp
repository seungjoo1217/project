<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>프로젝트 메인화면</title>
	
	<link rel="stylesheet" href="/resource/css/main.css">
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
                            <div id="nowelcome"></div>
                    	    <div id="login"><a href="/login">로그인</a></div>
						</c:when>
						
						<c:otherwise>
							<div id="welcome">
                                <div>[${sessionScope.loginMember.memberName}]님 환영합니다</div>
                                <div id="upButtons">
                                    <div><a href="/updateMember" id="updateMember">개인정보 수정</a></div>
                                    <div id="deleteBox"><a href="/deleteMember?memberNo=${sessionScope.loginMember.memberNo}" id="deleteMember"
                                    onclick="return confirm('정말 탈퇴하시겠습니까?');">탈퇴하기</a></div>
                                </div>
                            </div>
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






        <!-- 메인부분 -->
        <div class="bottom-main">
            <!-- 광고 -->
            <div id="ad">
                <div id="title">댓글부대</div>
                <div id="content">실력 있지만 허세 가득한 사회부 기자 ‘임상진’ 대기업 ‘만전’의 비리를 취재하지만 오보로 판명되며 정직당한다.<br>
                        “기자님 기사 오보 아니었어요. 다 저희들이 만든 수법이에요” 그러던 어느 날, 의문의 제보자가 찾아온다.<br>
                        자신을 온라인 여론 조작을 주도하는 댓글부대, 일명 ‘팀알렙’의 멤버라고 소개한 제보자는<br>
                        돈만 주면 진실도 거짓으로, 거짓도 진실로 만들 수 있다고 하는데…<br><br>
                        “불법은 아니에요. 합법인지는 모르겠지만” 이 제보, 어디부터 진실이고, 어디까지 거짓인가?</div>
                <div id="buttons">
                    <button id="showDetail">상세보기>></button>
                    <button id="reservationButton">예매하기</button>
                </div>
            </div>

            <!-- 영화 종류 -->
            <div class="movie">
                <span id="movie-1"><p>1</p></span>
                <span id="movie-2"><p>2</p></span>
                <span id="movie-3"><p>3</p></span>
                <span id="movie-4"><p>4</p></span>
                <span id="movie-5"><p>5</p></span>
            </div>

        </div>

        
    </main>
    
    
    
    
    
    
    <script src="/resource/js/main.js"></script>
    

	<c:if test="${not empty sessionScope.message}">
	
		<script>
			alert('${message}');
			
			
		</script>
		 <c:remove var="message" scope="session" />
	
	
	</c:if>
</body>
</html>