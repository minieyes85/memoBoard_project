<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<section class="d-flex justify-content-center align-items-center">

	<div class="userInputDiv">
		
		<form>
			<input type="text" class="form-control mb-3" placeholder="ID"
			autofocus id="loginId">
		
		<input type="password" class="form-control mb-3"
			placeholder="Password" id="password">
		
		<button type="submit" class="btn btn-primary btn-block mb-3"
			id="signinBtn">Sign In</button>
		</form>
		
		<div class="text-center" id="signUpLink">
			<a href="/user/signup_view">Sign Up</a>
		</div>
	</div>
</section>