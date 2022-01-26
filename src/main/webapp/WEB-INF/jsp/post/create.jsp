<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>

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
	$("#fileUploadLink").on("change", function(e){
		var name = e.target.files[0].name;
		$("#fileUploadName").text(name);
	});
});

</script>

</html>