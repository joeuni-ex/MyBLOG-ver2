<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root}/css/style.css" />
</head>
<body>
	<!-- 네브바 -->
	<c:import url="/WEB-INF/views/include/nav.jsp"></c:import>

	<main class="main">
		<!-- 카테고리 -->
		<c:import url="/WEB-INF/views/include/category.jsp"></c:import>
		<div class="boardView">
			<h4>카테고리 : ${content.category_name}</h4>
			<h2>제목 : ${content.title}</h2>
			<hr />
			<h4>작성일자 : ${content.regDate}</h4>
			<hr />
			<div>
				<p>내용</p>
				<p>${content.content}</p>
			</div>
		</div>
		<div class="viewBtn">
			<div>
				<a href="${root}/board/list?info_idx=${info_idx}">목록</a>
			</div>
			<c:if test="${sessionUser.user_idx == content.user_idx}">
				<div>
					<a href="${root}/board/modify">수정</a>
				</div>
				<div>
					<a href="${root}/board/delete">삭제</a>
				</div>
			</c:if>
		</div>
	</main>


	<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

</body>
</html>