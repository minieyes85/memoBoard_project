<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<section class="d-flex justify-content-center align-items-center">
	<div class="userInputDiv">
		<div class="text-center h3 mb-3">Sign Up</div>

		<div class="input-group mb-3">
			<input type="text" class="form-control"
				placeholder="ID" autofocus>
			<div class="input-group-append">
				<button class="btn btn-outline-secondary" type="button">Check</button>
			</div>
		</div>

		<input type="password" class="form-control mb-3"
			placeholder="Password">
		<input type="password"
			class="form-control mb-3" placeholder="Password check">
		<input type="text" class="form-control mb-3" placeholder="User Name">

		<input type="email" class="form-control mb-3"
			placeholder="Email address">

		<button type="button" class="btn btn-primary btn-block mb-3"
			onclick="location.href='/post/list_view'">Sign Up</button>
		<div class="text-center">
			<span>Already do you have Id for memo?</span> <a href="/user/signin_view"
				class="ml-3">Sign In</a>
		</div>
	</div>
</section>