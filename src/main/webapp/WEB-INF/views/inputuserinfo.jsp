<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form modelAttribute="userInfoForm" action="${pageContext.request.contextPath}/user-info-controller/show-result">
		名前：<form:input path="name"/><br>
		年齢：<form:input path="age"/><br>
		住所：<form:input path="address"/><br>
		<input type="submit" value="送信">
	</form:form>
</body>
</html>