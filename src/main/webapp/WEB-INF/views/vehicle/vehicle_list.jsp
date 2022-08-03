<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp" %>


<script type="text/javascript">


/* 차량등록 */
$(document).ready(function(){  
	if(${insertMsg != null}){
		alert("${insertMsg}"); 
	}	  
});

/* 삭제 */
$(document).ready(function(){  
	if(${isdelProcess != null}){
		alert("${isdelProcess}"); 
	}	  
});

$(document).ready(function(){  
	if(${isImagedel != null}){
		alert("${isImagedel}"); 
	}	  
});

/* 업데이트 */
$(document).ready(function(){  
	if(${isUpdated != null}){
		alert("${isUpdated}");

	}	
});

$(document).ready(function(){  
	if(${UpdateFail != null}){
		alert("${UpdateFail}"); 
	}	  
	
});
</script>

<%
	session.invalidate();
%>




<div class="container carList bg-dark w-90 mt-5 border shadow-sm p-5" >
	<h3 style="color: #FFFFF">등록 차량 목록</h3>
	<table class="table" style="vertical-align:middle; color: #111;">
		<thead>
			<tr>
				<th>번호</th>
				<th>차량명</th>
				<th>이미지</th>
				<th>가격</th>
				<th>카테고리</th>
				<th>색상</th>
				<th>제조사</th>
				<th>분류</th>
				<th>차량소개</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>		
		<c:if test="${vehicleList == null}">
			<tr><td colspan='9'>등록된 차량이 없습니다!</td></tr>
		</c:if>

		<c:forEach var="vDto" items="${vehicleList}">
			<tr>
				<td>${vDto.cNum}</td>				
				<td>${vDto.cName}</td>				
				<td>		
					<img src="${ctx}/resources/file_upload/${vDto.fileName}" style="width:150px">
				</td>
				
				<td>${vDto.price}</td>
				<td>${vDto.category_fk}</td>
				<td>${vDto.color}</td>
				<td>${vDto.company}</td>
				<td>${vDto.cSpec}</td>
				<td>${vDto.contents}</td>
				<td>
					<a href="javaScript:updateVehicle('${vDto.cNum}','${vDto.category_fk}')" class="btn btn-primary btn-sm mb-2" >수정</a>
					<a href="javaScript:deleteVehicle('${vDto.cNum}','${vDto.fileName}')" class="btn btn-danger btn-sm">삭제</a>
				</td>
		</c:forEach>
			<tr>
		</tbody>
	</table>
</div>

<!-- 자바스크립트 파라미터 넘겨서 페이지 이동하는기능 -->
<script type="text/javascript">
function updateVehicle(cNum,category_fk){
    var update = window.confirm("차량정보를 수정합니까?");
    if(update) location.href="vehicleUpadte.do?cNum="+cNum+"&category_fk="+category_fk;	
       
 }
</script>


<!-- 자바스크립트 삭제기능  -->
<script type="text/javascript">
	function deleteVehicle(cNum, fileName){
		var isDel = window.confirm("삭제하시겠습니까?");
		if(isDel) location.href="vehicleDelete.do?cNum="+cNum+"&fileName="+fileName;	
	}
</script>

<%@ include file="../inc/footer.jsp" %>