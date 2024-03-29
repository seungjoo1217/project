<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화1</title>

	<link rel="stylesheet" href="/resource/css/movie1.css">
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
				<div id="title">댓글부대</div>

				<!-- 상세설명 -->
				<div id="explain">
					2024.03.27 개봉 | 109분 | 15세이상관람가 | 13.1만명
				</div>

				<!-- 아이콘들 -->
				<div id="icon"></div>

				<!-- 내용 -->
				<div id="content">
					실력 있지만 허세 가득한 사회부 기자 ‘임상진’<br>
					대기업 ‘만전’의 비리를 취재하지만 오보로 판명되며 정직당한다.<br><br>

					“기자님 기사 오보 아니었어요. 다 저희들이 만든 수법이에요”<br>
					그러던 어느 날, 의문의 제보자가 찾아온다.<br>
					자신을 온라인 여론 조작을 주도하는 댓글부대, 일명 ‘팀알렙’의 멤버라고 소개한 제보자는<br>
					돈만 주면 진실도 거짓으로, 거짓도 진실로 만들 수 있다고 하는데…<br>

					“불법은 아니에요. 합법인지는 모르겠지만”<br>
					이 제보, 어디부터 진실이고, 어디까지 거짓인가?
				</div>

				<!-- 예매하기 -->
				<div id="buy">예매하기</div>
			</div>
		</div>












	</main>

	<script src="/resource/js/movie-1.js"></script>

</body>
</html>