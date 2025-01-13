<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/css/title.css">
<title>Profile Web</title>
</head>
<body>
	<%@ include file = "include/header.jsp" %>


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
			<td align="center">
				<table border="0" cellpadding="10" cellspacing="0" width="55%">
					<tr>
						<td class="skill_box">
							<span class="skill_text01">J</span><span class="skill_text02">AVA</span>
						</td>
						<td rowspan="6" class="image_box" align="center">
							<img src="../resources/img/springboot.jpg">
						</td>
					</tr>
					<tr>
						<td class="skill_box">
							<span class="skill_text01">J</span><span class="skill_text02">SP</span>
						</td>
					</tr>
					<tr>
						<td class="skill_box">
							<span class="skill_text01">S</span><span class="skill_text02">PRINGBOOT</span>
						</td>
					</tr>
					<tr>
						<td class="skill_box">
							<span class="skill_text01">J</span><span class="skill_text02">AVASCRIPT</span>
						</td>
					</tr>
					<tr>
						<td class="skill_box">
							<span class="skill_text01">H</span><span class="skill_text02">TML5&CSS</span>
						</td>
					</tr>
					<tr>
						<td class="skill_box">
							<span class="skill_text01">D</span><span class="skill_text02">ATABASE</span>
						</td>
					</tr>
				</table>
			
			</td>							
		</tr>

	</table>

	
	
	<%@ include file="include/footer.jsp" %>	

</body>
</html>