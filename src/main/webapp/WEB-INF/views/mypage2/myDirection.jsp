<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../inc/header.jsp" %>

<!-- Personal CSS -->
<link rel="stylesheet" href="${ctx}/resources/css/myPageList.css">
<link rel="stylesheet" href="${ctx}/resources/css/myWishList.css">

<script type="text/javascript" src="${ctx}/resources/js/mdb.min.js"></script>

<style>
    .accordion-item {margin-bottom: 50px;}
	.wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #111;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap; color: #111;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #111;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>

<body style="background-color: #111">
    <div class="card" style="background-color:#111; color:#fff;">
        <div class="card-body">
            <div class="container p-3 my-5 bg-secondary text-white">
                <h1>지점안내</h1>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingOne">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                    5조 프로젝트 서구점
                  </button>
                </h2>
                <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body"><code>Address : ${Address} Tel : ${tel} </code> </div>
                  </div>    
              </div>
              <div id="map" style="width: 100%; height:450px;"></div>

              <!-- <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingOne">
                      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                        5조 프로젝트 유성구점
                      </button>
                    </h2>
                    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body"><code>Address : ${Address} Tel : ${tel} </code> </div>
                      </div>    
                </div>
                <div id="map" style="width: 100%;;height:450px;"></div> -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=976e581c8a8997c757036cfde1f9fa50"></script>
<script>
var mapContainer1 = document.getElementById('map'), // 지도의 중심좌표
    mapOption1 = { 
        center: new kakao.maps.LatLng(36.35019470793524, 127.3823431147237), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    }; 

var map1 = new kakao.maps.Map(mapContainer1, mapOption1); // 지도를 생성합니다
var map2 = new kakao.maps.Map(mapContainer1, mapOption1);
// 지도에 마커를 표시합니다 
var marker = new kakao.maps.Marker({
    map1: map1, 
    position: new kakao.maps.LatLng(36.35019470793524, 127.3823431147237)
});

// 커스텀 오버레이에 표시할 컨텐츠 입니다
// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
// 별도의 이벤트 메소드를 제공하지 않습니다 
var content1 = '<div class="wrap">' + 
            '    <div class="info">' + 
            '        <div class="title">' + 
            '            5조 프로젝트 서구지점' + 
            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
            '        </div>' + 
            '        <div class="body">' + 
            '            <div class="img">' +
            '                <img src="file:///C:/study-spring/X-ProjectCars/src/main/webapp/resources/image/logo/임시로고.png" width="73" height="70">' +
            '           </div>' + 
            '            <div class="desc">' + 
            '                <div class="ellipsis">대전 서구 둔산동 1178</div>' + 
            '                <div class="jibun ellipsis">(우) 63309 (지번) 영평동 2181</div>' + 
            '                <div><a href="https://mcea.co.kr/" target="_blank" class="link">홈페이지</a></div>' + 
            '            </div>' + 
            '        </div>' + 
            '    </div>' +    
            '</div>';

// 마커 위에 커스텀오버레이를 표시합니다
// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
var overlay = new kakao.maps.CustomOverlay({
    content: content1,
    map: map1,
    position: marker.getPosition()       
});

// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker, 'click', function() {
    overlay.setMap(map1);
});

// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function closeOverlay() {
    overlay.setMap(null);     
}
</script>
</body>

<%@ include file="../inc/footer.jsp" %>
