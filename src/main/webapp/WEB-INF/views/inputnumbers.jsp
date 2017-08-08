<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form modelAttribute="inputValueForm" action="${pageContext.request.contextPath}/calc-controller/calc">
		<form:input path="num1"/> × <form:input path="num2"/><br>
		<input type="submit" value="計算">
	</form:form>
</body>
</html>