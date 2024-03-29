<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>예매하기</title>
	
	<link rel="stylesheet" href="/resource/css/reservation.css">
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




        <!-- 예매 메인 -->
        <div id="reservation-main">

            <form action="/seat" method="post" onsubmit="return validate()">
                <!-- 예매날짜 -->
                <div id="rsvDate">
                    <span style="color: darkblue;"></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>
                    <span></span>

                </div>
    
                <!-- 영화, 극장, 시간 -->
                <div class="rsv">
    
                    <!-- 영화 종류 -->
                    <div id="movie">
                        <p>영화</p>
                        <div id="movie1">댓글부대</div>
                        <div id="movie2">파묘</div>
                        <div id="movie3">고질라 X 콩: 뉴 엠파이어</div>
                        <div id="movie4">1980</div>
                        <div id="movie5">유미의 세포들 더 무비</div>
                        <div id="movie6">비키퍼</div>
                        <div id="movie7">이승윤 콘서트 도킹 : 리프트오프</div>
                        <div id="movie8">듄: 파트2</div>
                        <div id="movie9">극장판 스파이 패밀리 코드 : 화이트</div>
                        <div id="movie10">악은 존재하지 않는다</div>
                        <div id="movie11">가여운 것들</div>
                        <div id="movie12">로봇 드림</div>
                        <div id="movie13">웡카</div>
                        <div id="movie14">잠행</div>
                        <div id="movie15">[위드키즈]브레드이발소: 셀럽 인 베이커리타운</div>
                        <div id="movie16">[위드키즈]래빗스쿨 2: 부활절 대소동</div>

                    </div>
    
                    <!-- 극장 위치 -->
                    <div id="location">
                        <p>극장</p>
                        <div id="location1">강남</div>
                        <div id="location2">강남대로(씨티)</div>
                        <div id="location3">강동</div>
                        <div id="location4">군자</div>
                        <div id="location5">더 부티크 목동현대백화점</div>
                        <div id="location6">동대문</div>
                        <div id="location7">마곡</div>
                        <div id="location8">목동</div>
                        <div id="location9">상봉</div>
                        <div id="location10">상암월드컵경기장</div>
                        <div id="location11">성수</div>
                        <div id="location12">센트럴</div>
                        <div id="location13">송파파크하비오</div>
                        <div id="location14">신촌</div>
                        <div id="location15">이수</div>
                        <div id="location16">창동</div>
                        <div id="location17">코엑스</div>
                        <div id="location18">홍대</div>
                        <div id="location19">화곡</div>
    
                    </div>
    
                    <!-- 시간 -->
                    <div id="time">
                        <p id="movieTitle"></p>
    
    
    
                        <div><p id="place1">샤롯데</p></div>
                        <div class="container">
                            <span class="times" id="19:20">
                                <div>19:20</div>
                                <div>
                                    <div>31/32</div>
                                    <div>샤롯데</div>
                                </div>
                            </span>
        
        
                            <span class="times" id="21:40">
                                <div>21:40</div>
                                <div>
                                    <div>31/32</div>
                                    <div>샤롯데</div>
                                </div>
                            </span>
    
                        </div>
    
    
    
                        <div><p id="place2">2D</p></div>
                        <div class="container">
                            <span class="times" id="12:00">
                                <div>12:00</div>
                                <div>
                                    <div>31/32</div>
                                    <div>2D</div>
                                </div>
                            </span>
        
        
                            <span class="times" id="13:00">
                                <div>13:00</div>
                                <div>
                                    <div>31/32</div>
                                    <div>2D</div>
                                </div>
                            </span>
        
        
                            <span class="times" id="14:20">
                                <div>14:20</div>
                                <div>
                                    <div>31/32</div>
                                    <div>2D</div>
                                </div>
                            </span>
        
                        </div>
                            
    
                        <div class="container">
                            <span class="times" id="15:50">
                                <div>15:50</div>
                                <div>
                                    <div>31/32</div>
                                    <div>2D</div>
                                </div>
                            </span>
        
        
                            <span class="times" id="19:00">
                                <div>19:00</div>
                                <div>
                                    <div>31/32</div>
                                    <div>2D</div>
                                </div>
                            </span>
    
                        </div>
        
    
    
    
    
                        
                        <div><p id="place3">수퍼 S</p></div>
                        <div class="container">
                            <span class="times" id="15:40">
                                <div>15:40</div>
                                <div>
                                    <div>31/32</div>
                                    <div>수퍼 S</div>
                                </div>
                            </span>
        
        
                            <span class="times" id="21:00">
                                <div>21:00</div>
                                <div>
                                    <div>31/32</div>
                                    <div>수퍼 S</div>
                                </div>
                            </span>
        
        
                            <span class="times" id="22:30">
                                <div>22:30</div>
                                <div>
                                    <div>31/32</div>
                                    <div>수퍼 S</div>
                                </div>
                            </span>
    
                        </div>
    
    
                    </div>
    
                </div>
    
    
                <button id="formButton">좌석 고르기</button>
    
                </form>
            
            </div>
    



        

        
    </main>
    
    
    
    
    
    
    <script src="/resource/js/reservation.js"></script>
    

	<c:if test="${not empty sessionScope.message}">
	
		<script>
			alert('${message}');
			
			
		</script>
		 <c:remove var="message" scope="session" />
	
	
	</c:if>
</body>
</html>