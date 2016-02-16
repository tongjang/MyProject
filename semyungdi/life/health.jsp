 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>보건진료소</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="imagetoolbar" content="no"> 
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">
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
		<div class="greeting_img" align="center">
			<img src="<%=context%>/semyungdi/images/img_health01.jpg"/>	
        </div>
		<div  class="fund" style="margin-top: 10px;">
			<h4>보건진료소</h4>
			<p style="margin-top: 5px;">
				보건진료소는 학생과 교직원들의 보건 위생 및 건강유지ㆍ관리를 위한 1차 의료지원 시설로 운영되고 있다.
				 보건진료소는 치료 및 투약이 모두 무료이고, 본교 부속한방병원과 연계를 통해 건강검진 및 일부 진료도 무료로 제공된다.<br/><br/>
				· 위치 : 교수ㆍ학생회관 110호 (우체국 옆)<br/>
			</p>
			<br/>
			<a class="btn_style2" href="http://www.semyung.ac.kr/dept/health_center/">
				<span>바로가기</span>
			</a>
			<br/><br/><br/>
			<h4>진료시간</h4>
			<p style="margin-top: 5px;">
				· [평 일] 하계 :09:00~18:00 / 동계 : 09:00~17:00)<br/>
				· [방학중] 하계 :09:00~15:00 / 동계 : 09:00~17:00<br/>
			</p>	
			<br/><br/>
			
			<h4>보건진료소 주요업무</h4>
			<p style="margin-top: 5px;">
				· 건강상담 : 자신의 건강에 대해 궁금했던 점이나 문제점 상담<br/>
				· 간단한 외상 및 골절에 대한 응급처치 : 찰과상, 염좌, 좌상, 열상, 화상 등<br/>
				· 건응급약 투약 : 감기, 두통, 치통, 복통, 설사, 변비, 소화불량, 식체 등<br/>
				· 진료의 2차·3차기관으로의 알선<br/>
				· 학과나 동아리 MT시 비상 약품 지원<br/>
			</p>
		</div>
	</div>

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>