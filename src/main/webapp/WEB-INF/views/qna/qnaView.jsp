<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/> 
<%@ include file="../inc/header.jsp" %>

<div class="container mt-5">
   <div class="w-120 p-5 border bg-dark">
      <h5>${qna.subject}</h5>
      
      <!-- 검색했을 때 해당 게시글 정보를 list로 넘겨줌 -->
      <form action="qnaList.do" method="get" id="moveForm"> <!-- js:#moveForm -->
         <input type="hidden" name="viewPage" value="${viewPage}"/>
         <input type="hidden" name="searchType" value="${qvo.searchType}"/>
         <input type="hidden" name="keyWord" value="${qvo.keyWord}"/>
         <input type="hidden" name="qid" value="${qna.qid}"/>
      </form>
      
      <div class="d-flex justify-contents-between">
         <div class="form-group">
            <label for="subject">번호</label>
            <input type="text" size=1 class="form-control" id="qid" 
               name="qid" disabled value="${qna.qid}"/>
         </div>
         <div class="form-group px-2">
            <label for="writer">글쓴이</label>
            <input type="text" size=8 maxlength=8 class="form-control" id="writer" 
               name="writer" disabled value="${qna.writer}"/>
         </div>

      </div>
      
      <div class="form-group">
         <label for="subject">제목</label>
         <input type="text" class="form-control" id="subject" 
            name="subject" disabled value="${qna.subject}"/>
      </div>

      <div class="form-group">
         <label for="contents">내용</label>
         <textarea class="form-control col-sm-100" id="contents" 
            name="contents" rows="10" disabled><c:out value="${qna.contents}" escapeXml="false"/></textarea>
      </div>
      <div class="form-group mt-4">
         <c:if test="${sessionScope.userId !=null && sessionScope.userId !=''}">
            <c:if test="${sessionScope.userId == 'admin'}"> <!-- board.id -->
               <button type="submit" id="btn-modify" class="btn btn-outline-white me-2">수정하기</button>
               <button type="button" id="btn-delete"  data-link="remove" class="btn btn-outline-white me-2">삭제하기</button>
                     
            </c:if>
            <c:if test="${sessionScope.userId != 'admin'}">
               <button type="submit" id="btn-modify" class="btn btn-outline-white me-2" disabled>수정하기</button>
               <button type="button" id="btn-delete"  data-link="remove" class="btn btn-outline-white me-2" disabled>삭제하기</button>
            </c:if>
         </c:if>
         <button type="button" id="btn-list" class="btn btn-outline-white me-2">글목록</button>
      </div>
 

<script type="text/javascript">

	$(document).ready(function(){
					// # : id . : class
		var moveForm = $("#moveForm");
					
		$("#btn-modify").click(() => {
			moveForm.attr("action", "qnaModify.do");
			moveForm.submit();
		})
		
		$("#btn-delete").click(() => {
			moveForm.attr("action", "qnaRemove.do");
			moveForm.submit();
		})
		
		$("#btn-list").click(() => {
			moveForm.attr("action", "qnaList.do");
			moveForm.submit();
		})
		
		
		
	});
		
      

</script>

<%@ include file="../inc/footer.jsp" %>