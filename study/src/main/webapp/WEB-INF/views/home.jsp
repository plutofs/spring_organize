<html lang="ko">

<%@ include file="/WEB-INF/views/include/head.jsp" %>
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
