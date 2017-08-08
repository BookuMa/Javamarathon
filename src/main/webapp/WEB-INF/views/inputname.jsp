<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/input.css">
<title>名前の入力</title>
</head>
<body>
	<header>
		<h1>1km - 名前を表示する</h1>
	</header>
	<div>
	<form method="post" action="${pageContext.request.contextPath}/name-receiver/receive" id="name-form">
		<div>名前：<input type="text" name="name"></div>
		<input type="submit" value="送信">
	</form>
	</div>
</body>
</html>