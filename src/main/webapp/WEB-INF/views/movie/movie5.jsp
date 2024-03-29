<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화5</title>

	<link rel="stylesheet" href="/resource/css/movie5.css">
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
				<div id="title">유미의 세포들 더 무비</div>

				<!-- 상세설명 -->
				<div id="explain">
					2024.04.03 개봉 | 93분 | 전체관람가 | 1251명
				</div>

				<!-- 아이콘들 -->
				<div id="icon"></div>

				<!-- 내용 -->
				<div id="content">
					“사랑이의 마음이 나를 웃음 짓게 했고<br>
                    불안이의 걱정이 나를 나아가게 했어”<br><br>

                    오랜 꿈이던 작가가 되기 위해 퇴사 후 공모전을 준비하기로 결심한 유미.<br>
                    완벽한 글쓰기 일정을 만드는 ‘스케줄 세포’부터<br>
                    글감을 찾기 위해 뛰어다니는 ‘작가 세포’와<br>
                    허리띠를 졸라매는 ‘자린고비 세포’까지 모두가 유미의 꿈을 위해 열심히 노력한다.<br><br>

                    하지만 미래에 대한 걱정이 유미의 ‘불안 세포’를 점점 자라나게 하고<br>
                    바비와의 흔들리는 관계로 흑화한 ‘사랑 세포’까지 세포들 사이에 갈등이 고조되며<br>
                    세포 마을은 절체절명의 위기에 처하는데…
				</div>

				<!-- 예매하기 -->
				<div id="buy"><button>예매하기</button></div>
			</div>
		</div>




	</main>

    <script src="/resource/js/movie-5.js"></script>

</body>
</html>