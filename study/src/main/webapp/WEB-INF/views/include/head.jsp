<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    <fmt:setBundle basename="setMain"/><!--프로퍼티 가져오기. 경로는 web-inf/src바로밑-->
<!DOCTYPE html>
<html>
<head>
	
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" ></script>
	<meta charset="UTF-8">
<title>leejunghoon Study</title>
</head>
<body>
	<table>
		<tr width="100%" height="10%">
			<td><a href='<fmt:message key="rootPath"/>'>메인</a></td>
			<td><a href='<fmt:message key="rootPath"/>/sortable'>드래그로 요소변경</a></td>
		</tr>
	</table>