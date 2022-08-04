<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp" %>

<!-- Personal CSS -->
<link rel="stylesheet" href="${ctx}/resources/css/noticeList.css">
<link rel="stylesheet" href="${ctx}/resources/css/noticeRent.css">


<script type="text/javascript" src="${ctx}/resources/js/mdb.min.js"></script>

  <div class="container mt-5">
  	
  	<div class="container_inner mt-3">
		<div class="mt-3 mb-3 p-3 bg-secondary text-white rounded">
			<h1><i class="xi-paper"></i>&nbsp;FAQ</h1> 
		</div>
	</div>
  
    <div class="accordion accordion-flush" id="accordionFlushExample">
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading1">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse1" aria-expanded="false" aria-controls="flush-collapse1">
            Q.보증금은 계약 종료 후 돌려받을 수 있나요?
          </button>
        </h2>
        <div id="flush-collapse1" class="accordion-collapse collapse" aria-labelledby="flush-heading1" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body" style="color:#111">
            A. 보증금은 계약 종료시 환급받으실 수 있고, 차량 인수시 인수비용에서 <code>보증금을 뺀 나머지 금액</code> 만 납부하시면 인수 가능합니다.
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading2">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse2" aria-expanded="false" aria-controls="flush-collapse2">
            Q.만기 시 인수방법은 어떻게 되나요?
          </button>
        </h2>
        <div id="flush-collapse2" class="accordion-collapse collapse" aria-labelledby="flush-heading2" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body" style="color:#111">
            A. 계약 시 제시되는 차량의 잔가만 납부하시면 인수 가능합니다.
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading3">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse3" aria-expanded="false" aria-controls="flush-collapse3">
            Q.렌트카 운전 가능범위를 알고 싶어요
          </button>
        </h2>
        <div id="flush-collapse3" class="accordion-collapse collapse" aria-labelledby="flush-heading3" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body" style="color:#111">
            A. 개인 : 계약자 본인, 계약자 직계가족, 계약자 지정인(<code>2인까지 가능</code>)
            사업자 : 계약자 본인, 계약자 직계가족, 사업체/법인의 임직원, 계약자 지정인(<code>2인까지 가능</code>)
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading4">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse4" aria-expanded="false" aria-controls="flush-collapse4">
            Q.장기렌트 이용 중 사고 시에 보험료가 할증되나요?
          </button>
        </h2>
        <div id="flush-collapse4" class="accordion-collapse collapse" aria-labelledby="flush-heading4" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body" style="color:#111">
            A. 렌터카는 피보험자가 <code>렌터카 회사 명의</code>로 가입되기 때문에 사고로 인한 보험료 할증은 없고 사고로 인한 월 대여료는 인상되지 않습니다. 
          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading5">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse5" aria-expanded="false" aria-controls="flush-collapse5">
            Q.사고나 고장시 어떻게 처리하면 되나요?
          </button>
        </h2>
        <div id="flush-collapse5" class="accordion-collapse collapse" aria-labelledby="flush-heading5" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body" style="color:#111">
            A. 장기렌트 이용 시 차량의 사고나 고장으로 인해 수리가 필요한 경우, <code>계약한 렌트회사 사고담당자</code>에게 문의하시면
            바로 조치받으실 수 있습니다. 

          </div>
        </div>
      </div>
      <div class="accordion-item">
        <h2 class="accordion-header" id="flush-heading6">
          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse6" aria-expanded="false" aria-controls="flush-collapse6">
            Q.사업자인데 렌트료 경비처리가 가능한가요?
          </button>
        </h2>
        <div id="flush-collapse6" class="accordion-collapse collapse" aria-labelledby="flush-heading6" data-bs-parent="#accordionFlushExample">
          <div class="accordion-body" style="color:#111">
            A. 장기렌트의 경우 <code>사업자 등록증</code>을 가지고 있는 계약자라면 누구나 비용처리 가능합니다. 또한 경차, 승합자등 부가세 환급차량의 경우
            부가세 환급도 가능합니다. 
          </div>
        </div>
      </div>
    </div>
  </div>
<%@ include file="../inc/footer.jsp" %>
