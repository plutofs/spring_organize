<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">

<%@ include file="/WEB-INF/views/include/head.jsp" %>
<style>
	div{
		width : 40%;
		border-bottom-width : 3px;
		border-bottom-color:  black;
		border-bottom-style:  solid;
		margin: 10px;
	}
	table {
    width: 100%;
    border: 1px solid #444444;
    border-collapse: collapse;
	margin:10px;
  }
  th, td {
    border: 1px solid #444444;
  }
</style>

	<br>
	<div>
		기본 soartable (tr이동 )<!--tbody에 먹이면 tr이움직임-->
		<table>
			<tbody class="soartable1">
				<tr width = 40% class="soart1">
					<td>첫번째요소</td>
					<td>두번째요소</td>
					<td>세번째요소</td>
				</tr>
				<tr width = 40% class="soart2">
					<td>네번째요소</td>
					<td>다섯번째요소</td>
					<td>여섯번째요소</td>
				</tr>
			</tbody>
		</table>
		기본 soartable (td이동)
		<table>
			<tr class="soartable2"  width = 40%>
				<td>첫번째요소</td>
				<td>두번째요소</td>
				<td>세번째요소</td>
			</tr>
			<tr  class="soartable2"  width = 40%>
				<td>네번째요소</td>
				<td>다섯번째요소</td>
				<td>여섯번째요소</td>
			</tr>
		</table>
		<!--따라서, table->tbody->tr->td순으로 하위로 내려감 -->
	</div>
	<div>
		cancel과 items의 차이 <br>
		cancel (중앙 456번 선택 불가능하지만 그 위에 올린다거나 하는게 가능함 )
		<table>
			<tbody class="soartable3">
				<tr width = 40% class="soart1">
					<td>첫번째요소</td>
					<td>두번째요소</td>
					<td>세번째요소</td>
				</tr>
				<tr width = 40% class="soart2">
					<td>네번째요소</td>
					<td>다섯번째요소</td>
					<td>여섯번째요소</td>
				</tr>
				<tr width = 40% class="soart3">
					<td>일곱번째요소</td>
					<td>여덟번째요소</td>
					<td>아홉번째요소</td>
				</tr>
			</tbody>
		</table>
		items(중앙 456번 선택 불가능, 그위에 올리는것 불가능 )
		<table>
		<tbody class="soartable4">
			<tr width = 40% class="soart1">
				<td>첫번째요소</td>
				<td>두번째요소</td>
				<td>세번째요소</td>
			</tr>
			<tr width = 40% class="soart2">
				<td>네번째요소</td>
				<td>다섯번째요소</td>
				<td>여섯번째요소</td>
			</tr>
			<tr width = 40% class="soart3">
				<td>일곱번째요소</td>
				<td>여덟번째요소</td>
				<td>아홉번째요소</td>
			</tr>
		</tbody>
	</table>
	</div>
	<div>
		3
	</div>
	<div>
		4
	</div>
</body>

<script>
	$('.soartable1').sortable();
	$('.soartable2').sortable();
	$('.soartable3').sortable({cancel : ".soart2"});
	$('.soartable4').sortable({items : "tr:not(.soart2)"});
</script>

</html>
