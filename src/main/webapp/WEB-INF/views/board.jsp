<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/title.css">
<link rel="stylesheet" href="../resources/css/content.css">
<link rel="stylesheet" href="../resources/css/board.css">
<title>Profile Web</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	
	<table border="0" cellpadding="20" cellspacing="0" width="100%">
		<tr>
			<td align="center">
				<span class="title_text01">Developer KJMBeauty'S Profile</span>
			</td>
			
		</tr>
		<tr>
			<td align="center">
				<span class="title_text02">I'm Jeongmi Kwon, a developer who wants a development job.</span>
			</td>
			
		</tr>
		<tr>
			<td align="center" height="500">
				<table border="0" cellpadding="0" cellspacing="0" width="60%" class="content_box" height="530">				
					<tr class="board_title_tr">
						<th class="board_title_td" width="5%">번호</th>
						<th class="board_title_td" width="8%">아이디</th>
						<th class="board_title_td" width="10%">이름</th>
						<th class="board_title_td" width="55%">제목</th>
						<th class="board_title_td" width="15%">등록일</th>
						<th class="board_title_td" width="7%">조회수</th>
					</tr>
					<c:forEach items="${bDtos}" var="bDto">
					<tr class="board_content_tr">
						<td class="board_content_td" align="center">${bDto.bnum }</td>
						<td class="board_content_td" align="center">${bDto.bid}</td>
						<td class="board_content_td" align="center">${bDto.bname}</td>
						<td class="board_content_td">
							<a class="board_link" href="contentView?pageNum=${currentPage}&bnum=${bDto.bnum }">
							<c:choose>
								<c:when test="${fn:length(bDto.btitle) > 38}">
									${fn:substring(bDto.btitle, 0, 38)}...
								</c:when>
								<c:otherwise>
									${bDto.btitle}
								</c:otherwise>
							</c:choose>
							</a>
						</td>
						<td class="board_content_td" align="center">
							${fn:substring(bDto.bdate, 0, 10)}
						</td>
						<td class="board_content_td" align="center">${bDto.bhit}</td>
					</tr>
					</c:forEach>
					
					<tr height="10">
						<td></td>
					</tr>
					
					<!-- 페이징 페이지 표시 -->					
					<tr>
						<td colspan="6" align="center">
							<c:if test="${pageDto.prev }">
							<a href="list?pageNum=1" class="pageHref"><div class="pagelink">＜＜</span></a>&nbsp;
							<a href="list?pageNum=${pageDto.startPage-1}" class="pageHref"><span class="pagelink">＜</span></a>
							</c:if>
							&nbsp;&nbsp;
							<c:forEach var="pageNumber" begin="${pageDto.startPage}" end="${pageDto.endPage }">
								<c:choose>
									<c:when test="${currentPage == pageNumber}">
										<span class="currPagelink">${pageNumber}</span>&nbsp;
									</c:when>
									<c:otherwise>
										<a href="list?pageNum=${pageNumber}" class="pageHref"><span class="pagelink">${pageNumber}</span></a>&nbsp;
									</c:otherwise>
								</c:choose>
							</c:forEach>							
							&nbsp;&nbsp;
							<c:if test="${pageDto.next }">	
							<a href="list?pageNum=${pageDto.endPage+1 }" class="pageHref"><span class="pagelink">＞</span></a>&nbsp;
							<a href="list?pageNum=${pageDto.realEndPage}" class="pageHref"><span class="pagelink">＞＞</span></a>
							</c:if>
						</td>
					</tr>
					
					
					<tr>						
						<td colspan="6" align="right">
							<input type="button" value="글쓰기" class="content_btn" onclick="javascript:location.href='write'">							
						</td>						
					</tr>
					
				</table>
			</td>
		</tr>
	</table>
	

	<%@ include file="include/footer.jsp" %>



</body>
</html>