<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<table border="1" cellpadding="10" cellspacing="0" width="60%" class="content_box" height="530">
				<form action="loginOk" method="post" name="loginForm">
					<tr class="board_title_tr">
						<th class="board_title_td" width="5%">번호</th>
						<th class="board_title_td" width="8%">아이디</th>
						<th class="board_title_td" width="10%">이름</th>
						<th class="board_title_td" width="55%">제목</th>
						<th class="board_title_td" width="15%">등록일</th>
						<th class="board_title_td" width="7%">조회수</th>
					</tr>
					<tr class="board_content_tr">
						<td class="board_content_td" align="center">4</td>
						<td class="board_content_td" align="center">tiger</td>
						<td class="board_content_td" align="center">홍길동</td>
						<td class="board_content_td">안녕하세요. 가입인사드려요.</td>
						<td class="board_content_td" align="center">2025-01-13</td>
						<td class="board_content_td" align="center">15</td>
					</tr>
					<tr class="board_content_tr">
						<td class="board_content_td" align="center">3</td>
						<td class="board_content_td" align="center">tiger</td>
						<td class="board_content_td" align="center">홍길동</td>
						<td class="board_content_td">안녕하세요. 가입인사드려요.</td>
						<td class="board_content_td" align="center">2025-01-13</td>
						<td class="board_content_td" align="center">15</td>
					</tr>
					<tr class="board_content_tr">
						<td class="board_content_td" align="center">2</td>
						<td class="board_content_td" align="center">tiger</td>
						<td class="board_content_td" align="center">홍길동</td>
						<td class="board_content_td">안녕하세요. 가입인사드려요.</td>
						<td class="board_content_td" align="center">2025-01-13</td>
						<td class="board_content_td" align="center">15</td>
					</tr>							
					<tr class="board_content_tr">
						<td class="board_content_td" align="center">1</td>
						<td class="board_content_td" align="center">tiger</td>
						<td class="board_content_td" align="center">홍길동</td>
						<td class="board_content_td">안녕하세요. 가입인사드려요.</td>
						<td class="board_content_td" align="center">2025-01-13</td>
						<td class="board_content_td" align="center">15</td>
					</tr>
					<tr>
						<td colspan="6">&nbsp;</td>
					</tr>
					<tr>						
						<td colspan="6" align="right">
							<input type="button" value="글쓰기" class="content_btn">							
						</td>						
					</tr>
				</form>
				</table>
			</td>
		</tr>
	</table>
	
	
	<%@ include file="include/footer.jsp" %>



</body>
</html>