<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section class="d-flex justify-content-center align-items-center">
	
	<div class="postDiv">
		<div class="text-center h3 mb-3">Write a Memo</div>
		<div class="d-flex align-items-center mb-3">
			<span class="h5 text-center" id="subjectTitle">Subject :</span>
			<input type="text" placeholder="Subject" class="form-control" id="titleInput">
		</div>
		<div class="mb-3">
			<textarea class="form-control" rows="11" placeholder="What's your important things?"
				id="contentInput"></textarea>
		</div>
		<div class="mb-3">
			<input type="file" id="fileInput"/>
		</div>
		<div class="d-flex justify-content-between">
			<button class="btn btn-secondary btn-lg"
				onclick="location.href='/post/list_view'">to List</button>
			<button class="btn btn-primary btn-lg"
				id="saveBtn">Save</button>
		</div>
		
	</div>
</section>