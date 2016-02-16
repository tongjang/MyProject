 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>세명교육</title>
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
$(document).ready(function(){
	$('.greeting_img').hide();
	$('#imgaa').show();
});

function tapClickFunction(id){
	$('.smu-list').removeClass('on');
	$('#'+id).addClass('on');
	
	$('.greeting_img').hide();
	$('#img'+id).show();
	return false;
}
</script>
</head>
<body>
		<jsp:include page="/semyungdi/header.jsp"></jsp:include>
		<div class="smu_tab_link">
			<a href="#;" id="aa" class="smu-list on" onclick="tapClickFunction('aa');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">대학이념</a>
			<a href="#;" id="bb" class="smu-list" onclick="tapClickFunction('bb');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">세명인재상</a>
			<a href="#;" id="cc" class="smu-list" onclick="tapClickFunction('cc');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">CHARM 미드필더</a>
		</div>
      <div class="ui-box">
		<div class="greeting_img" align="center" id="imgaa">
			<img src="<%=context%>/semyungdi/images/img_ideology.gif"></img>	
        </div>
        <div class="greeting_img" align="center" id="imgbb">
			<img src="<%=context%>/semyungdi/images/img_talent.png"></img>	
        </div>
        <div class="greeting_img" align="center" id="imgcc">
			<img src="<%=context%>/semyungdi/images/charm.jpg"></img>	
        </div>
       </div>

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>