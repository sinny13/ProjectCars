<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   
<%@ include file="../inc/header.jsp" %>


<script type="text/javascript">

	$(document).ready(function(){
		

	if(${sessionScope.userId == 'admin'}){
		
	$("#btn-write").click(() => {
         location.href="<c:url value='qnaRegister.do?viewPage=${qp.viewPage}'/>";
      })
	}else if(${sessionScope.userId != 'admin'}){
		$("#btn-write").click(() => {
			alert("관리자가 아닙니다.");
	      })
	}
	
	

      var moveForm =$("#moveForm"); 
      

      $(".page-item a").on("click", function(e){
         e.preventDefault();
         
         

        
        
         moveForm.find("input[name='viewPage']").val($(this).attr("href"));
         moveForm.submit();
      }); 
       

      
      if(${sessionScope.userId !=null || sessionScope.userId != ''}){
    	  
	      $(".goView").on("click", function(e){ // goView 클릭 시 ~ 이벤트 실행
	         e.preventDefault();
	         
	         moveForm.append("<input type='hidden' name='qid' value='"+
	               $(this).attr("href")+"'>");
	         moveForm.attr("action", "qnaView.do"); 
	
	         moveForm.submit();
	      });
	      
	      
	      
	      
      }
      
  
      var sf = $("#searchForm");
      
    
      $("#btn-search").on("click", function(e){
         if(!sf.find("input[name='keyWord']").val()){
            alert("키워드를 입력하세요!!");
            $("#keyWord").focus();
            return false;
         }
         
         sf.submit();
      });
   });
</script>


<div class="container mt-5 p-3 border bg-dark">
<h3 style="color:white">공지사항</h3>
	<div>
		<form action="qnaList.do" method="get" id="moveForm"><!-- 검색 데이터 객체 -->
		   <input type="hidden" name="viewPage" value="${qp.viewPage}"/>
		   <input type="hidden" name="searchType" value="${vo.searchType}"/>
		   <input type="hidden" name="keyWord" value="${vo.keyWord}"/>
		</form>
		
 		<form id="searchForm" method="post" action="qnaList.do">
		   <div class="d-flex justify-content-end">
		   
 		      <select class="form-select me-2" name="searchType" 
		         style="width:100px; background:#212529; color:white;">
		         <option
		            <c:out value="${vo.searchType == null ? 'selected':''}"/>>선택</option>
		         <option value="S"
		            <c:out value="${vo.searchType == 'S' ? 'selected':''}"/>>제목</option>
		         <option value="C"
		            <c:out value="${vo.searchType eq 'C' ? 'selected':''}"/>>내용</option>
		         <option value="W"
		            <c:out value="${vo.searchType eq 'W' ? 'selected':''}"/>>글쓴이</option>
		      </select>
		      
		      <!-- 검색창 -->
		      <input class="form-control rounded-0 rounded-start" type="text" 
		         id="keyWord" name="keyWord" placeholder="Search" 
		         style="width:250px; background:#212529; color:white;" value="${vo.keyWord}"> <!-- DB에 저장된 데이터와 비교 -->
		         
		      <!-- 검색버튼 -->
		      <button id="btn-search " class="btn btn-outline-success rounded-0 rounded-end" 
		         style="width:40px; background:#212529; color:white" ><i class="fa fa-search"></i></button> 
		   </div>
		</form>
	</div>

<div class="m-0 my-1"><b>${qp.viewPage}</b> / ${qp.totalPage} pages</div><!-- 현재 페이지 -->
	<table class="boardtable table table-hover">
	   <thead style="background:#1111; color:white">
	      <tr>
	         <th>번호</th>
	         <th>제목</th>
	         <th>글쓴이</th>
	         <th>등록일</th>  
	         <th>조회수</th>
	         
	      </tr>
	   </thead>
	   <tbody style="color:white"><!-- 게시판 글 리스트 제공  -->
	      <c:set var="qno" value="${qp.startRowNum}"/>
	      <c:forEach var="lvo" items="${list}"><!-- 선언 -->
	      <tr>

	
		
	         <td>${qno}</td>
	         <td><a class="goView" style="color:#c36f51" href="<c:url value='${lvo.qid}'/>">${lvo.subject}</a></td>
	         <td>${lvo.writer}</td>
	         <td><fmt:formatDate pattern="yyyy-MM-dd" value="${lvo.regDate}"/></td>
	         <td>${lvo.hit}</td>

	      </tr>
	      <c:set var="qno" value="${qno-1}"/>
	      </c:forEach>
	   </tbody>
	</table>
	
	<!-- 페이지 네비게이션(블럭) -->
	<ul class="pagination justify-content-center my-5 ">
	  <li class="page-item ${qp.prevPage <=0 ? 'disabled' : ''}"><!--이전 페이징 블럭이 0이하 일 경우, 이전 버튼 비활성화-->
		     <a class="page-link" href="${qp.prevPage}" style="color:black" ><<</a>
	  </li>
	  
	  <c:forEach var="i" begin="${qp.blockStart}" end="${qp.blockEnd}">

	     <li class="page-item ${qp.viewPage == i ? 'active':''}"><!-- 현재 페이지가 i일 경우 active(현재위치표시역할) -->
	        <a class="page-link" style="color:white" href="${i}">${i}</a><!-- i로 페이지 이동 -->
	     </li>
	  </c:forEach>
	  
	  <li class="page-item ${qp.blockEnd >= qp.totalPage ? 'disabled': ''}">
	  					<!-- 전체게시글 수가 페이징 블럭의 끝번호 보다 작을 경우 disabled(버튼 비활성화) -->
	  
	     <a class="page-link" style="color:white" href="${qp.nextPage}">>></a>
	  </li>
	</ul>
	
	<div class="text-center">
		<button class="btn btn-outline-white" id="btn-write">글쓰기</button>
	</div>
</div>

<%@ include file="../inc/footer.jsp" %>