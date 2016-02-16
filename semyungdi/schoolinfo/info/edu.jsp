
<%@ page language="java" contentType="text/html; charset=utf-8"
	session="false"%>
<%
	String context = request.getContextPath();
%>

<html>
<head>
<script language="javascript">
	sOS = navigator.systemLanguage;
</script>

<title>교직과정안내</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport"
	content="width=device-width; initial-scale=1.0; maximum-scale=1.0; minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="apple-touch-icon-precomposed" href="apple-touch-icon.png">
<link rel="stylesheet" type="text/css"
	href="<%=context%>/semyungdi/css/mcommon.css" />
<script type="text/javascript" src="<%=context%>/semyungdi/js/iphone.js"></script>
<script type="text/javascript"
	src="<%=context%>/semyungdi/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=context%>/semyungdi/js/common.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<jsp:include page="/semyungdi/header.jsp"></jsp:include>

	<div class="ui-box" id="uiaa">
		<div class="fund">
			<h4>교직교육의 목적</h4>
			<p>"교직과정에서는 교사로서 지녀야 할 전문지식과 실천적 기술을 습득하고, 교사로서 가져야 할 전인적 품성, 태도를 습득하기 위해 노력하는 예비 중등교사를 양성한다. 이에 따라 교육의 대상이 되는 인간을 과학적으로 이해할 수 있는 능력을 배양하고, 교육학 이론과 실제를 학습하고 경험하도록 하여, 교육현장에서 교사로서의 소임을 다 할 수 있는, 풍부한 인간성과 전문성을 갖춘 예비 중등교사를 양성하는 것을 교육 목적으로 한다."</p>
			
			<h4>교직과정의 교육목표</h4>
			<p>1. 전공과 교육에 관한 이론적 지식을 기반으로 하여 관련 교육에 대한 총체적인 이해의 실천 능력을 갖춘 전문성이 있는 교사를 양성한다.<br/>
			2. 지속적으로 자신의 전공 영역과 교육 관련 정보에 대해 관심을 가지고, 자신의 전문성을 제고하기 위해 노력하는 학습지향적인 교사를 양성한다.<br/>
			3. 학생들과 건강한 관계를 가지고, 효율적으로 의사소통할 수 있는 품성과 기술을 가진 인간적인 교사를 양성한다.</p>
			
			<h4>교직교육의 특성화 전략</h4>
			<h5>교직과정 학생의 선발 기준의 강화</h5>
			<p>교직과정을 통해서 학생을 교직과정에서 우리가 지향하는 교사로 양성하는 데는 한계가 있다. 따라서 교직과정 학생의 선발에서 학생의 인성과 적성을 감안한 선발이 될 수 있도록 하여야 한다.<br/><br/>
			<span style="color:blue;">· 첫째,</span> 선발의 준거를 다양화한다.<br/>
			<span style="color:blue;">· 둘째,</span> 둘째, 학과 지도교수는 상담활동을 강화한다.<br/>
			<span style="color:blue;">· 셋째,</span> 학과에서는 인성과 적성을 감안하여 대상 학생을 선발한다.</p>

			<h4>전공 기본이수 교과목의 강화</h4>
			<p>전공 기본이수 교과목은 사회와 학문의 변화에 따라 교과교육의 변화를 반영할 수 있도록 하여야 한다.<br/><br/>
			<span style="color:blue;">· 첫째,</span> 단위 학과에서는 학문과 사회의 변동에 따라 기본이수 교과목과 그 내용에 있어서 적절성을 제고하도록 노력한다.<br/>
			<span style="color:blue;">· 둘째,</span> 우수한 현장교사의 참여를 확대한다.</p>

			<h4>현장 학교와의 연계 강화</h4>
			<p>수업실습과 교직과정의 현장 적응력을 제고하기 위해 현장학교와의 연계를 강화한다.<br/><br/>
			<span style="color:blue;">· 첫째,</span> 학교 주관의 교사 대상 프로그램을 활성화한다. 교육대학원, 평생교육원의 프로그램, 각종 학술행사와 체육행사에서 지역교사들이 참여할 수 있는 프로그램을 개발하고, 활성화시킨다.<br/>
			<span style="color:blue;">· 둘째,</span> 학교 방문 기회를 늘리고, 교사들과의 유대를 강화한다.<br/>
			<span style="color:blue;">· 셋째,</span> 우수한 현장교사를 겸임교수 및 강사로 활용한다. 넷째, 장기적으로 본교가 교사교육의 중심이 되도록 노력한다.</p>

			<h4>시설의 확충</h4>
			<p>교직과 관련된 수업을 원활하게 하기 위하여 수업을 위한 시설의 확충이 이루어져야 한다.<br/><br/>
			<span style="color:blue;">· 첫째,</span> 강의실의 시청각 기자재를 확충한다.<br/>
			<span style="color:blue;">· 둘째,</span> 직 수업을 위한 멀티미디어를 갖춘 강의실을 확충한다.</p>
		</div>
	</div>

	<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>