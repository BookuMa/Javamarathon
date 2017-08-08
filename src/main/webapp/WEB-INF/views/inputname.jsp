<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/input.css">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h1>1km - 名前を表示する</h1>
	</header>
	<div>
	<form method="post" action="${pageContext.request.contextPath}/name-receiver/receive" id="name-form">
		<span>名前：</span><input type="text" name="name"><br>
		<input type="submit" value="送信">
	</form>
	</div>
</body>
</html>