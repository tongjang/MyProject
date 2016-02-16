
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

<title>성적관련</title>
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
$(document).ready(function() {
	$('.ui-box').hide();
	$('#uiaa').show();
});

function tapClickFunction(id) {
	$('.smu-list').removeClass('on');
	$('#' + id).addClass('on');

	$('.ui-box').hide();
	$('#ui' + id).show();
	return false;
}
</script>
</head>
<body>
	<jsp:include page="/semyungdi/header.jsp"></jsp:include>

	<div class="smu_tab_link">
		<a href="#;" id="aa" class="smu-list on"
			onclick="tapClickFunction('aa');"
			style="width: 49%; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">성적열람 및 정정,성적인성
			</a>
		<a href="#;" id="bb" class="smu-list"
			onclick="tapClickFunction('bb');"
			style="width: 49%; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">유급
			</a>
		<a href="#;" id="cc" class="smu-list"
			onclick="tapClickFunction('cc');"
			style="width: 49%; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">학사경고
			</a>
		<a href="#;" id="dd" class="smu-list"
			onclick="tapClickFunction('dd');"
			style="width: 49%; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">학년 · 학기 재이수
			</a>
	</div>
			
	<div class="ui-box" id="uiaa">
		<div class="fund">
			<h4>성적열람 및 정정</h4>
			<h5>성적이상유무 확인 (학생 → 담당교원)</h5>
			<p>기말고사 이후 일정기간 동안 인터넷으로 성적열람이 가능하며 성적의 이상유무를 확인<br/>
			· 열람방법 : 본교 포탈시스템 접속 (Portal System)하여 당해 학기 성적 열람<br/>
			· 열람 한 성적에 대하여 이의가 있을 경우 <br/>
			· 수강 교과목 담당교원에게 성적평가 이상 유무에 대한 확인 절차 (과정)를 거쳐야 함<br/>
			· 수강 교과목 담당교원에 의한 성적평가 이상 유무가 확인된 경우 <br/>
			· 담당교원이 포탈시스템에 접속하여 정정처리</p>
			
			<h5>성적에 대한 이의 발생시 성적 정정 기간내에 처리하여야 함</h5>
			<p>(기간 이외에 정정불가)</p>
			
			<h4>수업일수 11주 초과하여 입대휴학자의 성적인정</h4>
			<p><strong>수업일수 11주 이상을 출석한 입대휴학자의 성적은 중간시험과 수시 시험,
			 출석 및 과제물 성적으로 당해 학기의 성적(학기)은 인정된다.<br/><br/>
			&lt;관련규정 학사운영규정 제18조(휴학자의 성적처리), 제62조(휴학자의 성적인정)&gt;</strong><br/><br/>
			학사운영규정 제18조(휴학자의 성적처리)에 의거하여 해당 학년도 학기 성적이 인정(평가)됩니다.<br/>
			입대 휴학원 제출 시기에 반드시 수강하고 있는 해당 교과목 담당 교원에게 성적평가에 대한 지도를 받으시기 바랍니다.<br/>
			만약, 수강교과목 담당 교원에게 성적평가에 대한 지도를 받지 않았을 경우 당해 학기 성적평가에 불이익을 받을 수 <br/>
			있으므로 반드시 입대 휴학원 제출 시기에 담당 교원에게 입대휴학사실을 말씀을 드리고, 지도를 받아야 합니다.<br/>
			수업일수 12주 이후 입대휴학을 하는 경우라도 수업일수 부족(결석 등), 성적불량 등의 사유로 성적 평가 시 과락(F학점)에 해당 될 때에는 해당 교과목의 성적이 F학점으로 평가될 수 있습니다.
			</p>
		</div>
	</div>

	<div class="ui-box" id="uibb">
		<div class="fund">
			<h4>유급 대상 학과</h4>
			<p>한의과대학 (한의예과, 한의학과)</p>
			
			<h4>유급 대상자</h4>
			<p>당해학기 평균 평점이 2.00 미만 또는 학과기초교양(전공기초) 및 
			전공[학부교양, 학부기초(계열교양 포함)] 교과목 중 1과목 이상 
			과락이 발생한 자</p>
			
			<h4>유급자는 해당학기 이수 전과목이 무효처리되어,해당 과정을 재이수 해야하고, 유급 해당학기의 등록금은 무효(소멸)가 된다</h4>
		</div>
	</div>

	<div class="ui-box" id="uicc">
		<div class="fund">
			<h4>학사경고 기준</h4>
			<p>당해 학기 성적의 평균평점이 1.50이하 또는 F학점이 3과목 이상인자</p>
			
			<h4>학사경고를 연속 3회 또는 통산 4회를 받은 자는 학사제적처리 한다.</h4>
			<p>※ 다만 장애로 인하여 장애지원센터(<a href="tel:043-649-7119" class="telephone">☎ 043-649-7119</a>) 의 요청에 의한 경우는 제외</p>
			
			<h4>학사경고자의 상담프로그램</h4>
			<p>학사경고자는 지정된 상담 또는 교육 프로그램을 이수하여야 함<br/>
			1. 1회 학사경고자 : 지도교수 심층상담<br/>
			2. 2회 이상 학사경고자 : 학생생활연구소 또는 교수학습개발센터 시행 상담, 교육<br/>
			※ 2회 이상 학사경고자가 지정된 교육을 이행하지 않을 경우 수강신청 학점을 17학점으로 제한</p>
		</div>
	</div>

	<div class="ui-box" id="uidd">
		<div class="fund">
			<h4>대상자</h4>
			<p>이미 이수한 학년 또는 학기를 다시 이수하고자 하는 자는 학년, 학기 재이수를 신청할 수 있다.</p>
			
			<h4>신청기간</h4>
			<p>매 학기 복학시점 (6월말, 12월말 학사일정 참조)</p>
			
			<h4>신청방법 : 방문접수만 가능</h4>
			<p>학과사무실을 방문하여 재이수 신청서를 작성 후 성적증명서와 함께 교무연구처 학사관리팀으로 제출</p>

			<h4>제한사항</h4>
			<p>· 해당 학년 또는 학기에 여석이 있을 경우에 한하여 정원을 초과하지 않는 범위 내에서 승인<br/>
			· 재이수 학년 또는 학기는 해당 학년, 학기의 등록금을 다시 납부하고 재등록하여야 함<br/>
			· 재이수가 승인된 학년 또는 학기의 성적은 모두 취소처리함<br/>
			· 재이수가 승인된 학기의 학점(성적)은 어떠한 경우라도 복원될 수 없습니다.</p>
		</div>
	</div>

	<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>