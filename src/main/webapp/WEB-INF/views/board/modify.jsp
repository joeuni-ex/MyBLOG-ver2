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
        <form action="" method="post">
          <select name="cetegory">
            <option value="daily">DAILY</option>
            <option value="book">BOOK</option>
            <option value="food">FOOD</option>
            <option value="travle">TRAVLE</option>
            <option value="beauty">BEAUTY</option>
          </select>
          <h2>제목 : <input type="text" class="writeTitle" value="첫 번째 게시글은"/></h2>
          <hr />
          <p>내용</p>
          <textarea name="" id="" cols="120" rows="40">오늘은 날이 더웠다. 
          </textarea>
          <input type="submit" value="수정하기" class="writeBtn" />
        </form>
      </div>
    </main>



	<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>

</body>
</html>