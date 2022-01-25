<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<header class="bg-secondary d-flex justify-content-between align-items-center">
	
	<div class="h2 text-white ml-3">Memo Board</div>
	
	<div class="d-flex align-items-center">
		<span class="font-weight-bold text-white">${userName}님</span>
		<button type="button" class="btn btn-sm btn-primary ml-3 mr-3"
			onclick="location.href='/user/sign_out'">로그아웃</button>
	</div>
	
</header>