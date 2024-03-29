<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화12</title>

	<link rel="stylesheet" href="/resource/css/movie12.css">
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


		<div class="poster-main">
			<!-- 왼쪽 포스터 -->
			<div class="left">
				<div id="poster"></div>
			</div>

			<!-- 오른쪽 설명 -->
			<div class="right">
				<!-- 제목 -->
				<div id="title">로봇 드림</div>

				<!-- 상세설명 -->
				<div id="explain">
					2024.03.13 개봉 | 102분 | 전체관람가 | 1.9만명
				</div>

				<!-- 아이콘들 -->
				<div id="icon"></div>

				<!-- 내용 -->
				<div id="content">
					뉴욕 맨해튼에서 홀로 외롭게 살던 ‘도그’는<br>
                    TV를 보다 홀린 듯 반려 로봇을 주문하고<br>
                    그와 둘도 없는 단짝이 되어 행복한 나날을 보낸다<br><br>

                    그러던 어느 날, 해수욕장에 놀러 간 ‘도그’와 ‘로봇’은<br>
                    예기치 못한 상황에 휩쓸려 이별을 맞이하게 되는데···<br><Br>

                    “기다려, 내가 꼭 다시 데리러 올게!”
				</div>

				<!-- 예매하기 -->
				<div id="buy"><button>예매하기</button></div>
			</div>
		</div>




	</main>

	<script src="/resource/js/movie-12.js"></script>

</body>
</html>