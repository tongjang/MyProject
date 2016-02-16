 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>축제</title>
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
      <div class="fund">
			<h4>청룡체전</h4>
	  </div>
		<div class="festival">
			<img src="<%=context%>/semyungdi/images/img_festival01.jpg" alt="축제1"/>
			<img src="<%=context%>/semyungdi/images/img_festival02.jpg" alt="축제2"/>
		</div>
		<div class="table_style2">
			<table>
				<thead>
					<tr>
						<th scope="col">구분</th>
						<th scope="col">대학</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row" class="back_fff">시기</th>
						<td class="TL">· 매년 5월</td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">체전종목</th>
						<td class="TL">· 구기종목 : 축구, 농구, 족구, 피구, 발야구<br/>· 기타종목 : 400m계주, 줄다리기, 마라톤 </td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">먹거리행사</th>
						<td class="TL">· 각 학과 참여<br/>· 장소 : 교수ㆍ학생회관 광장 </td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">전야제행사</th>
						<td class="TL">· 패션디자인학과 패션쇼<br/>· 동아리공연<br/>· 초청가수공연 </td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">학과 및 동아리행사</th>
						<td class="TL">· 학과 행사 - 각 학과 이벤트<br/>· 동아리공연<br/>· 동아리행사 - 무대 공연, 각 개별 동아리 주관의 게임대회, 작품전시회등을 개최 </td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="fund">
			<h4>청룡축전</h4>
	  </div>
		<div class="festival">
			<img src="<%=context%>/semyungdi/images/img_festival01.jpg" alt="축제1"/>
			<img src="<%=context%>/semyungdi/images/img_festival02.jpg" alt="축제2"/>
		</div>
		<div class="table_style2">
			<table>
				<thead>
					<tr>
						<th scope="col">구분</th>
						<th scope="col">대학</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row" class="back_fff">시기</th>
						<td class="TL">· 매년 10월</td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">체전종목</th>
						<td class="TL">· 전야제 - 동아리 및 초청연예인 공연<br/>· 세명가요제. 본교 재학생 참여<br/>· 동아리 공연 및 초청가수 공연 </td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">먹거리행사</th>
						<td class="TL">· 각 인가동아리 참여 </td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">전야제행사</th>
						<td class="TL">· 각 학과별 졸업작품전, 전시회, 학술 대회등을 개최 </td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">학과 및 동아리행사</th>
						<td class="TL">· 작품전시회 및 정기공연 등을 개최 </td>
					</tr>
				</tbody>
			</table>
		</div>
		
	</div>

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>