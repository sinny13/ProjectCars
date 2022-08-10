<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp" %>

<!-- Personal CSS -->
<link rel="stylesheet" href="${ctx}/resources/css/myPageList.css">
<link rel="stylesheet" href="${ctx}/resources/css/myWishList.css">

<script type="text/javascript" src="${ctx}/resources/js/mdb.min.js"></script>

<body style="background-color:#111; color:#fff">
    <div class="container p-3 my-5 bg-secondary text-white">
        <h1>회원정보수정</h1>
    </div>
	<div class="card" style="background-color:#111; color:#fff">
    <div class="card-body">
        <div class='container'>                            
        <form action='${ctx}' method='post'>  
            <input type='hidden' name='no' value="${dto.no}">
            <table class='table table-sm' style="background-color:#111; color:#fff;">                                   
            <tbody>                                                 
                <tr style="background-color: slategray;">                                                
                    <td colspan='2'><b>${dto.name}</b>님의 회원 정보</td>
                </tr>                                         
                <tr>                            
                    <td style="color: cornflowerblue;">아이디</td>
                    <td style="color: cornflowerblue;"><input class="form-control" type="text" value="${dto.id}" aria-label="readonly input example" disabled readonly></td>                 
                </tr>                           
                <tr>                            
                    <td>비밀번호</td>           
                    <td><input type="text" class="form-control" id="floatingInputValue" name="pw" value="${dto.pw}"></td>    
                </tr>                           
                <tr>                            
                    <td style="color: cornflowerblue;">이름</td>               
                    <td style="color: cornflowerblue;"><input class="form-control" type="text" value="${dto.name}" aria-label="readonly input example" disabled readonly></td>  
                </tr>                           
                <tr>                            
                    <td>나이</td>               
                    <td>
                        <input type="text" class="form-control" id="floatingInputValue" name="age" value="${dto.age}">
                    </td>          
                </tr>                                         
                <tr>                                          
                    <td>이메일</td>                           
                    <td>
                        <input type="text" class="form-control" id="floatingInputValue" name="email" placeholder="name@example.com" value="${dto.email}">
                    </td>        
                </tr>                                
                <tr>                                 
                    <td>전화번호</td>                
                    <td>
                        <input type="text" class="form-control" id="floatingInputValue" name="tel" placeholder="010-0000-0000" value="${dto.tel}">
                    </td>        
                </tr>                                          
                <tr>                                 
                    <td>주소</td>                
                    <td>
                        <input type="text" class="form-control" id="floatingInputValue" name="detailAddr" value="${dto.detailAddr}">
                    </td>        
                </tr>
                <tr>
                    <td style="color: orange;"><i class="xi-warning"></i>주의</td>
                    <td style="color: orange;"><i class="xi-warning"></i>아이디와 이름은 변경할 수 없습니다.</td>
                </tr>                                                                                          
                <tr>     
                    <td colspan='2' align='center'>               
                        <input type='submit' value='수정하기' class='btn btn-primary'/>    
                        <input type='reset' value='취소' class='btn btn-secondary'/>         
                        <a href='myPageList.do' class='btn btn-success'>마이페이지</a> 
                    </td>                                            
                </tr>      
            </tbody>                                                
            </table>                                                
            </form>                                                 
        </div>
        </div>
    </div>
</body>

<%@ include file="../inc/footer.jsp" %>
