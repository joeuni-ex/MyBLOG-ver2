<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<script>
	alert('로그인에 실패하였습니다. id 또는 password가 틀립니다.')
	location.href = "${root}/user/login"
</script>
