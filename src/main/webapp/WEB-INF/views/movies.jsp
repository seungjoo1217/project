<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>영화들</title>
	
	<link rel="stylesheet" href="/resource/css/movies.css">
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


		<div class="movies-main">
			<div class="movie">
				<span id="movie-1"><p>1</p></span>
				<span id="movie-2"><p>2</p></span>
				<span id="movie-3"><p>3</p></span>
				<span id="movie-4"><p>4</p></span>
			</div>


			<div class="movie">
				<span id="movie-5"><p>5</p></span>
				<span id="movie-6"><p>6</p></span>
				<span id="movie-7"><p>7</p></span>
				<span id="movie-8"><p>8</p></span>
			</div>


			<div class="movie">
				<span id="movie-9"><p>9</p></span>
				<span id="movie-10"><p>10</p></span>
				<span id="movie-11"><p>11</p></span>
				<span id="movie-12"><p>12</p></span>
			</div>


			<div class="movie">
				<span id="movie-13"><p>13</p></span>
				<span id="movie-14"><p>14</p></span>
				<span id="movie-15"><p>15</p></span>
				<span id="movie-16"><p>16</p></span>
			</div>

		</div>



	</main>

	<script src="/resource/js/movies.js"></script>
</body>
</html>