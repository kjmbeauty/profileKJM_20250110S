<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/title.css">
<link rel="stylesheet" href="../resources/css/content.css">
<link rel="stylesheet" href="../resources/css/board.css">
<script type="text/javascript" src="../resources/js/board.js"></script>
<title>Profile Web</title>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	
	<table border="0" cellpadding="20" cellspacing="0" width="100%">
		<tr>
			<td align="center">
				<span class="title_text01">DEVELOPER GYOJIN's PROFILE</span>
			</td>
			
		</tr>
		<tr>
			<td align="center">
				<span class="title_text02">I'm Gyojin Lee, a developer who wants a development job. Please call me back.</span>
			</td>
			
		</tr>
		<tr>
			<td align="center" height="500">
				<table border="0" cellpadding="10" cellspacing="0" width="60%" class="content_box" height="530">				
					
					<tr>
						<td align="right">
							<span class="content_text">아이디 :</span>
						</td>
						<td>
							<input type="text" name="bid" value="${bDto.bid }" class="input_box_noedit" readonly="readonly">
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">글쓴이 :</span>
						</td>
						<td>
							<input type="text" name="bname" value="${bDto.bname }"  class="input_box_noedit" readonly="readonly">
						</td>
					</tr>
					<tr>
						<td align="right" width="30%">
							<span class="content_text">제목 :</span>
						</td>
						<td>
							<input type="text" name="btitle" value="${bDto.btitle }" class="title_box_noedit" readonly="readonly">							
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">내용 :</span>
						</td>
						<td>
							<textarea rows="10" cols="70" name="bcontent" class="content_box_noedit" readonly="readonly">${bDto.bcontent }</textarea>
						</td>
					</tr>					
					<tr>						
						<td colspan="2" align="center">
						<!-- 로그인 한 사용자만 글수정, 글삭제 버튼이 보이게 처리 -->
							<c:choose>								
								<c:when test="${sessionid != null }">
									<input type="button" value="글수정" class="content_btn" onclick="javascript:location.href='contentModify?bnum=${bDto.bnum}'">
									<input type="button" value="글삭제" class="content_btn" onclick="contentDelete(${currPage}, ${bDto.bnum})">
									<input type="button" value="글목록" class="content_btn" onclick="javascript:location.href='list?pageNum=${currPage}'">
								</c:when>
								<c:otherwise>
									<input type="button" value="글목록" class="content_btn" onclick="javascript:location.href='list?pageNum=${currPage}'">
								</c:otherwise>
							</c:choose>							
						</td>
						
					</tr>
				
				</table>
			</td>
		</tr>
	</table>
	
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>