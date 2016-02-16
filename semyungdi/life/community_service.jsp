 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>학생사회봉사</title>
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
      <div class="fund">
			<h4>세명대학교 학생 사회봉사활동</h4>
	  </div>
		<div class="table_style2">
			<table>
				<tbody>
					<tr>
						<th scope="row" class="back_fff" width="80px;">목적</th>
						<td class="TL">우리대학교는 진리, 창의와 함께 ‘봉사’를 교훈으로 하고 있으며, 3대 교육목표의 하나로 ‘인성교육’을 설정하여 사회에 대한 봉사와 협력정신을 갖춘 전인적 인간육성에 노력하고 있으며, 이러한 목표 실현의 일환으로 다양한 봉사활동을 계획하고 있음.</td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">시기</th>
						<td class="TL">연중</td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">활동 영역</th>
						<td class="TL">· 사회복지 봉사활동(종합자원봉사센터, 복지관, 요양원 등)<br/>
						· 공공기관(시청, 동사무소, 보건소 등 관공서)<br/>
						· 농촌봉사활동(인근 농가지역 일손돕기 등)<br/>
						· 의료봉사(의료혜택이 부족한 인근 지역 의료봉사)<br/>
						· 해외봉사(본교 자매결연을 맺은 외국대학과 연계하여 실시)<br/></td>
						
					</tr>
					<tr>
						<th scope="row" class="back_fff">봉사활동 지원</th>
						<td class="TL">· 학부(과) 단체 30명이상 봉사활동-차량 및 중식제공<br/>· 교내 장학금 신청(모범장학금, 위세광명장학금 등)<br/> </td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="fund">
			<h4>의료봉사</h4>
	    </div>
		<div class="festival" style="margin-bottom:40px;">
			<img src="<%=context%>/semyungdi/images/img_ community01.jpg" alt="축제1"/>
			<img src="<%=context%>/semyungdi/images/img_ community02.jpg" alt="축제2"/>
		</div>
		
		<div class="fund">
			<h4>농촌봉사</h4>
	 	</div>
		<div class="festival">
			<img src="<%=context%>/semyungdi/images/img_ community03.jpg" alt="축제1"/>
			<img src="<%=context%>/semyungdi/images/img_ community04.jpg" alt="축제2"/>
		</div>
		<div class="festival">
			<img src="<%=context%>/semyungdi/images/img_ community05.jpg" alt="축제1"/>
			<img src="<%=context%>/semyungdi/images/img_ community06.jpg" alt="축제2"/>
		</div>
		<div class="festival">
			<img src="<%=context%>/semyungdi/images/img_ community07.jpg" alt="축제1"/>
			<img src="<%=context%>/semyungdi/images/img_ community08.jpg" alt="축제2"/>
		</div>
		
	</div>

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>