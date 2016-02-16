 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>통학버스</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="imagetoolbar" content="no"> 
<meta name="viewport" content="width=device-width; initial-scale=1.0; user-scalable=yes, target-densitydpi=medium-dpi">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="apple-touch-icon-precomposed" href="apple-touch-icon.png">
<link rel="stylesheet" type="text/css" href="<%=context%>/semyungdi/css/mcommon.css" />
<script type="text/javascript" src="<%=context%>/semyungdi/js/iphone.js"></script>
<script type="text/javascript" src="<%=context%>/semyungdi/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=context%>/semyungdi/js/common.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<jsp:include page="/semyungdi/header.jsp"></jsp:include>
	
      <div class="ui-box">
		<div  class="fund" style="margin-top: 10px;">
			<h4>운행안내</h4>
				<!-- <a class="btn_style2 " href="http://www.semyung.ac.kr/dept/health_center/">
					<span>통학버스 출발 장소</span>
				</a> -->
			<div class="greeting_img" align="center">
				<img src="<%=context%>/semyungdi/images/bus1.png"/>	
	        </div>
			<p style="margin-top: 5px;font-size:11px;">
				통학버스를 이용하는 학생들의 부담을 줄이고자 요금의 27% 정도를 학교에서 지원하여 서울역 ↔ 천안역간 전철요금보다 저렴하게 이용 할 수 있도록 하고 있습니다.<br/>
				하교시 잠실하차를 제외한 야탑, 구리, 수원, 안양, 죽전, 용인, 이천, 여주, 원주, 충주지역은 위 운행안내 시간표의 안내된 막차가 운영되오니위 지역들은 반드시 막차를 이용하시어 해당지역으로 귀가하시기 바랍니다.
			</p>
			<br/><br/>
			
			<h5>운행일자 : 2015년 8월 31일부터 운행. 주5일(월~금)</h5><br/>
			<h5>통학증 발급신청</h5>
			<p style="margin-top:5px;">
				· 기 간 : 2015년 8월 31일 ~ 9월 7일(10:00~17:00)
				· 장 소 : 본교 학생회관 2층 학생처
				· 준비물 : 증명사진 1매, 통학요금(8월 31일 ~ 9월 25일, 20일간 승차요금 준비)
				· 문의처
			</p><br/>
			<div class="greeting_img" align="center">
				<img src="<%=context%>/semyungdi/images/bus2.jpg"/>	
	        </div><br/>
	        <h5>유의사항</h5>
	        <p style="margin-top:5px;">
				· 이용 인원이 20명 미만일 경우 운행이 중단됩니다.<br/>
				· 통학버스 운행 사항이 변경될 수 있으니 유의하시기 바랍니다.<br/>
				· 음주시에는 통학버스를 이용할 수 없습니다.<br/>
			</p><br/><br/>
			
			<h4>통학증 발급 안내</h4>
			<h5>발급대상</h5>
				· 3일권 : 4학년만 해당<br/>
				· 5일권 : 전 학년 해당<br/>
				
			<h5>지역별 요금</h5>
			<div class="greeting_img" align="center">
				<img src="<%=context%>/semyungdi/images/bus3.jpg"/>	
	        </div><br/><br/>
	        
	        <h4>직통시외버스 운행안내 (경기고속, 대원고속)</h4>
	        <h5>시간표</h5>
	        <div class="greeting_img" align="center">
				<img src="<%=context%>/semyungdi/images/bus4.jpg"/>	
	        </div><br/>
	        <h5>요금 : 7,700원(본교 학생증 확인, 정상가격은 11,000원)</h5>
	        <h5>매표 : 동서울터미널, 학생회관 CU (구 패밀리마트)</h5>
		
		</div>
	</div>

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>