 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>학사일정</title>
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
$(document).ready(function(){
	$("#st").change(function(event){
		var hash = "#sub"+this.value;
		event.preventDefault();
        $('html,body').animate({scrollTop:$(hash).offset().top-20}, 500);
	});
});
</script>
</head>
<body>
		<jsp:include page="/semyungdi/header.jsp"></jsp:include>
		
      <div class="ui-box">
		<div class="greeting_img" align="center" style="margin-bottom:30px;margin-top:10px;">
			<div class="select_div">
				<select id="st" title="선택">
				<option value="">년 월을 선택해주세요.</option>
				<option value="3">2016년 3월</option>
				<option value="4">2016년 4월</option>
				<option value="5">2016년 5월</option>
				<option value="6">2016년 6월</option>
				<option value="8">2016년 8월</option>
				<option value="9">2016년 9월</option>
				<option value="10">2016년 10월</option>
				<option value="11">2016년 11월</option>
				<option value="12">2016년 12월</option>
				<option value="13">2017년 1월</option>
				<option value="14">2017년 2월</option>
				</select>
			</div>
			<hr style="width:98%;"/>
			<h4 id="sub3" style="margin-top:20px;">2016년 3월</h4>
			<img src="<%=context%>/semyungdi/images/3mon.png"></img>	
        </div>
		<div class="greeting_img" align="center" style="margin-bottom:30px;">
			<h4 id="sub4">2016년 4월</h4>
			<img src="<%=context%>/semyungdi/images/4mon.png"></img>	
        </div>
		<div class="greeting_img" align="center" style="margin-bottom:30px;">
			<h4 id="sub5">2016년 5월</h4>
			<img src="<%=context%>/semyungdi/images/5mon.png"></img>	
        </div>
		<div class="greeting_img" align="center" style="margin-bottom:30px;">
			<h4 id="sub6">2016년 6월</h4>
			<img src="<%=context%>/semyungdi/images/6mon.png"></img>	
        </div>
		<div class="greeting_img" align="center" style="margin-bottom:30px;">
			<h4 id="sub8">2016년 8월</h4>
			<img src="<%=context%>/semyungdi/images/8mon.png"></img>	
        </div>
		<div class="greeting_img" align="center" style="margin-bottom:30px;">
			<h4 id="sub9">2016년 9월</h4>
			<img src="<%=context%>/semyungdi/images/9mon.png"></img>	
        </div>
		<div class="greeting_img" align="center" style="margin-bottom:30px;">
			<h4 id="sub10">2016년 10월</h4>
			<img src="<%=context%>/semyungdi/images/10mon.png"></img>	
        </div>
		<div class="greeting_img" align="center" style="margin-bottom:30px;">
			<h4 id="sub11">2016년 11월</h4>
			<img src="<%=context%>/semyungdi/images/11mon.png"></img>	
        </div>
		<div class="greeting_img" align="center" style="margin-bottom:30px;">
			<h4 id="sub12">2016년 12월</h4>
			<img src="<%=context%>/semyungdi/images/12mon.png"></img>	
        </div>
		<div class="greeting_img" align="center" style="margin-bottom:30px;">
			<h4 id="sub13">2017년 1월</h4>
			<img src="<%=context%>/semyungdi/images/17_1mon.png"></img>	
        </div>
		<div class="greeting_img" align="center" style="margin-bottom:30px;">
			<h4 id="sub14">2017년 2월</h4>
			<img src="<%=context%>/semyungdi/images/17_2mon.png"></img>	
        </div>
	</div>
    
    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>