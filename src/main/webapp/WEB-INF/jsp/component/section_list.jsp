<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
					<tr>
						<td>4</td>
						<td>
							<a class="text-reset text-decoration-none" href="/post/detail_view">중요한 메모</a>
						</td>
						<td>시간</td>
					</tr>
					<tr>
						<td>3</td>
						<td>적당한 메모</td>
						<td>시간</td>
					</tr>
					<tr>
						<td>2</td>
						<td>그럭저럭</td>
						<td>시간</td>
					</tr>
					<tr>
						<td>1</td>
						<td>오늘하루</td>
						<td>시간</td>
					</tr>
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