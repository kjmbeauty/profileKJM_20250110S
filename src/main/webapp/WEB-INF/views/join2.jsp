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
				<table border="0" cellpadding="10" cellspacing="0" width="60%" class="content_box" height="530">
				
					<tr>
						<form action="idcheck">
						<td align="right">
							<span class="content_text">아이디 중복체크 :</span>
						</td>
						<form action="joinOk" method="post" name="joinForm" onsubmit="return joinCheck()">
						<td>
							<input type="text" name="idcheck" class="input_box">
							<input type="submit" value="중복체크">
						</form>
						</td>
					</tr>
					<tr>
						<td align="right" width="40%">
							<span class="content_text">아이디 :</span>
						</td>
						<td>
							<input type="text" name="mid" value="${joinId }" class="input_box">							
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">비밀번호 :</span>
						</td>
						<td>
							<input type="password" name="mpw" value="${joinPw }" class="input_box">
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
							<input type="text" name="mname" value="${joinName }" class="input_box">
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">이메일 :</span>
						</td>
						<td>
							<input type="text" name="memail" value="${joinEmail }"  class="input_box">
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;
						</td>
					</tr>
					<tr>						
						<td colspan="2" align="center">
							<input type="submit" value="회원가입" class="content_btn">
							<input type="button" value="로그인" class="content_btn" onclick="javascript:location.href='login'">
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