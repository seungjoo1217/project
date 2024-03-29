<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>영화2</title>
    
        <link rel="stylesheet" href="/resource/css/movie2.css">
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
                    <div id="title">파묘</div>
    
                    <!-- 상세설명 -->
                    <div id="explain">
                        2024.02.22 개봉 | 134분 | 15세이상관람가 | 1047.1만명
                    </div>
    
                    <!-- 아이콘들 -->
                    <div id="icon"></div>
    
                    <!-- 내용 -->
                    <div id="content">
                        미국 LA, 거액의 의뢰를 받은 무당 ‘화림’(김고은)과 ‘봉길’(이도현)은<br>
                        기이한 병이 대물림되는 집안의 장손을 만난다.<br>
                        조상의 묫자리가 화근임을 알아챈 ‘화림’은 이장을 권하고,<br>
                        돈 냄새를 맡은 최고의 풍수사 ‘상덕’(최민식)과 장의사 ‘영근’(유해진)이 합류한다.<br><br>

                        “전부 잘 알 거야… 묘 하나 잘못 건들면 어떻게 되는지”<br><br>

                        절대 사람이 묻힐 수 없는 악지에 자리한 기이한 묘.<br>
                        ‘상덕’은 불길한 기운을 느끼고 제안을 거절하지만,<br>
                        ‘화림’의 설득으로 결국 파묘가 시작되고…<br><br>

                        나와서는 안될 것이 나왔다.<br>
                    </div>
    
                    <!-- 예매하기 -->
                    <div id="buy"><button>예매하기</button></div>
                </div>
            </div>
    
    
    
    
        </main>

        <script src="/resource/js/movie-2.js"></script>

</body>
</html>