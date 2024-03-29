<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화9</title>

	<link rel="stylesheet" href="/resource/css/movie9.css">
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
				<div id="title">극장판 스파이 패밀리 코드 : 화이트</div>

				<!-- 상세설명 -->
				<div id="explain">
					2024.03.20 개봉 | 110분 | 12세이상관람가 | 19.3만명
				</div>

				<!-- 아이콘들 -->
				<div id="icon"></div>

				<!-- 내용 -->
				<div id="content">
					세계 각국이 물밑에서 치열하게 정보전을 펼치고 있는 시대.<br><br>

                    서로의 정체를 숨긴 채 결성된 위장 가족의 아버지 '로이드(스파이)'와<br>
                    어머니 '요르(암살자)’, 딸 '아냐(초능력자)'는<br>
                    각자의 목표를 위해 비밀스러운 임무를 수행한다.<br><br>

                    오퍼레이션 <올빼미> 작전을 위해 첫 가족 여행을 떠나던 중,<br>
                    ‘아냐’는 열차 안에서 수상한 캐리어를 발견하고<br>
                    그 안의 초콜릿을 실수로 그만 삼켜버리고 마는데…<br><br>

                    엄청난 비밀이 숨겨진 초콜릿과 여행지에서 생기는 해프닝의 연속!!<br>
                    세계의 명운은, 다시 이 위장 가족에게 맡겨졌다!
				</div>

				<!-- 예매하기 -->
				<div id="buy"><button>예매하기</button></div>
			</div>
		</div>




	</main>

    <script src="/resource/js/movie-9.js"></script>

</body>
</html>