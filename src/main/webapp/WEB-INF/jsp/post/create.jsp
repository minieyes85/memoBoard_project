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

	<c:import url="/WEB-INF/jsp/include/header_sign.jsp"/>
	
	<c:import url="/WEB-INF/jsp/include/section_create.jsp"/>
	
	<c:import url="/WEB-INF/jsp/include/footer.jsp"/>

</body>

<script>
$(document).ready(function(){
	
	$("#saveBtn").on("click",function(){
		let title = $("#titleInput").val();
		//trim 무의미한 공백 제거
		let content = $("#contentInput").val().trim();
		
		if(title == "") {
			alert("제목을 입력하세요.");
			return;
		}
		
		if(content == "") {
			alert("내용을 입력하세요.");
			return;
		}
		
		var formData = new FormData();
		formData.append("subject", title);
		formData.append("content", content);
		formData.append("file",$("#fileInput")[0].files[0]);
		
		
		
		$.ajax({
			type:"post",
			url:"/post/create",
			data:formData,
			
			//파일 업로드 필수 설정
			enctype:"multipart/form-data",
			processData:false,
			contentType:false,
			
			success:function(data) {
				if(data.result == "success"){
					alert("메모가 성공적으로 등록 되었습니다.");
					location.href="/post/list_view";
				} else {
					alert("글쓰기 실패");
				}
			},
			error:function() {
				alert("error");
			}
		});
		
	});
});

</script>

</html>