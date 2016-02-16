 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>총장실</title>
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
				<img src="<%=context%>/semyungdi/images/presidents_lee_150409.png"></img>	
			</div>
        </div>
		<div  class="greeting_text">
				<br/>
				<p class="greeting-top">'세명 100년의 대장정' 을 위한 도전, 창의, 혁신 그리고 참여<p><br/><br/>
				<p class="greeting-mid">우리 세명대학교 홈페이지를 찾아주신 데 대하여 세명 가족을 대표해 총장으로서 깊은 감사의 말씀을 드립니다.</p><br/><br/>
				
				<p class="greeting-foot">우리 세명대학교는 민송 권영우 박사께서 1991년 위세광명의 건학 이념으로 설립하신 이후 끊임없는 발전을 통해
				명문사학으로 발돋움하고 있습니다.</br></br>
				그러나 세명대학교 앞에는 많은 과제들이 놓여있습니다. 도전과 혁신을 멈추지 말아야 합니다. 인생의 일모작, 이모작,
				삼모작에 잘 적응할 수 있는 탄탄한 기본을 가르치는 대학, 기업과 지역이 필요로 하는 실용적 전문지식을 가진 인재를
				양성하는 대학, 국제경쟁에 앞서가는 글로벌한 인재를 배출하는 대학으로 도약하여야 합니다.</br></br>
				혁신을 통해 세명인은 자유, 정의, 진리를 추구함과 동시에 자신을 사랑하고 존중하며 지역과 국가에 봉사하고
				세계평화와 발전에 이바지하는 문화지식인으로 거듭 나야 할 것입니다.</p></br></br>
		</div>
	</div>

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>