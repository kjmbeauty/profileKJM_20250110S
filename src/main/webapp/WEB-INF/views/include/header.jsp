<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/header.css">
<title>header</title>
</head>
<body>
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
		<tr class="header_line" height="60" align="center">
			<td width="55%">
				&nbsp;
			</td>
			<td width="4%">
				<a href="index" class="header_link"><span class="hedder_menu">HOME</span></a>
			</td>
			<td width="1%">
				&nbsp;
			</td>		
			<td width="4%">
					<c:choose>
					<c:when test="${sessionid != null }">
						<a href="logout" class="header_link"><span class="header_menu">LOGOUT</span></a>
					</c:when>
					<c:otherwise>
						<a href="login" class="header_link"><span class="header_menu">LOGIN</span></a>
					</c:otherwise>
				</c:choose>							
			</td>
			<td width="1%">
				&nbsp;
			</td>			
			<td width="4%">
				<c:choose>
					<c:when test="${sessionid != null }">
						<a href="member" class="header_link"><span class="header_menu">MEMBER</span></a>
					</c:when>
					<c:otherwise>
						<a href="join" class="header_link"><span class="header_menu">JOIN</span></a>
					</c:otherwise>
				</c:choose>
							
			</td>
			<td width="1%">
				&nbsp;
			</td>					
			<td width="4%">
				<a href="profile" class="header_link"><span class="hedder_menu">PROFILE</span></a>
			</td>
			<td width="1%">
				&nbsp;
			</td>					
			<td width="4%">
				<a href="list" class="header_link"><span class="hedder_menu">BOARD</span></a>
			</td>
			<td width="1%">
				&nbsp;
			</td>					
			<td width="4%">
				<a href="contact" class="header_link"><span class="hedder_menu">CONTACT</span></a>
			</td>
			<td width="3%">
				&nbsp;
			</td>										
		</tr>
		<tr height="20">
			<td colspan="12" align="right">
				<c:if test="${sessionid != null}">
					LOGIN ID : <b>${sessionid}</b>
				</c:if>				
			</td>		
			<td>
				&nbsp;
			</td>
		</tr>
	
	</table>

</body>
</html>