<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../inc/header.jsp" %>

<script type="text/javascript">
	function inputCheck(){
		if(!cat_inputFrm.cat_code.value){
			alert("카테고리 코드를 입력하세요!!!");
			cat_inputFrm.cat_code.focus();
			return;
		}
		if(!cat_inputFrm.cat_name.value){
			alert("카테고리명을 입력하세요!!!");			
			cat_inputFrm.cat_name.focus();
			return;
		}
		
		document.cat_inputFrm.submit();
	}
</script>    
<main>
<div class="container mt-3 border shadow-sm p-2" style="width: 20%">
	<h3>카테고리 등록</h3>
	
	<form action="catInsert.do" method="post" name="cat_inputFrm">
		<div class="mb-3 mt-3">
			<label for="cat_code">카테고리 코드</label>
			<input type="text" class="form-control" id="cat_code" 
								placeholder="코드를 입력하세요" name="cat_code">
		</div>
		<div class="mb-3">
			<label for="cat_name">카테고리명</label>
			<input type="text" class="form-control" id="cat_name" 
								placeholder="카테고리명을 입력하세요" name="cat_name">
		</div>
		<div class="text-center">
			<input type="button" class="btn btn-sm btn-primary" 
					value="등록"  onclick="inputCheck()"/>
			<input style="width: 20%" value="돌아가기" class="btn btn-sm btn-secondary" onclick="location.href='${ctx}/home.do'"/>								
		</div>
	</form>
	
	
</div>
</main>
<%@ include file="../inc/footer.jsp" %>    
