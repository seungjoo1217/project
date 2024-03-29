<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화8</title>

	<link rel="stylesheet" href="/resource/css/movie8.css">
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
				<div id="title">듄: 파트2</div>

				<!-- 상세설명 -->
				<div id="explain">
					2024.02.28 개봉 | 165분 | 12세이상관람가 | 181.6만명
				</div>

				<!-- 아이콘들 -->
				<div id="icon"></div>

				<!-- 내용 -->
				<div id="content">
					황제의 모략으로 멸문한 가문의 유일한 후계자 폴(티모시 샬라메).<br>
                    어머니 레이디 제시카(레베카 퍼거슨)와<br>
                    간신히 목숨만 부지한 채 사막으로 도망친다.<br>
                    그곳에서 만난 반란군들과 숨어 지내다<br>
                    그들과 함께 황제의 모든 것을 파괴할 전투를 준비한다.<br>
                    한편 반란군들의 기세가 높아질수록 불안해진 황제와 귀족 가문은<br>
                    잔혹한 암살자 페이드 로타(오스틴 버틀러)를 보내 반란군을 몰살하려 하는데…<br>
				</div>

				<!-- 예매하기 -->
				<div id="buy"><button>예매하기</button></div>
			</div>
		</div>




	</main>

    <script src="/resource/js/movie-8.js"></script>

</body>
</html>