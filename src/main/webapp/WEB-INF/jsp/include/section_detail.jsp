<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<section class="d-flex justify-content-center align-items-center">
	
	<div class="postDiv">
		<div class="text-center h3 mb-3">Modify Memo</div>
		<div class="d-flex align-items-center mb-3">
			<span class="h5 text-center" id="subjectTitle">Subject :</span>
			<input type="text" value="${post.subject }" class="form-control">
		</div>
		<div class="mb-3">
			<textarea class="form-control" rows="11">${post.content }</textarea>
		</div>

		<div class="mb-3">
			<img src="${post.imagePath }">
		</div>		
		<!-- 
		<div class="mb-3">
			<button class="btn btn-sm btn-primary">attach file</button>
			<span class="ml-3">it should be modified the uploaded image</span>
		</div>
		 -->
		<div class="d-flex justify-content-between mb-3">
			<div>
				<button class="btn btn-secondary btn-lg mr-3"
					onclick="location.href='/post/list_view'">to List</button>
				<button class="btn btn-danger btn-lg"
					id="delBtn" value="${post.id}">Delete</button>	
			</div>
			<div>
				<button class="btn btn-primary btn-lg"
					onclick="location.href='/post/list_view'">Modify</button>
			</div>
			
		</div>
		
	</div>
</section>