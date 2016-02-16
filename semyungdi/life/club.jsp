 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>축제</title>
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
	      <div class="fund" style="margin-bottom: 40px;">
				<h4>동아리</h4>
				<p>대학이란 학문연구 및 인격도야에 중점을 두고 있는 것은 물론이지만, 자신의 취미와 적성에 맞는 동아리를 선택하여 전공분야 이외의 또 다른 분야를 접하고,
				 새로운 세계를 맛보고 느낄 수 있는 기회가 있어 더욱 보람찬 대학생활을 할 수 있다.<br/><br/>
				 
				 · 동아리현황<br/>
				 - 봉사, 예술, 종교, 취미교양, 종교, 학술, 체육분과 등 6개 분과에 총 35개 동아리
				 </p>
		  </div>
		  <div class="fund">
		  	<h4>동아리 목록</h4>
		  </div>
		  <div class="greeting_img" align="center">
			<img src="<%=context%>/semyungdi/images/club.jpg"></img>	
          </div>
	  </div>

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>