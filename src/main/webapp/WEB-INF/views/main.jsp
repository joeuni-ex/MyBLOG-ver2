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
<!--네브바-->
<c:import url="/WEB-INF/views/include/nav.jsp"></c:import>
<!--네브바 종료-->

	<main class="main">		
	<!-- 카테고리 -->
	<c:import url="/WEB-INF/views/include/category.jsp"></c:import>		
	<!-- 카테고리 종료 -->
		<div class="main_content1">
			<div class="pic">
				<img src="images/menu1.jpg" />
			</div>
			<div class="pic">
				<img src="images/menu2.jpg" />
			</div>
			<div class="pic">
				<img src="images/menu3.jpg" />
			</div>
			<div class="pic">
				<img src="images/menu4.jpg" />
			</div>
			<div class="pic">
				<img src="images/menu5.jpg" />
			</div>
		</div>
		<div class="main_content2">
			<h3>🌿DAILY</h3>
			<table class="board">
				<thead>
					<tr>
						<th>제목</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a href="">첫 번째 블로그 글</a></td>
					</tr>
					<tr>
						<td><a href="">첫 번째 블로그 글</a></td>
					</tr>
					<tr>
						<td><a href="">첫 번째 블로그 글</a></td>
					</tr>
					<tr>
						<td><a href="">첫 번째 블로그 글</a></td>
					</tr>
				</tbody>
			</table>
		</div>
	</main>

<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

</body>
</html>