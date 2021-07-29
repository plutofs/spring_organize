<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"  session="false" %>
<html lang="ko">
<head>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
	<br>
	<c:forEach var="a" items="${a}" varStatus="status">
	 <c:set var="index">b${status.index}</c:set>
	    <c:forEach var="b" items="${requestScope[index]}" >
			    ${b }
			    <c:if test="${index == 'b3'}">
						<br>${b.value}
						<br/>${b.value2}
					</c:if>
	    </c:forEach>
</c:forEach>
	
	
	
</body>

<script>
</script>

</html>
