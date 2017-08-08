<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:out value="${number.num1 }"/> × <c:out value="${number.num2}"/>
	= <c:out value="${number.result}"/>
	
	<a href="${pageContext.request.contextPath}/calc-controller/calc2">次へ</a>
</body>
</html>