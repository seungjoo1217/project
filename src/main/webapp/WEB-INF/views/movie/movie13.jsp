<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화13</title>

	<link rel="stylesheet" href="/resource/css/movie13.css">
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
				<div id="title">웡카</div>

				<!-- 상세설명 -->
				<div id="explain">
					2024.01.31 개봉 | 116분 | 전체관람가 | 351.1만명
				</div>

				<!-- 아이콘들 -->
				<div id="icon"></div>

				<!-- 내용 -->
				<div id="content">
					세상에서 가장 달콤한 여정<br>
                    좋은 일은 모두 꿈에서부터 시작된다!<br><br>

                    마법사이자 초콜릿 메이커 ‘윌리 웡카’의 꿈은<br>
                    디저트의 성지, ‘달콤 백화점’에 자신만의 초콜릿 가게를 여는 것.<br>
                    가진 것이라고는 낡은 모자 가득한 꿈과 단돈 12소버린 뿐이지만<br>
                    특별한 마법의 초콜릿으로 사람들을 사로잡을 자신이 있다.<br><br>

                    하지만 먹을 것도, 잠잘 곳도, 의지할 사람도 없는 상황 속에서<br>
                    낡은 여인숙에 머물게 된 ‘웡카’는 ‘스크러빗 부인’과 ‘블리처’의 계략에 빠져<br>
                    눈더미처럼 불어난 숙박비로 인해 순식간에 빚더미에 오른다.<br>
                    게다가 밤마다 초콜릿을 훔쳐가는 작은 도둑 ‘움파 룸파’의 등장과<br>
                    ‘달콤 백화점’을 독점한 초콜릿 카르텔의 강력한 견제까지.<br>
                    세계 최고의 초콜릿 메이커가 되는 길은 험난하기만 한데…
				</div>

				<!-- 예매하기 -->
				<div id="buy"><button>예매하기</button></div>
			</div>
		</div>




	</main>

    <script src="/resource/js/movie-13.js"></script>

</body>
</html>