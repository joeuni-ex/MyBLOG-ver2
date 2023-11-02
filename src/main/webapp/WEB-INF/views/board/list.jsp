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
		<div class="boardList">
			<h2>💛${category}</h2>
			<table class="board">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>날짜</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
				<% int i = 1;%>
					<c:forEach items="${list}" var="board">
						<tr>
							<td><%= i++%></td>
							<td><a href="${root}/board/view?info_idx=${info_idx}&board_idx=${board.board_idx}">${board.title}</a></td>
							<td>${board.regDate}</td>
							<td>${board.viewCnt}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="pagecontainer">
			<ul class="pagination">
				<li class="page-link"><a href="#">이전</a></li>
				<li class="page-link"><a href="#">1</a></li>
				<li class="page-link"><a href="#">2</a></li>
				<li class="page-link"><a href="#">3</a></li>
				<li class="page-link"><a href="#">4</a></li>
				<li class="page-link"><a href="#">5</a></li>
				<li class="page-link"><a href="#">6</a></li>
				<li class="page-link"><a href="#">7</a></li>
				<li class="page-link"><a href="#">8</a></li>
				<li class="page-link"><a href="#">9</a></li>
				<li class="page-link"><a href="#">10</a></li>
				<li class="page-link"><a href="#">다음</a></li>
			</ul>
		</div>
	</main>

	<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

</body>
</html>