<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">

<%@ include file="/WEB-INF/views/include/head.jsp" %>
<style>
	div:not(.doubles){
		width : 50%;
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
  .isholder{
	  background-color: yellowgreen;
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
	<div style="overflow:auto; height: auto;">
		stop시 console에 log찍기 + helper조절 -> tr유지하기 
			<table style="width:95%">
				<tbody class="soartable5">
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
			<div class="doubles">
			두개의 테이블 잇기 (connectWith)+ placeHolder
			</div>
			<div style="width:30%; float:left; display:inline;" class="doubles">
				<table>
					<tbody id="soartable1" class="soartableConnect1">
						<tr class="Title">
							<td colspan="3">제목바</td>
						</tr>
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
			<div style="width:30%; float:left; display:inline; margin-left: 10px;"  class="doubles">
				<table>
					<tbody id="soartable2" class="soartableConnect1">
						<tr class="Title">
							<td colspan="3">제목바</td>
						</tr>
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
		</div>
	</div>
	<div style="overflow:auto; height: auto;">
			<div class="doubles">
			비어있는 곳으로 이동 못하게 막기 (왼쪽은 막고 오른쪽은 안막음 )
			</div>
			<div style="width:45%; float:left; display:inline;" class="doubles">
				<table>
					<tbody id="soartable3" class="soartableConnect2">
						<tr class="Title">
							<td colspan="3">제목바</td>
						</tr>
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
			<div style="width:45%; float:left; display:inline; margin-left: 5%;"  class="doubles">
				<table>
					<tbody id="soartable4" class="soartableConnect2">
						<tr class="Title">
							<td colspan="3">제목바</td>
						</tr>
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

			<div class="doubles" style="width:95%;" >
				핸들링을 제목바로 지정하기 
				</div>
			<div id ="inlines">
				<div id="soartable5" style="width:45%; float:left; display:inline;" class="doubles  soartableConnect3">
					div1번
					<table>
						<tbody>
							<tr class="Title">
								<td colspan="3">제목바</td>
							</tr>
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
				<div  id="soartable6" style="width:45%; float:left; display:inline; margin-left: 5%;"  class="doubles soartableConnect3">
					div2번
					<table>
						<tbody>
							<tr class="Title">
								<td colspan="3">제목바</td>
							</tr>
							<tr width = 40% class="soart1">
								<td>1번째요소</td>
								<td>2번째요소</td>
								<td>3번째요소</td>
							</tr>
							<tr width = 40% class="soart2">
								<td>4번째요소</td>
								<td>5번째요소</td>
								<td>6번째요소</td>
							</tr>
							<tr width = 40% class="soart3">
								<td>7번째요소</td>
								<td>8번째요소</td>
								<td>9번째요소</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>

<script>
	$('.soartable1').sortable();
	$('.soartable2').sortable();
	$('.soartable3').sortable({cancel : ".soart2"});
	$('.soartable4').sortable({items : "tr:not(.soart2)"});
	$('.soartable5').sortable({
		stop : function(event, ui){
			console.log("5번이 stop됨");
		},//stop end
		helper: function(event, ui) { //테이블 드래그할때 width값 설정하기
		    var clone = ui.clone();
		    clone.children().each(function(idx){
		        $(this).width(ui.children().eq(idx).width());
		    });
		    return clone;
		} //helper end

	});
	
	$('#soartable1, #soartable2').sortable({
		items : 'tr:not(.Title)',
		connectWith : '.soartableConnect1',
		placeholder : '.isholder'
	}).disableSelection();

	$('#soartable3').sortable({
		items : 'tr:not(.Title)',
		connectWith : '.soartableConnect2',
		dropOnEmpty: false
	}).disableSelection();

	$('#soartable4').sortable({
		items : 'tr:not(.Title)',
		connectWith : '.soartableConnect2',
		dropOnEmpty: true
	}).disableSelection();

	$('#soartable5, #soartable6').sortable({
		items : 'table',
		connectWith : '.soartableConnect3',
		handle : ".Title",
		placeholder : ".isholder"
	}).disableSelection();
</script>

</html>
