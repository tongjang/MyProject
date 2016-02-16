 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>캠퍼스 안내</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="imagetoolbar" content="no"> 
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="apple-touch-icon-precomposed" href="apple-touch-icon.png">
<link rel="stylesheet" type="text/css" href="/semyungdi/html/mcommon.css" />
<script type="text/javascript" src="<%=context%>/semyungdi/js/iphone.js"></script>
<script type="text/javascript" src="<%=context%>/semyungdi/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=context%>/semyungdi/js/common.js"></script>
<script type="text/javascript">

</script>
</head>
<body>



	
		<jsp:include page="/semyungdi/header.jsp"></jsp:include>
<!-- 	
      <div class="tag_mag campus-menu">
			<a href="campus3.jsp" class="on">캠퍼스 투어</a>
			<a href="campus1.jsp">오시는 길</a>
			<a href="campus2.jsp">캠퍼스 풍경</a>
	</div> -->
      <div class="ui-box">

		<div class="greeting_img" align="center">
			<iframe src="http://www.semyung.ac.kr/tour.html" width="100%" height="900" frameborder="0" border="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
        </div>
	</div>
    

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>

	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
    
</div>
</div>
</body>
</html>