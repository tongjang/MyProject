
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

<title>교육과정</title>
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
			<p>
				※ PDF 파일을 보기 위해서는<strong>ADOBE READER</strong>가 설치되어 있어야 합니다.
			</p>
			<div class="curriculum01">
			<table summary="년도별 학사안내 바로가기">
				<colgroup>
					<col style="width: 80%">
					<col style="width: 20%">
				</colgroup>
				<tbody>

					<tr>
						<th scope="row" class="tbt">2015학년도 교육과정</th>
						<td class="tbt">
							<a class="btn_type" href="http://www.semyung.ac.kr/files/down/curriculum/2015_ori.pdf" target="_blank" alt="2015학년도 교육과정">
								<span>바로보기</span>
							</a>
						</td>
					</tr>
					<tr>
						<th scope="row" class="tbt">2014학년도 교육과정</th>
						<td class="tbt">
							<a class="btn_type" href="http://www.semyung.ac.kr/files/down/curriculum/educourse_2014.pdf" target="_blank" alt="2015학년도 교육과정">
								<span>바로보기</span>
							</a>
						</td>
					</tr>
					<tr>
						<th class="tbt" scope="row">2013학년도 교육과정</th>
						<td class="tbt">
							<a class="btn_type" href="http://www.semyung.ac.kr/files/down/curriculum/educourse_2013.pdf" target="_blank" alt="2015학년도 교육과정">
								<span>바로보기</span>
							</a>
						</td>
					</tr>
					<tr>
						<th scope="row">2012학년도 교육과정</th>
						<td>
							<a class="btn_type" href="http://www.semyung.ac.kr/files/down/curriculum/educourse_2012.pdf" target="_blank" alt="2015학년도 교육과정">
								<span>바로보기</span>
							</a>
						</td>
					</tr>
					<tr>
						<th scope="row">2011학년도 교육과정</th>
						<td>
							<a class="btn_type" href="http://www.semyung.ac.kr/files/down/curriculum/educourse_2011.pdf" target="_blank" alt="2015학년도 교육과정">
								<span>바로보기</span>
							</a>
						</td>
					</tr>
					<tr>
						<th scope="row">2010학년도 교육과정</th>
						<td>
							<a class="btn_type" href="http://www.semyung.ac.kr/files/down/curriculum/educourse_2010_1.pdf" target="_blank" alt="2015학년도 교육과정">
								<span>바로보기</span>
							</a>
						</td>
					</tr>
					<tr>
						<th scope="row">2009학년도 교육과정</th>
						<td>
							<a class="btn_type" href="http://www.semyung.ac.kr/files/down/curriculum/educourse_2009.pdf" target="_blank" alt="2015학년도 교육과정">
								<span>바로보기</span>
							</a>
						</td>
					</tr>
					<tr>
						<th scope="row">2008학년도 교육과정</th>
						<td>
							<a class="btn_type" href="http://www.semyung.ac.kr/files/down/curriculum/educourse_2008.pdf" target="_blank" alt="2015학년도 교육과정">
								<span>바로보기</span>
							</a>
						</td>
					</tr>
					<tr>
						<th scope="row">2007학년도 교육과정</th>
						<td>
							<a class="btn_type" href="http://www.semyung.ac.kr/files/down/curriculum/educourse_2007.pdf" target="_blank" alt="2015학년도 교육과정">
								<span>바로보기</span>
							</a>
						</td>
					</tr>
					<tr>
						<th scope="row">2006학년도 교육과정</th>
						<td>
							<a class="btn_type" href="http://www.semyung.ac.kr/files/down/curriculum/educourse_2006.pdf" target="_blank" alt="2015학년도 교육과정">
								<span>바로보기</span>
							</a>
						</td>
					</tr>
					<tr>
						<th class="tbb" scope="row">2005학년도 교육과정</th>
						<td>
							<a class="btn_type" href="http://www.semyung.ac.kr/files/down/curriculum/educourse_2005.pdf" target="_blank" alt="2015학년도 교육과정">
								<span>바로보기</span>
							</a>
						</td>
					</tr>
				</tbody>
			</table>
			</div>
		</div>
	</div>

	<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>