<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
<%@ include file="../inc/header.jsp" %>




<style>
   .ck-editor__editable { height: 200px;}
   .ck-content {font-size: 12px;}
</style>
<!-- <script src="https://cdn.ckeditor.com/ckeditor5/34.2.0/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>
 -->
<!-- <script src="ckeditor/ckeditor.js"></script> -->
<div class="container d-flex mt-5 justify-content-center">
   <div class="w-75 shadow p-5 border bg-dark">
      <h3 style="color:white;">공지사항</h3>
      <form id="regForm" method="post" action="<c:url value='boardRegister.do'/>">
         <input type="hidden" name="id" value="${sessionScope.userId}"/>
         
         <div class="form-group"class="form-control" id="writer" name="writer">
            <label for="writer" >글쓴이</label>
            <%--<input type="text" class="form-control" id="writer"
               name="writer" placeholder="이름을 입력하세요"/>--%>
          	<input type="text" class="form-control" id="writer"
               name="writer" readonly value="${sessionScope.userName}"/>
         </div>
         <div class="form-group">
            <label for="subject">제목</label>
            <input type="text" class="form-control" id="subject" name="subject" placeholder="글 제목을 입력하세요"/>
         </div>
         <div class="form-group">
            <label for="contents">내용</label>
            <textarea class="form-control col-sm-100" id="contents" 
               name="contents" rows="10"></textarea>
          </div>
          
         <div class="form-group mt-4">
            <button type="submit" onclick="regBoardChk()" class="btn btn-outline-white">등록</button>
            <button type="button" id="btn-list" class="btn btn-outline-white" onclick="location.href='boardList.do'">글목록</button>
         </div>
      </form>

   </div>
</div>
               
               
               
               
     <!--           CKEDITOR.editorConfig = function(config){
                  config.enterMode = CKEDITOR.ENTER_BR
                }; 
                
            
               ClassicEditor.defaultConfig={
                  toolbar:{
                     items:[
                        'heading',
                        '|',
                        'bold',
                        '|',
                        'link',
                        '|',
                        'bulletedList',
                        'numberedList',
                        '|',
                        'indent',
                        '|',
                        'outdent',
                        '|',
                         'imageUpload',
                        '|', 
                        'insertTable',
                        '|',
                        'undo',
                        'redo'
                     ]
                  },
                  language: "ko"
               };
               ClassicEditor.editorConfig = function(config){
                  config.enterMode = ClassicEditor.ENTER_BR
               };
               ClassicEditor.create(document.querySelector('#contents'))
                  .catch(error => {
                     console.error(error);
                  }); </script>-->
            
 



<script type="text/javascript" src="${ctx}/resouces/js/board.js">

<!-- (미구현)게시판 유효성 -->
$(document).ready(function(){
	
	function regBoardChk(){
	
		/* 제목 */
		if(document.regForm.subject.value.lenth == 0){
			alert("제목을 입력해주세요.");
			regForm.subject.focus();
			return;
		}
		/* 내용 */
		if(document.regForm.subject.value.lenth =< 5){
			alert("내용을 5글자 이상 입력해주세요.");
			regForm.contents.focus();
			return;
		}
		
		regForm.submit();
	}
}

</script>
<%@ include file="../inc/footer.jsp" %>