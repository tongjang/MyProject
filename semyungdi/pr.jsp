 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>홍보영상</title>
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
		<iframe width="100%" height="315" src="https://www.youtube.com/embed/SSLy34_XNIs" frameborder="0" allowfullscreen></iframe>
	</div>
      <div class="ui-box">
		<iframe width="100%" height="315" src="https://www.youtube.com/embed/q178AjcFhsk" frameborder="0" allowfullscreen></iframe>
	</div>
    

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>

	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>