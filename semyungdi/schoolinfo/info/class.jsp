
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

<title>수강관련</title>
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
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">수강신청</a>
		<a href="#;" id="bb" class="smu-list"
			onclick="tapClickFunction('bb');"
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">동일과목전공인정
		</a> <a href="#;" id="cc" class="smu-list"
			onclick="tapClickFunction('cc');"
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">재이수
			약자표시</a>
		<a href="#;" id="dd" class="smu-list"
			onclick="tapClickFunction('dd');"
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">수강포기
			약자표시</a>
		<a href="#;" id="ee" class="smu-list"
			onclick="tapClickFunction('ee');"
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">계절수업안내</a>
		<a href="#;" id="ff" class="smu-list"
			style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">&nbsp;</a>
	</div>

	<div class="ui-box" id="uiaa">
		<div class="fund">
			<h4>수강관련</h4>
			<p>매학기 개강 2주전</p>

			<h4>재학생 수강신청 일정</h4>
			<p>· 학년별 일정을 반드시 엄수하여야 함<br/>
			- 1학년 : 별도의 수강신청은 없음 (학부(과) 전공별 시간표 확인)<br/>
			· 수강신청 기간 내 신청을 하지 않을 경우 재신청의 기회는 없음<br/>
			· 강좌별 수강인원은 강좌 특성 및 강의실 수용 규모별로 제한되어 있음으로 선신청이 우선함</p>

			<h4>복학생 수강신청 일정</h4>
			<p>· 1학년 복학생 : 별도의 수강신청 없음 (학부(과) 전공별 시간표 확인)<br/>
			· 1학기 수료 후 역복학자는 수강신청 정정기간에 수강신청 정정원으로 재신청<br/>
			· 2.3.4학년 복학생 : 재학생 수강신청 기간에 신청<br/>
			· 역복학생 : 본인이 이수한 학기에 따라 각 학년별 수강신청 (예-3학기 이수자 : 2학년 수강신청)</p>

			<h4>수강신청 방법</h4>
			
			<h5>인터넷 수강신청</h5>
			<p>- 수강신청 기간 중 본교 포탈시스템에 접속하여 신청<br/>
			- 화면의 안내에 따라 수강신청</p>
			
			<h5>수강신청 전 반드시 본인 확인사항</h5>
			<p>- 수강신청 유의사항 및 교육과정 이수내용을 숙지<br/>
			- 중복신청이 없도록 기존의 이수과목을 확인<br/>
			- 졸업학점 취득에 이상이 없도록 수강신청</p>

			<h4>장애학생 수강신청 지원 안내</h4>
			<p>장애학생에게 수강신청 우선권을 부여하며, 인터넷 수강신청 불가 시 서면으로 수강신청 가능</p>
			
			<h4>수강신청 유의사항</h4>
			<h5>수강신청 학점 :</h5>
			<p>· 학기당 12학점(최종학기 6학점)~ 20학점까지 수강신청 가능<br/>
			(단,간호학과 교직이수자 22학점, 한의예과 및 한의학과 24학점)<br/>
			「미드필더설계및상담Ⅰ~Ⅷ」 과목은 매학기 최대 수강신청 학점에 포함하지 않음<br/>
			· 직전학기 평균평점이 4.20 이상인 자는 이수허용 기준학점에 3학점 초과 신청 가능</p>
			
			<h5>장학생 선발 대상 수강신청 학점 범위</h5>
			<p>· 1∼3학년 (6학기차) - 17학점이상 (수강신청 학점 중 P/N학점이 20%이하로 신청해야 함)<br/>
				· 4학년 1학기 (7학기차) - 12학점 이상(수강신청 학점 중 P/N학점이 20%이하로 신청해야 함)
			</p>

			<h5>수강신청을 하지 않고는 강좌를 수강할 수 없음</h5>
			<h5>등록 후 수강신청을 하지 않은 학생에 대해서는 성적을 인정하지 않으며, 학사경고자로 처리함</h5>
			<h5>수업일수 4주초과 결석자는 성적 인정 불가(F학점 처리)</h5>
			<h5>수강신청 이후에는 임의변경이나 취소를 불허함</h5>
			<h5>본인의 포탈아이디 및 비밀번호 관리소홀로 인한 수강신청 오류는 본인에게 책임이 있음</h5>
		</div>
	</div>

	<div class="ui-box" id="uibb">
		<div class="fund">
			<h4>타 학부 (과)간 동일 과목 운영</h4>

			<h4>교과목명칭, 학점, 시수가 동일한 과목은 
			같은 교과목번호를 사용하며, 학부(과)간 
			교차 수강시 학과기초교양 또는 전공으로 인정</h4>
			
			<h4>대상과목</h4>
			<p>서로 다른 학부(과)에서 개설하는 동일한 교과목번호의 과목<br/>
			[교육과정의 교과목명 앞에 “*” 표기 과목]</p>
			
			<h4>전공 인정 범위</h4>
			<p>· 지정된 동일 과목이 상호 개설되는 학부 (과) 전공내의 재학생<br/>
			· 상호 개설되는 전공내의 재학생 이외 타 학부 (과)생 수강시 인정 불가<br/>
			· 예시) 법학과와 행정학과에서 개설되는“*헌법Ⅱ (320040)”과목을 교차 수강시 법학/행정학과 학생에 
			한해서만 인정이 되며 타 학부 (과)생이 수강시에는 전공 인정 불가(일반선택으로 인정)</p>
		</div>
	</div>

		<div class="ui-box" id="uicc">
			<div class="fund">
				<h4>재이수</h4>
				<p>· 재이수<br/>
				기존에 이수한 교과목 중 취득 성적이 C+(C+포함)이하인 과목에 한하여 동일 교과목을 재수강 할 수 있다.</p>
				
				<p>· 교양선택, 계열기초, 전공, 일반선택<br/>
				재이수 여부를 본인이 선택하여 기존에 취득한 과목은 
				동일 교과목으로 재이수가 가능함</p>
				
				<p>· 성적인정 (처리)<br/>
				① 기존에 취득한 성적과 비교하여 상위성적은 인정(표시), 하위성적은 삭제처리 함<br/>
				② 재이수 교과목의 학점 취득시 B+ 이하로 부여</p>
				
				<p>· 재이수 신청 방법<br/>
				① 재이수 대상과목 수강신청 시 "재이수" 란에 "v"표시 됨 (교과목 명칭, 학점 동일한 경우)<br/>
				② 동일 교과목인데 "재이수"란에 "v"표시가 안될 경우 - 학부 (과) 전공사무실로 확인<br/>
				- 해당 경우 : 교육과정 중 동일 과목 지정대상에서 누락된 일부 과목</p>
				
				<p>유의사항<br/>
				① 재이수 신청학점은 해당학기 신청 학점수에는 포함되나, 졸업요구 이수학점수에 가산되지 않음<br/>
				② 동일 교과목을 재이수 신청여부와 관계없이 중복 이수한 경우에는 1과목 성적을 삭제 처리함<br/>
				- 재이수 및 중복이수 오류로 졸업을 하지 못하는 사례가 발생하지 않도록 각별한 주의요망</p>
			</div>
		</div>
		
		<div class="ui-box" id="uidd">
			<div class="fund">
				<h4>대상 교과목</h4>
				<p>해당학기 수강신청 교과목 중 수강을 포기하고자 하는 교과목 수정</p>
				
				<h4>신청 대상자</h4>
				<p>2. 3. 4학년 재학생 (1학년 제외)</p>
				
				<h4>수강포기 학점</h4>
				<p>· 졸업요구 학점을 정확히 감안하여 수강신청 과목의 학점을 포기 신청<br/>
				· 수강포기 후 수강신청 학점이 12학점 (졸업학기 6학점) 이하로 
				되지 않도록 하여야 함</p>
				
				<h4>수강포기 기간</h4>
				<p>· 매 학기초 신청기간 전 홈페이지 공지사항 참조</p>
				
				<h4>수강포기 유의사항</h4>
				<p>· 수강신청한 과목을 포기하는 경우 타 과목을 추가로 수강신청 불가<br/>
				· 수강포기 기간 이후에는 수강포기 신청 불가<br/>
				· 수강포기 과목 처리 여부 확인<br/>
				· 포탈시스템 수강신청 내역 조회 및 학부 (과)사무실로 송부하는 최종 수강신청 확인</p>
			</div>
		</div>
		
		<div class="ui-box" id="uiee">
			<div class="fund">
				<h4>수업일정</h4>
				<p>학기 종료 후 약 3주간</p>
				
				<h4>수강 대상자</h4>
				<p>재학생 중 계절수업 수강 희망자</p>
				
				<h4>개설 교과목</h4>
				<p>학과에서 개설을 희망하는 교과목</p>
				
				<h4>수강가능 최대 학점 범위</h4>
				<p>6학점 이내</p>
				
				<h4>유의사항</h4>
				<p>· 수업시간이 중복되는 교과목은 중복 수강할 수 없음<br/>
				· 계절학기 직전 학기 수강중인 과목은 성적처리가 종료되지 않았기 때문에 계절수업 수강신청이 불가함</p>
			</div>
		</div>

		<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
		<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>