<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	
	<c:import url="/WEB-INF/jsp/include/header.jsp"/>
	
	<c:import url="/WEB-INF/jsp/include/section_signin.jsp"/>
	
	<c:import url="/WEB-INF/jsp/include/footer.jsp"/>

</body>

<script>
	$(document).ready(function(){
		
		$("#signinBtn").on("click",function(e){
			
			e.preventDefault();
			
			var loginId = $("#loginId").val();
			var password = $("#password").val();
			
			if(loginId == "") {
				alert("ID를 입력해주세요.");
				return;
			}
			
			if(password == "") {
				alert("비밀번호를 입력해주세요.");
				return;
			}
			
			$.ajax({
				type:"post",
				url:"/user/sign_in",
				data:{
					"loginId":loginId,
					"password":password
				},
				success:function(data){
					if(data.result == "success"){
						alert(data.userName + "님 안녕하세요.");
						location.href="/post/list_view";
					} else {
						alert("일치하는 회원이 없습니다.");
					}
				},
				error:function(){
					alert("error");
				}
				
			})
			
		})
		
		
		
	});

</script>

</html>