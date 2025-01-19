<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>confirm</title>
</head>
<body>
	<script type="text/javascript">
		var msg="${msg}";
		var url="${url}";
		var confirmFlag = confirm(msg);//확인->true or 취소->no 가 반환됨
		if(confirmFlag == true) {
			location.href = url; 
		} else {
			history.go(-1);
		}
	</script>

</body>
</html>