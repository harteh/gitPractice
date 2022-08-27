<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>임시 메인</title>
	<!-- Bootstrap CDN -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
	
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	
</head>
<body class="text-center mt-5">
	<main class="form-signin w-50 m-auto ">
		<h1>임시 메인 화면</h1>
		<h3>로그인/가입 버튼을 위한 임시 화면</h3>
		<p>정식 메인 화면에 버튼 부분 만 수정 하면 됨</p>
		<hr class="my-4">
		
		<c:set var="userID" value="${mem.user_id}" />
		<c:choose>
			<c:when test="${empty userID}">
				<p>로그인 전</p>
				<a href="member/join" class="btn btn-lg btn-outline-warning">회원가입</a>
				<a href="member/login" class="btn btn-lg btn-warning">로그인</a>
				
				<a id="custom-login-btn" class="btn btn-lg" 
					href="https://kauth.kakao.com/oauth/authorize?client_id=e90605fb64b5ed5eeffcf586eb651d12&redirect_uri=http://localhost:8080/member/kakaoLogin&response_type=code">
					<img
					  src="/resources/kakao_login_medium_narrow.png"
					  height="50px"
					  alt="카카오 로그인 버튼"
					/>
				</a>
				<%-- 카카오로그인  
				<p id="token-result"></p>
				js: 버튼에 href="javascript:loginWithKakao()" 추가
				<script type="text/javascript">
					//js 키 : 8fda0bdd386436f995da2c1fca117179
					//Rest API 키 : e90605fb64b5ed5eeffcf586eb651d12
					Kakao.init('8fda0bdd386436f995da2c1fca117179');
					// SDK 초기화 여부를 판단합니다.
			        console.log(Kakao.isInitialized());
			     // 카카오 로그인 버튼을 생성합니다.
			        Kakao.Auth.createLoginButton({
			            container: '#custom-login-btn',
			            success: function (authObj) {
			                alert("성공!"+JSON.stringify(authObj));
			            },
			            fail: function (err) {
			                alert(JSON.stringify(err));
			            }
			        });
				</script>
				--%>
			</c:when>
			
			<c:when test="${!empty userID}">
				${mem.user_name } 로그인 성공
				<p>${mem.user_id } // ${mem.nickname } // ${mem.email }</p>
				<a href="member/myPage" class="w-75 btn btn-lg btn-outline-warning">마이페이지</a><br><br>
				<a href="member/logout" class="w-75 btn btn-lg btn-danger">로그아웃</a><br><br>
			</c:when>
		</c:choose>
		
		
	</main>
</body>
</html>