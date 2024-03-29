<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화3</title>

	<link rel="stylesheet" href="/resource/css/movie3.css">
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
				<div id="title">고질라 X 콩: 뉴 엠파이어</div>

				<!-- 상세설명 -->
				<div id="explain">
					2024.03.27 개봉 | 114분 | 12세이상관람가 | 5.6만명
				</div>

				<!-- 아이콘들 -->
				<div id="icon"></div>

				<!-- 내용 -->
				<div id="content">
					고질라 X 콩, 이번에는 한 팀이다!<br><br>

                    ‘고질라’ VS ‘콩’, 두 타이탄의 전설적인 대결 이후<br>
                    할로우 어스에 남은 ‘콩’은 드디어 애타게 찾던 동족을 발견하지만<br>
                    그 뒤에 도사리고 있는 예상치 못한 위협에 맞닥뜨린다.<br><br>

                    한편, 깊은 동면에 빠진 ‘고질라’는 알 수 없는 신호로 인해 깨어나고<br>
                    푸른 눈의 폭군 ‘스카 킹’의 지배 아래 위기에 처한 할로우 어스를 마주하게 된다.<br>
                    할로우 어스는 물론, 지구상에도 출몰해 전세계를 초토화시키는 타이탄들의 도발 속에서<br>
                    ‘고질라’와 ‘콩’은 사상 처음으로 한 팀을 이뤄 반격에 나서기로 하는데…<br>
				</div>

				<!-- 예매하기 -->
				<div id="buy"><button>예매하기</button></div>
			</div>
		</div>




	</main>

    <script src="/resource/js/movie-3.js"></script>

</body>
</html>