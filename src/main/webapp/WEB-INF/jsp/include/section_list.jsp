<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<section class="d-flex justify-content-center align-items-center">

	<div class="postDiv">
		<div class="text-center h3 mb-3">Memo List</div>
		<div class="mb-3">
			<table class="table text-center">
				<thead class="bg-light">
					<tr>
						<td>No.</td>
						<td>제목</td>
						<td>시간</td>
					</tr>
				</thead>
				
				<tbody>
					<c:forEach var="post" items="${postList}" varStatus="status">
						<tr>
							<td>${status.count}</td>
							<td>
								<a class="text-reset text-decoration-none" href="/post/detail_view?postId=${post.id}">
									${post.subject}
								</a>
							</td>
							<td>
								<fmt:formatDate value="${post.createdAt}" pattern="yyyy-MM-dd"/>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div class="mb-3">
			<div class="d-flex justify-content-between">
				<button type="button" class="btn btn-light">≪이전</button>
				<button type="button" class="btn btn-light">다음≫</button>
			</div>
		</div>
		
		<div class="d-flex justify-content-end">
			<button type="button" class="btn btn-primary"
				onclick="location.href='/post/create_view'">Write</button>
		</div>
	</div>
</section>