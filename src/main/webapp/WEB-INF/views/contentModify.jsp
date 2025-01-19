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
					<form action="contentModifyOk" method="post" name="writeForm">
					<input type="hidden" name="bnum" value="${bDto.bnum }">
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
							<input type="text" name="btitle" value="${bDto.btitle }" class="title_box">							
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">내용 :</span>
						</td>
						<td>
							<textarea rows="10" cols="70" name="bcontent" class="content_box">${bDto.bcontent }</textarea>
						</td>
					</tr>					
					<tr>						
						<td colspan="2" align="center">
							<input type="submit" value="수정완료" class="content_btn">
							<input type="button" value="수정취소" class="content_btn" onclick="javascript:location.href='history.go(-1)'">
							<input type="button" value="글목록" class="content_btn" onclick="javascript:location.href='list'">
						</td>
					</form>	
					</tr>
				
				</table>
			</td>
		</tr>
	</table>
	
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>