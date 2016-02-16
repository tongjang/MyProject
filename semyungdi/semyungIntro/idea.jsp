 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>대학소개</title>
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
        	<div>
				<img src="<%=context%>/semyungdi/images/img_ideaVisual01.jpg"></img>	
			</div>
        </div>
		<div  class="greeting_text">
				<br/>
				<p class="greeting-top" align="center">세상을 밝히는 우수한 인재<p><br/>
				<p class="greeting-foot">
				위세광명은 우수한 인재를 양성하여 세상을 밝히는 것을 의미한다.<br/>
				이는 세상에 빛이 되는 인재를 양성하여 인류를 크게 유익케 한다는 뜻이기에 
				대한민국의 교육이념인 홍익인간과 그 뜻을 같이하며, 인류애와 박애정신을
				근본으로 하여 자유와 평등 그리고 평화를 아우르는 개념이다.<br/>
				이는 또한 학생을 교육하고 진리를 탐구하여 인류에 봉사하는 
				대학 본연의 임무와도 일맥상통한다.</p></br></br>
		</div>
	</div>
    

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>