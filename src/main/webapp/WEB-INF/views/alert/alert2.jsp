<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>alert</title>
</head>
<body>
	<!-- 이전 페이지 돌아가기 경고창 -->
	<script type="text/javascript">
		var msg="${msg}";		
		alert(msg);
		history.go(-1);
	</script>
</body>
</html>