<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../inc/header.jsp" %>

<link rel="stylesheet" href="${ctx}/resources/css/myBankPayment.css">

<!-- partial -->
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/foundation/6.3.1/js/foundation.js'></script>

<!-- partial:index.partial.html -->
<!-- <header class="top-bar align-center">
  <div class="top-bar-title">
    <h3>예약 완료 
      small>with Foundation Flex-Grid Layout</small>
    </h3>
  </div>
</header> -->
<div id="myBankPayment">
<div class="row expanded">
  <main class="columns">
    <div class="inner-container">
      <section class="row">
        <div class="callout large invoice-container">
          <table class="invoice">
            <tr class="header">
              <!-- <td class="">
                <img src="http://www.travelerie.com/wp-content/uploads/2014/04/PlaceholderLogoBlue.jpg" alt="Company Name" />
              </td> -->
              <td class="align-right">
                <h2>예약 완료</h2>
              </td>
            </tr>
            <tr class="intro"> 
              <!-- <td class="">
                Hello, Philip Brooks.<br>
                Thank you for your order.
              </td>  -->
               <td class="text-right">
                <span class="num">Order #00302</span><br>
                아래 계좌정보로 입금해 주시면<br>결제 완료처리가 됩니다
              </td> 
            </tr>
            <tr class="details">
            <td colspan="2">
              <table>
                <thead>
                  <tr>
                    <th class="desc">입금계좌</th>
                    <th class="id">예금주</th>
                    <!-- <th class="qty">Quantity</th> -->
                    <th class="amt">입금금액</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="item">
                    <td class="desc">우리은행 : 523-16-15-2361</td>
                    <td class="id num">5조</td>
                    <!-- <td class="qty">1</td> -->
                    <td class="amt">₩300,000,000</td>
                  </tr>
                </tbody>
              </table>
            </td> 
          </tr>
          <tr class="totals">
            <td></td>
            <td>
              <table>
                <!-- <tr class="subtotal">
                  <td class="num">Subtotal</td>
                  <td class="num">$100.00</td>
                </tr>
                <tr class="fees">
                  <td class="num">Shipping & Handling</td>
                  <td class="num">$0.00</td>
                </tr>
                <tr class="tax">
                  <td class="num">Tax (7%)</td>
                  <td class="num">$7.00</td>
                </tr> -->
                <tr class="total">
                  <td>Total</td>
                  <td>₩300,000,000</td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
        
        <section class="additional-info">
          <div class="row">
          <!-- <div class="columns">
            <h5>Billing Information</h5>
            <p>Philip Brooks<br>
              134 Madison Ave.<br>
              New York NY 00102<br>
              United States</p>
            </div> -->
            <!-- <div class="columns">
              <h5>Payment Information</h5>
              <p>Credit Card<br>
              Card Type: Visa<br>
              &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; 1234
            </p>
          </div> -->
        </div>
        <header class="row align-center">
            <!-- <a class="button hollow secondary"><i class="ion ion-chevron-left"></i> Go Back to Purchases</a> -->
            &nbsp;&nbsp;<a class="button" href="home.do">
              <!-- <i class="ion ion-ios-printer-outline"></i>  -->
              홈으로</a>
          </header>
      </section>
      </div>
    </section>
  </div>
</main>
</div>
</div>


<%@ include file="../inc/footer.jsp" %>