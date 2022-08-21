<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<%@ include file="../inc/header.jsp" %>




<style>
   .ck-editor__editable { height: 200px;}
   .ck-content {font-size: 12px;}
</style>

<div class="container d-flex mt-5 justify-content-center">
   <div class="w-75 shadow p-5 border bg-dark">
      <h3 style="color:white;">Q&A</h3>
      <form id="regForm" method="post" action="<c:url value='qnaRegister.do'/>">
         <input type="hidden" name="id" value="${sessionScope.userId}"/>
         
         <div class="form-group"class="form-control" id="writer" name="writer">
            <label for="writer" >글쓴이</label>
          	<input type="text" class="form-control" id="writer"
               name="writer" readonly value="${sessionScope.userName}"/>
         </div>
         <div class="form-group">
            <label for="subject">제목</label>
            <input type="text" class="form-control" id="subject" name="subject" placeholder="제목을 입력하세요."/>
         </div>
         <div class="form-group">
            <label for="contents">내용</label>
            <textarea class="form-control col-sm-100" id="contents" 
               name="contents" rows="10"></textarea>
          </div>
          
         <div class="form-group mt-4">
            <button type="submit" class="btn btn-outline-white">등록</button>
            <button type="button" id="btn-list" class="btn btn-outline-white" onclick="location.href='qnaList.do'">글목록</button>
         </div>
      </form>

   </div>
</div>
               
               
<%@ include file="../inc/footer.jsp" %>