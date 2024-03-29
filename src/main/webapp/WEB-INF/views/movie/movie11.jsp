<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화11</title>

	<link rel="stylesheet" href="/resource/css/movie11.css">
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
				<div id="title">가여운 것들</div>

				<!-- 상세설명 -->
				<div id="explain">
					2024.03.06 개봉 | 141분 | 18세이상관람가 | 14.1만명
				</div>

				<!-- 아이콘들 -->
				<div id="icon"></div>

				<!-- 내용 -->
				<div id="content">
					천재적이지만 특이한 과학자 갓윈 백스터(윌렘 대포)에 의해<br>
                    새롭게 되살아난 벨라 백스터(엠마 스톤).<br>
                    갓윈의 보호를 받으며 성장하던 벨라는 날이 갈수록<br>
                    세상에 대한 호기심과 새로운 경험에 대한 갈망이 넘쳐난다.<br><br>

                    아름다운 벨라에게 반한 짓궂고 불손한 바람둥이 변호사 덩컨 웨더번(마크 러팔로)이<br>
                    더 넓은 세계를 탐험하자는 제안을 하자,<br>
                    벨라는 새로운 경험에 대한 갈망으로 대륙을 횡단하는 여행을 떠나고<br>
                    처음 보는 광경과 새롭게 만난 사람들을 통해 놀라운 변화를 겪게 되는데….<br><br>

                    세상에 대한 경이로움과 아름다움, 놀라운 반전과 유머로 가득한 벨라의 여정이 이제 시작된다.
				</div>

				<!-- 예매하기 -->
				<div id="buy"><button>예매하기</button></div>
			</div>
		</div>




	</main>

    <script src="/resource/js/movie-11.js"></script>

</body>
</html>