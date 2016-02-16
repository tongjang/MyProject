 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>대학법인</title>
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
	
	<div class="tag_mag campus-menu2">
			<a href="founder.jsp">설립자발자취</a>
			<a href="chairman.jsp"  class="on">이사장인사말</a>
		</div>
      <div class="ui-box">
		<div class="greeting_img" align="center">
        	<div>
				<img src="<%=context%>/semyungdi/images/saram02.jpg"></img>	
			</div>
        </div>
		<div  class="greeting_text">
				<br/>
				<p class="greeting-top">세상을 발게 비추는 인재양성<p><br/><br/>
				<p class="greeting-mid">세명대학교 홈페이지를 찾아주신 여러분 진심으로 환영합니다.</p><br/><br/>
				
				<p class="greeting-foot">우리 세명대학교는 홍익인간을 바탕으로 
					진리∙창의∙봉사 정신을 바탕으로 전인교육을 통해 
					국가와 지역사회 발전에 이바지 할 유능한 인재들을 양성하기 위하여 
					1991년에 설립된 대학교입니다. <br/><br/>
					
					우리 세명대학교는 국가와 사회가 요청하는 유능한 인재들을 배출하기 위하여 
					전공 심화교육. 창의적 실용교육. 인성교육을 교육의 목표로 하여 
					우수한 교수진과 시대가 요구하는 교육과정, 그리고 
					철저한 학사관리를 통하여 수준 높은 교육을 실시하고있습니다.<br/><br/>
					
					세명대학교 유지법인인 대원교육재단은 고등학교 및 대학발전의 시대적 사명을 깊이 인식하고,
					세명인들이 21세기 국가와 인류사회 발전에 기여할 수 있는 인재로서 자랄 수 있도록 적극 지원하고 후원할 것입니다.
				</p>
		</div>
	</div>

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>