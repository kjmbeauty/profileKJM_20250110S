<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/title.css">
<link rel="stylesheet" href="../resources/css/content.css">
<script type="text/javascript" src="../resources/js/join.js"></script>
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
				<form action="modify" method="post" name="joinForm" onsubmit="return joinCheck()">
					<tr>					
					 <td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td align="right" width="40%">
							<span class="content_text">아이디 :</span>
						</td>
						<td>
							<input type="text" name="mid" value="${mDto.mid }" class="input_box_noedit" readonly="readonly">							
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">비밀번호 :</span>
						</td>
						<td>
							<input type="password" name="mpw" value="${mDto.mpw }" class="input_box">
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">비밀번호 확인 :</span>
						</td>
						<td>
							<input type="password" name="mpw_check" class="input_box">
						</td>
					</tr>						
					<tr>
						<td align="right">
							<span class="content_text">회원이름 :</span>
						</td>
						<td>
							<input type="text" name="mname" value="${mDto.mname }" class="input_box">
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">이메일 :</span>
						</td>
						<td>
							<input type="text" name="memail" value="${mDto.memail}"  class="input_box">
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">가입일 :</span>
						</td>
						<td>
							<input type="text" name="mdate" value="${mDto.mdate }" class="input_box_noedit" readonly="readonly">
						</td>
					</tr>
					<tr>
						<td colspan="2">
							&nbsp;
						</td>
					</tr>
					<tr>						
						<td colspan="2" align="center">
							<input type="submit" value="정보수정" class="content_btn">	
							<input type="button" value="취소" class="content_btn" onclick="javascript:history.go(-1)">						
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