 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>세명2025</title>
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
			<a href="#;" id="aa" class="smu-list on" onclick="tapClickFunction('aa');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">세명2025의 기본방향</a>
			<a href="#;" id="bb" class="smu-list" onclick="tapClickFunction('bb');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">비전 및 전략설정과정</a>
			<a href="#;" id="cc" class="smu-list" onclick="tapClickFunction('cc');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">세명비전 체계도</a>
			<a href="#;" id="dd" class="smu-list" onclick="tapClickFunction('dd');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">특성화비전 체계도</a>
			<a href="#;" id="ee" class="smu-list" onclick="tapClickFunction('ee');">교양교육비전체계도</a>
			<a href="#;" id="ff" class="smu-list" onclick="tapClickFunction('ff');">세명비전 추진단계</a>
		</div>
	
      <div class="ui-box">
		<div class="greeting_img" align="center" id="imgaa">
			<img src="<%=context%>/semyungdi/images/bg_vision01_new_1.jpg"></img>	
        </div>
        <div class="greeting_img" align="center" id="imgbb">
			<img src="<%=context%>/semyungdi/images/bg_vision02_new_1.jpg"></img>	
        </div>
        <div class="greeting_img" align="center" id="imgcc">
			<img src="<%=context%>/semyungdi/images/bg_vision03_1.jpg"></img>	
        </div>
        <div class="greeting_img" align="center" id="imgdd">
			<img src="<%=context%>/semyungdi/images/bg_vision04_1.jpg"></img>	
        </div>
        <div class="greeting_img" align="center" id="imgee">
			<img src="<%=context%>/semyungdi/images/bg_vision05.jpg"></img>	
        </div>
        <div class="greeting_img" align="center" id="imgff">
			<img src="<%=context%>/semyungdi/images/bg_vision06.jpg"></img>	
        </div>
       </div>
    

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>