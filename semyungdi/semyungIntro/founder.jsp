 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>학교법인</title>
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
			<a href="founder.jsp" class="on">설립자발자취</a>
			<a href="chairman.jsp">이사장인사말</a>
			<!-- <a href="founder.jsp">법인소개</a> -->
		</div>
      <div class="ui-box">
		<div class="greeting_img" align="center">
        	<div>
				<img src="<%=context%>/semyungdi/images/bg_founder_01.jpg"></img>	
			</div>
        </div>
		<div class="greeting_text founder-box">
			<br/>
			<p class="greeting-top">인재양성이 국가의 미래<br/>
			세상을 밝게 비추는 인재양성<p><br/>
		</div>
		<div class="founder-box2">
			<ul>
				<li>
					<dl>
						<dt>
							<span class="history-yyyy">2006년.</span>
						</dt>
						<dd>
							民松 권영우박사는 66세의 나이로 별세하였고 2007년에는 대한민국 국민훈장 무궁화장을 추서 받았다.<br/>
지금 그의 유택은 세명 동산에 있다.
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<span class="history-yyyy">1996년.</span>
						</dt>
						<dd>
							세명대학교 부속 제천한방병원과 충주한방병원(2001)을 개원하였고 국제퇴계학회 이사장 역임을 통해 지역 사회에
봉사 하였다.
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<span class="history-yyyy">1991년.</span>
						</dt>
						<dd>
							爲世光明(세상을 밝게 비추는 인재를 양성한다는 뜻)의 건학이념으로 세명대학교(1991)를 비롯하여 세명고,성희여고,
대원과학대학 등을 개교시켰다.
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<span class="history-yyyy">1984년.</span>
						</dt>
						<dd>
							인재양성이 국가의 미래라는 교육철학으로 학교법인 민송학원과 대원교육재단(1987)을 설립하였다.
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<span class="history-yyyy">1981년.</span>
						</dt>
						<dd>
							제11대, 1985년 제12대 국회의원을 역임하면서 국회 건설위원장등의 활동을 통해 지역발전과 국가를 위해 일한 
정계에서 추진력 있는 정치인 이었다.
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<span class="history-yyyy">1972년.</span>
						</dt>
						<dd>
							대원여객㈜을 창립하고 1978년 경기고속을 인수하여 선진형 운수사업을 일군 재계의 모범적인 경영인 이었다.
						</dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt>
							<span class="history-yyyy">1941년.</span>
						</dt>
						<dd>
							경북 안동시 풍천 갈전리에서 태어나 서울 대신고(1960)를 거쳐 명지대 경영학과(1970)를 졸업하였다.
						</dd>
					</dl>
				</li>
			</ul>
		</div>
	</div>
    

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>