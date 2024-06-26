<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<div class="row justify-content-center">
	<div class="col-10 col-md-8 col-lg-6">
		<h1>마이페이지</h1>
		<div class="card">
			<div class="card-body"></div>
				<div class="mb-2 mx-3">
					<b>아이디 : ${user.uid}</b>
					<button id="btnPass" class="btn btn-danger btn-sm ms-3">비밀번호변경</button>
					<hr>
				</div>
				<div class="mb-2 mx-3">
					<b>이름 : ${user.uname}</b>
					<hr>
				</div>
				<div class="mb-2 mx-3">
					<b>주소 : ${user.address1} ${user.address2}</b>
					<hr>
				</div>
				<div class="mb-2 mx-3">
					<b>연락처 : ${user.phone}</b>
					<hr>
				</div>
				<div class="mb-2 mx-3">
					<b>가입일 : <fmt:formatDate value="${user.jdate}" pattern="yyyy년 MM월 dd일 HH:mm:ss"/></b>
					<hr>
				</div>
				<div class="mb-2 mx-3">
					<b>마지막변경일 : <fmt:formatDate value="${user.udate}" pattern="yyyy년 MM월 dd일 HH:mm:ss"/></b>
					<hr>
				</div>
				<div class="text-center mb-3">
					<button id="btnInfo" class="btn btn-primary px-5">회원정보수정</button>
				</div>
		</div>
	</div>
	<jsp:include page="modal_info.jsp"/>
	<jsp:include page="modal_pass.jsp"/>
</div>

<script>
	$("#btnInfo").on("click", function(){
		$("#modalInfo").modal("show");
	});
	$("#btnPass").on("click", function(){
		$("#modalPass").modal("show");
	});
</script>