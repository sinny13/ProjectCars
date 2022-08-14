<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="ctx" value="${pageContext.request.contextPath}"/>
    
<%@ include file="../inc/header.jsp" %>


<div class="container carList bg-white w-90 mt-5 border shadow-sm p-5" >
   <h3 style="color: #111">회원 리스트</h3>
   <table class="table p-10" style="vertical-align:middle; color: #111;">
      <thead>
         <tr>               
            <th>번호</th>  
            <th>아이디</th>
            <th>비밀번호</th><!-- 추후 블러처리하거나 제외하기 -->
            <th>이름</th>  
            <th>나이</th>  
            <th>이메일</th>
            <th>전화번호</th>
            <th>우편번호</th>
            <th>주소</th>
<!--             
            <th>도로명주소</th>
            <th>지번주소</th>
-->
            <th>삭제</th> 
         </tr>      
      </thead>
      <tbody>      
      

      <c:forEach var="dto" items="${list}">
         <tr>
            <td>${dto.no}</td>
            <td><a href="memberInfo.do?no=${dto.no}">${dto.id}</a></td>
            <td>${dto.pw}</td>
            <td>${dto.name}</td>
            <td>${dto.age}</td>
            <td>${dto.email}</td>
            <td>${dto.tel}</td>
            <td>${dto.zipcode}</td>
            <td>${dto.jibunAddr} / ${dto.detailAddr}</td>
            <td>
            <input type="button" value="삭제" 
                  class="btn btn-danger" 
                  onclick="deleteMem(${dto.no})" disabled/>
             </td>
            
         </tr>            
      </c:forEach>
         <tr>
      </tbody>
   </table>
</div>

<%@ include file="../inc/footer.jsp" %>