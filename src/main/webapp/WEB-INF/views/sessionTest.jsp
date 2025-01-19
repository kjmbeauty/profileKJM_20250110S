<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션테스트 페이지</title>
</head>
<body>
	<%
		String sid = (String) session.getAttribute("sessionid");
		if(sid != null)  {
	%>	
	현재 로그인 중인 아이디 : <%= sid %>
	<% } else { %>
	현재 비로그인 중입니다.
	
	<% } %>
	<hr>
	<c:choose>
		<c:when test="${sessionid != null}">
			LOGOUT
		</c:when>
		<c:otherwise>
			LOGIN
		</c:otherwise>	
	</c:choose>	
	

</body>
</html>