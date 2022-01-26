<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
	integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
	crossorigin="anonymous">
	
<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
	
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
	crossorigin="anonymous"></script>

<link rel="stylesheet" href="/static/css/memoStyle.css" type="text/css">

<title>Memo Board</title>
</head>
<body>

	<c:import url="/WEB-INF/jsp/include/header.jsp" />

	<c:import url="/WEB-INF/jsp/include/section_signup.jsp" />

	<c:import url="/WEB-INF/jsp/include/footer.jsp" />

</body>

<script>
	$(document).ready(function() {
		$("#joinBtn").on("click",function(){
					
			var loginId = $("#loginIdInput").val();
			var password = $("#passwordInput").val();
			var passwordCheck = $("#passwordCheckInput").val();
			var userName = $("#userNameInput").val();
			var email = $("#emailInput").val();
			
			if(loginId == ""){
				alert("ID를 입력하세요.");
				return;
			}
			
			if(password == ""){
				alert("비밀번호를 입력하세요.");
				return;
			}
			
			if(password != passwordCheck){
				alert("비밀번호가 일치하지 않습니다.");
				return;
			}
			
			if(userName == ""){
				alert("이름을 입력하세요");
				return;
			}
			
			if(email == ""){
				alert("Email 주소를 입력하세요.");
				return;
			}
			
			$.ajax({
				type:"post",
				url:"/user/sign_up",
				data:{
					"loginId":loginId,
					"password":password,
					"name":userName,
					"email":email
				},
				success:function(data){
					if(data.result == "success"){
						alert("회원가입 성공");
						//로그인 화면으로 이동
						location.href ="/user/signin_view";
					} else {
						alert("회원가입 실패");
					}
				},
				error:function(){
					alert("error");
				}				
			})
		});
	});

</script>

</html>