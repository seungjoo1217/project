<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화15</title>

	<link rel="stylesheet" href="/resource/css/movie15.css">
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
				<div id="title">[위드키즈]브레드이발소: 셀럽 인 베이커리타운</div>

				<!-- 상세설명 -->
				<div id="explain">
					2024.03.01 개봉 | 73분 | 전체관람가 | 18.5만명
				</div>

				<!-- 아이콘들 -->
				<div id="icon"></div>

				<!-- 내용 -->
				<div id="content">
					대한민국 No.1 애니메이션 '브레드이발소'의 첫 번째 영화 프로젝트!<br><br>

                    천재 이발사 ‘브레드’와 사고뭉치 조수 ‘윌크’가 일하는 브레드이발소!<br>
                    이들 앞에 베이커리타운 셀럽들이 찾아온다"<br><br>

                    베이커리타운 최고의 아이돌 마카롱!<br>
                    No.1 걸그룹을 꿈꾸는 캔디즈,<br>
                    베이커리타운 힙합계를 접수한 화려한 래퍼군단까지<br>
                    초특급 빵스타들의 총출동!<br><br>

                    다들 빵! 빵! 터질 준비는 됐겠지?<br><br>

                    브레드이발소 셀럽 인 베이커리타운!
				</div>

				<!-- 예매하기 -->
				<div id="buy"><button>예매하기</button></div>
			</div>
		</div>




	</main>

    <script src="/resource/js/movie-15.js"></script>

</body>
</html>