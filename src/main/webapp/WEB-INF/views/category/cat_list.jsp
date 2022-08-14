<%@page import="kr.mr.model.CategoryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<link rel="stylesheet" href="${ctx}/resources/css/mdb,min.css">
<script type="text/javascript">
$(document).ready(function(){  /* CatRegOk 에서 카테고리가 수정되었다면 setAttribute한 isProcess에 등록성공 메세지 띄우기  */
   if(${isProcess != null}){
      alert("${isProcess}"); 
   }     
});
</script>



<div class="container carList bg-white w-90 mt-5 border shadow-sm p-5" >
   <h3 style="color: #111">카테고리 리스트</h3>
   <table class="table" style="vertical-align:middle; color: #111;">
      <thead>
         <tr>   
            <th>번호</th>
            <th>코드</th>
            <th>카테고리명</th>
            <th>삭제</th>
         </tr>
      </thead>
      <tbody>
               <c:forEach var="dto" items="${catList}">
               <tr>
                  <td>${dto.cat_num}</td>
                  <td>${dto.cat_code}</td>
                  <td>${dto.cat_name}</td>
                  <td><input type="button" value="삭제" class="btn btn-outline-danger" onclick="deleteCat(${dto.cat_num})"/></td>
               </tr>   
               </c:forEach>
         </tbody>
   </table>
</div>



<%@ include file="../inc/footer.jsp" %>


<script type="text/javascript">
   function deleteCat(cat_num){
      location.href="catDelete.do?cat_num="+cat_num;
   }
</script>
