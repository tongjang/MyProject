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

<title>학사안내</title>
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
	<div class="ui-box">
		<div class="fund" style="margin: 20px 0 0 0;">
			<h4>학사안내</h4>

			<div class="sitemap">
				<dl class="stmap_01">
					<dt>
						<span style="background-image: none;">
						<a href="<%=context%>/semyungdi/schoolinfo/info/edu.jsp">교직과정안내</a>
						</span>
					</dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt>
						<span style="background-image: none;">
						<a href="<%=context%>/semyungdi/schoolinfo/info/class.jsp"">수강관련</a>
						</span>
					</dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt>
						<span style="background-image: none;">
						<a href="<%=context%>/semyungdi/schoolinfo/info/attendance.jsp">출석·시험</a>
						</span>
					</dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt>
						<span style="background-image: none;">
						<a href="<%=context%>/semyungdi/schoolinfo/info/grade.jsp">성적관련</a>
						</span>
					</dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt>
					<span style="background-image: none;">
						<a href="<%=context%>/semyungdi/schoolinfo/info/special.jsp">특별학점</a>
						</span>
					</dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt>
					<span style="background-image: none;">
						<a href="<%=context%>/semyungdi/schoolinfo/info/change.jsp">전과·복수전공</a>
					</span>
					</dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt>
					<span style="background-image: none;">
						<a href="<%=context%>/semyungdi/schoolinfo/info/return.jsp">복학·휴학</a>
					</span>
					</dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt>
					<span style="background-image: none;">
						<a href="<%=context%>/semyungdi/schoolinfo/info/quit.jsp">자퇴·재적</a>
						</span>
					</dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt>
						<span style="background-image: none;">
						<a href="<%=context%>/semyungdi/schoolinfo/info/readmission.jsp">재입학
						</a>
						</span>
					</dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt>
					<span style="background-image: none;">
						<a href="<%=context%>/semyungdi/schoolinfo/info/finish.jsp">졸업</a>
						</span>
					</dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt>
						<span style="background-image: none;">
						<a href="<%=context%>/semyungdi/schoolinfo/info/correction.jsp">학적부사항정정</a>
						</span>
					</dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt>
						<span style="background-image: none;">
						<a href="<%=context%>/semyungdi/schoolinfo/info/curriculum.jsp">교육과정
						</a>
						</span>
					</dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt>
					<span style="background-image: none;">
						<a href="<%=context%>/semyungdi/schoolinfo/info/midfielder.jsp">
						미드필더인증제</a>
					</span>
					</dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt>
						<span style="background-image: none;">
						<a href="http://www.semyung.ac.kr/schoolinfo.smu?action=rules">학칙·규정</a>
						</span>
					</dt>
				</dl>
			</div>
		</div>
	</div>

	<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>