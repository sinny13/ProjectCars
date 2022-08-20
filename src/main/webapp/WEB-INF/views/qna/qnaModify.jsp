<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<%@ include file="../inc/header.jsp" %>

<div class="container mt-5">
	<div class="w-120 p-5 border bg-dark">
		<form id="moveForm" method="post" action="<c:url value='qnaModify.do'/>">
			<input type="hidden" name="viewPage" value="${viewPage}"/>
			<input type="hidden" name="keyWord" value="${qvo.keyWord}"/>
			<input type="hidden" name="searchType" value="${qvo.searchType}"/>
			
			<h5>${board.subject}</h5>
			<div class="d-flex">
				<div class="form-group">
					<label for="subject">번호</label>
					<input type="text" size=1 class="form-control" id="qid" 
						name="qid" readonly value="${qna.qid}"/>
				</div>
				<div class="form-group px-2">
					<label for="writer">글쓴이</label>
					<input type="text" size=8 class="form-control" id="writer" 
						name="writer" readonly value="${qna.writer}"/>
				</div>

			</div>
	
			<div class="form-group">
				<label for="subject">제목</label>
				<input type="text" class="form-control" id="subject" 
					name="subject" value="${qna.subject}"/>
			</div>
	
			<div class="form-group">
				<label for="contents">내용</label>
				<textarea class="form-control" id="contents" 
					name="contents" rows="10">${qna.contents}</textarea>
			</div>

			<div class="form-group mt-4">
				<button type="submit" id="btn-modify" class="btn btn-outline-white me-2">수정완료</button>
				<button type="button" id="btn-list" data-link="list" onclick="location.href='qnaList.do'" class="btn btn-outline-white">글목록</button>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		
		var moveForm = $("#moveForm");
		
		$("button").on("click", function(e){
			e.preventDefualt();
			
			var linkBtn = $(this).data("link");
			
			if(linkBtn === "remove"){
				moveForm.attr("action", "qnaRemove.do");
			}else if(linkBtn === "list"){
				moveForm.attr("action", "qnaList.do").attr("method", "get");
				
				var viewPageObj = $("input[name='viewPage']").clone();
				var keyWordObj = $("input[name='keyWord']").clone();
				var searchTypeObj = $("input[name='searchType']").clone();
				
				moveForm.empty();
				
				moveForm.append(viewPageObj);
				moveForm.append(keyWordObj);
				moveForm.append(searchTypeObj);
			}
			moveForm.submit();
		})
		
	})
		
	
</script>

<%@ include file="../inc/footer.jsp" %>