<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>좌석선택</title>
	
	<link rel="stylesheet" href="/resource/css/seat.css">
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




        <!--좌석선택화면-->
        <div class="mainBox">

            <!--왼쪽 좌석고르는창-->
            <div id="top">
                <!--스크린-->
                <div id="screen"></div>

                <!--좌석들-->
                <div id="seats">
                    <table>
                        
                        <tr id="number">
                            <td></td>
                            <td>1</td>
                            <td>2</td>
                            <td>3</td>
        
                            <td></td>
        
        
                            <td>4</td>
                            <td>5</td>
                            <td>6</td>
                            <td>7</td>
                            <td>8</td>
                            <td>9</td>
                            <td>10</td>
                            <td>11</td>
        
        
                            <td></td>
        
                            <td>12</td>
                            <td>13</td>
                            <td>14</td>
                        </tr>
                        <tr>
                            <td>A</td>
                            <td class="white" id="A1"></td>
                            <td class="white" id="A2"></td>
                            <td class="white" id="A3"></td>
        
                            <td></td>
        
        
                            <td class="white" id="A4"></td>
                            <td class="white" id="A5"></td>
                            <td class="white" id="A6"></td>
                            <td class="white" id="A7"></td>
                            <td class="white" id="A8"></td>
                            <td class="white" id="A9"></td>
                            <td class="white" id="A10"></td>
                            <td class="white" id="A11"></td>
        
        
                            <td></td>
        
                            <td class="white" id="A12"></td>
                            <td class="white" id="A13"></td>
                            <td class="white" id="A14"></td>
                        </tr>
                        
                        <tr>
                            <td>B</td>
                            <td class="white" id="B1"></td>
                            <td class="white" id="B2"></td>
                            <td class="white" id="B3"></td>
        
                            <td></td>
        
        
                            <td class="white" id="B4"></td>
                            <td class="white" id="B5"></td>
                            <td class="white" id="B6"></td>
                            <td class="white" id="B7"></td>
                            <td class="white" id="B8"></td>
                            <td class="white" id="B9"></td>
                            <td class="white" id="B10"></td>
                            <td class="white" id="B11"></td>
        
        
                            <td></td>
        
                            <td class="white" id="B12"></td>
                            <td class="white" id="B13"></td>
                            <td class="white" id="B14"></td>
                        </tr>
                        
                        <tr>
                            <td>C</td>
                            <td class="white" id="C1"></td>
                            <td class="white" id="C2"></td>
                            <td class="white" id="C3"></td>
        
                            <td></td>
        
        
                            <td class="white" id="C4"></td>
                            <td class="white" id="C5"></td>
                            <td class="white" id="C6"></td>
                            <td class="white" id="C7"></td>
                            <td class="white" id="C8"></td>
                            <td class="white" id="C9"></td>
                            <td class="white" id="C10"></td>
                            <td class="white" id="C11"></td>
        
        
                            <td></td>
        
                            <td class="white" id="C12"></td>
                            <td class="white" id="C13"></td>
                            <td class="white" id="C14"></td>
                        </tr>
                        
                        <tr>
                            <td>D</td>
                            <td class="white" id="D1"></td>
                            <td class="white" id="D2"></td>
                            <td class="white" id="D3"></td>
        
                            <td></td>
        
        
                            <td class="white" id="D4"></td>
                            <td class="white" id="D5"></td>
                            <td class="white" id="D6"></td>
                            <td class="white" id="D7"></td>
                            <td class="white" id="D8"></td>
                            <td class="white" id="D9"></td>
                            <td class="white" id="D10"></td>
                            <td class="white" id="D11"></td>
        
        
                            <td></td>
        
                            <td class="white" id="D12"></td>
                            <td class="white" id="D13"></td>
                            <td class="white" id="D14"></td>
                        </tr>
                        
                        <tr>
                            <td>E</td>
                            <td class="white" id="E1"></td>
                            <td class="white" id="E2"></td>
                            <td class="white" id="E3"></td>
        
                            <td></td>
        
        
                            <td class="white" id="E4"></td>
                            <td class="white" id="E5"></td>
                            <td class="white" id="E6"></td>
                            <td class="white" id="E7"></td>
                            <td class="white" id="E8"></td>
                            <td class="white" id="E9"></td>
                            <td class="white" id="E10"></td>
                            <td class="white" id="E11"></td>
        
        
                            <td></td>
        
                            <td class="white" id="E12"></td>
                            <td class="white" id="E13"></td>
                            <td class="white" id="E14"></td>
                        </tr>
                        
                        <tr>
                            <td>F</td>
                            <td class="white" id="F1"></td>
                            <td class="white" id="F2"></td>
                            <td class="white" id="F3"></td>
        
                            <td></td>
        
        
                            <td class="white" id="F4"></td>
                            <td class="white" id="F5"></td>
                            <td class="white" id="F6"></td>
                            <td class="white" id="F7"></td>
                            <td class="white" id="F8"></td>
                            <td class="white" id="F9"></td>
                            <td class="white" id="F10"></td>
                            <td class="white" id="F11"></td>
        
        
                            <td></td>
        
                            <td class="white" id="F12"></td>
                            <td class="white" id="F13"></td>
                            <td class="white" id="F14"></td>
                        </tr>
                        
                        <tr>
                            <td>G</td>
                            <td class="white" id="G1"></td>
                            <td class="white" id="G2"></td>
                            <td class="white" id="G3"></td>
        
                            <td></td>
        
        
                            <td class="white" id="G4"></td>
                            <td class="white" id="G5"></td>
                            <td class="white" id="G6"></td>
                            <td class="white" id="G7"></td>
                            <td class="white" id="G8"></td>
                            <td class="white" id="G9"></td>
                            <td class="white" id="G10"></td>
                            <td class="white" id="G11"></td>
        
        
                            <td></td>
        
                            <td class="white" id="G12"></td>
                            <td class="white" id="G13"></td>
                            <td class="white" id="G14"></td>
                        </tr>
                        
                        <tr>
                            <td>H</td>
                            <td class="white" id="H1"></td>
                            <td class="white" id="H2"></td>
                            <td class="white" id="H3"></td>
        
                            <td></td>
        
        
                            <td class="white" id="H4"></td>
                            <td class="white" id="H5"></td>
                            <td class="white" id="H6"></td>
                            <td class="white" id="H7"></td>
                            <td class="white" id="H8"></td>
                            <td class="white" id="H9"></td>
                            <td class="white" id="H10"></td>
                            <td class="white" id="H11"></td>
        
        
                            <td></td>
        
                            <td class="white" id="H12"></td>
                            <td class="white" id="H13"></td>
                            <td class="white" id="H14"></td>
                        </tr>
        
                    </table>


                </div>



            </div>



            <!--오른쪽 가격이랑 좌석, 인원수-->
            <div id="bottom">
                <form action="/myReservation" method="post" id="here" onsubmit="return validate()">
                    <!--좌석-->
                    <div id="seatNum">
                        
                    </div>
    
                    <!--가격-->
                    <div id="price"></div>
    
                    <!--예매하기 버튼-->
                    <button id="reservationButton">예매하기</button>

                </form>

            </div>



        </div>





        
    </main>
    
    
    
    
    
    
    <script src="/resource/js/seat.js"></script>
    

	<c:if test="${not empty sessionScope.message}">
	
		<script>
			alert('${message}');
			
			
		</script>
		 <c:remove var="message" scope="session" />
	
	
	</c:if>
</body>
</html>