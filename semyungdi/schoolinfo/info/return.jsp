
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

<title>복학 · 휴학</title>
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
			style="width:49%;border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">복학</a>
		<a href="#;" id="bb" class="smu-list"
			onclick="tapClickFunction('bb');"
			style="width:49%;border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">휴학
		</a>
	</div>

	<div class="ui-box" id="uiaa">
		<div class="fund">
			<h4>대상</h4>
			<p>휴학기간이 만료된 자로 해당학기에 복학 예정자</p>

			<h4>기간</h4>
			<p>매년 4회 [ 1학기 (12월, 2월중), 2학기 (6월, 8월중), 매년 학사일정 참조 ]</p>

			<h4>절차</h4>
			<p>방문접수, 인터넷(Portal)<br/>
			※ 학기 재이수 희망(가능)자 : 방문 접수만 가능</p>
			
			<h4>방문접수</h4>
			<h5>접수 절차</h5>
			<p>복학원 작성 및 확인 → 교무연구처 제출</p>

			<h5>방문 접수시 제출서류</h5>
			<p>· 일반(가사, 병고, 기타)휴학 후 복학 하는 학생 : 첨부서류 없음<br/>
			· 입대휴학 후 복학 하는 학생<br/>
			- 전역자 : 전역증, 주민등록초본(전역일자 기재), 병적증명서 중 택 1<br/>
			- 전역예정자 : 부대장이 발행하는 전역예정 증명서(전역예정일자 기재)<br/>
			※ 공익 근무 전역자 : 병적증명서(전역예정일자 기재) 복무한 기관장이 발행한 복무확인서(소집 해제일자 기재)</p>
			
			<h4>인터넷(WEB)접수</h4>
			<h5>절차</h5>
			<img src="<%=context%>/semyungdi/images/return.gif"/>
			
			<h5>인터넷 접수 시 제출 서류</h5>
			<p>· 방문접수 시 제출서류와 동일<br/>
			· 입대휴학 후 복학하는 학생은 병적증빙서류를 스캔, 촬영하여 첨부<br/>
			첨부파일 예시 : 김세명(2010124001).jpg 또는 pdf</p>

			<h4>학년·학기 재이수 희망자</h4>
			<h5>복학 기간 : 1차, 2차 복학기간, 방문 접수만 가능</h5>
			<img src="<%=context%>/semyungdi/images/return2.gif"/>
			<h5>기타 자세한 사항은 학부(과), 전공 사무실로 문의하시기 바랍니다.</h5>
			<p>※ 한의과대학[한의예과/한의학과] 또는 [미디어문학부/경찰행정학부/경상학부] 1학년 과정 미이수자는 역학기 복학신청을 할 수 없습니다.</p>
			
			<h4>복학문의</h4>
			<p>· 소속 학부(과) 전공 전화번호 : 홈페이지 ＂대학 / 대학원, 대학＂ 안내를 참조
			· 교무연구처 학사관리팀 ☎ (043) 649-1134, 1137
			※ 복학원 및 소속변경 신청서 양식은 별첨하오니 변경하여 주시기 바랍니다.</p>
			<a class="telephone" href="http://www.semyung.ac.kr/files/down/return/bh_document.pdf">
				복학원 DOWNLOAD
			</a><br/>
			<a class="telephone" href="http://www.semyung.ac.kr/files/down/return/2011_sosok.pdf">
				소속변경신청서 DOWNLOAD
			</a>
		</div>
	</div>

	<div class="ui-box" id="uibb">
		<div class="fund">
			<h4>휴학안내</h4>
			<p>· 재학 중 부득이한 사유로 4주 이상 수업에 참여할 수 없을 경우 휴학원을 제출하여 허가를 얻어야 한다.<br/>
			· 학기 개시일 이후의 일반휴학은 해당학기 등록을 필한 자에 한하여, 수업일수 1/3선 경과 전까지 가능하며, 1회에 1년(2학기), 재학 중 총 3회를 초과할 수 없다.<br/>
			  ※ 단, 장애로 인하여 추가적인 휴학이 필요한 경우 장애지원센터(☎ 043-649-7119)로 문의 바랍니다.<br/>
			· 등록금을 분납한 자가 일반휴학을 원할 경우에는 등록금을 완납하여야 한다.<br/>
			· 도서관에 미반납한 대출도서가 있을 경우 휴학을 할 수 없다.<br/>
			· 입학생 (편입생 포함)은 입학학기에 일반휴학을 허가하지 아니한다. 다만, 질병 또는 군입대휴학자는 별도로 심사하여 허가할 수 있다.<br/>
			· 입영통지서를 받고 휴학하고자 하는 자는 입영전 1주일 이내에 입영통지서를 첨부하여, 입대휴학원을 제출 하여야 한다.<br/>
			· 휴학원을 제출한 자가 휴학사유의 변경으로 인하여 휴학을 취소하고자 할 경우, 취소원인 발생 7일 이내에 증빙서류(군입대 귀향자의 경우, 귀향증 사본)를 첨부하여, 취소원을 제출하여야 한다.
			</p>
			
			<h4>휴학기간</h4>
			<p>일반휴학 : 매학년도 학사일정 참조 [매학년도 2월, 8월중]<br/>
			입대휴학 : 입영 1주일 전 입대휴학원 제출</p>
			
			<h4>휴학원 접수 절차</h4>
			<h5>일반 (병고)휴학 : 휴학기간(매학기 개강 1주전 휴학신청 기간)에만 신청 가능</h5>
			<p>· 방문 : 학과 사무실 방문 휴학원 작성, 학과장 (지도교수)면담다음교무연구처 제출<br/>
			· 인터넷 : 홈페이지 포탈시스템 → 학사행정 → 학적사항 → 휴학ㆍ복학신청 → 학과 (면담 및 확인, 면담기록 교무연구처 제출) <br/>
			→ 일반휴학 처리 → 처리결과 확인<br/>
			※ 병고휴학 첨부서류 : 본교 부속한방병원 또는 종합병원 진단서 (4주 이상)</p>
			
			<h5>입대휴학</h5>
			<p>· 절차 : 홈페이지포탈시스템(로그인) → 학사행정 → 학사관리 → 학적 → 입대휴학 신청
			· 입대휴학 첨부서류 : 입영통지서, 군입영사실확인서(병무청), 복무확인서(소속 부대) 택1<br/>
			※ 제출서류는 접수일을 기준으로 5일 이전까지 전송하지 않을 경우 휴학 접수 취소<br/>
			※ 제출서류 여백에 학번,학과(전공), 성명을 반드시 기재</p>
			
			<h5>임신·출산 및 육아휴학</h5>
			<p>· 임신·출산 또는 만 8세 이하 자녀의 양육을 사유로 휴학하고자 하는 경우 관련 증빙서류를 제출하여 총장의 허가를 얻어야 한다.<br/>
			· 일반휴학 회수에는 포함되지 않는다.<br/>
			① 만 8세 이하 자녀의 양육을 위한 휴학기간은 자녀 1명당 1회(최대 1년)로 함<br/>
			② 여학생 본인의 임신ㆍ출산으로 인한 휴학기간은 자녀 1명당 1회(최대 1년)로 함<br/>
			③ 임신ㆍ출산 및 육아휴학 기간은 통산하여 3회를 초과할 수 없음<br/>
			· 방문 : 학과 사무실 방문 → 휴학원작성, 학과장(지도교수) 면담 → 교무연구처 제출
			· 증빙서류 : 임신ㆍ출산 관련 진단서 또는 가족관계 증명서</p>

			<h5>휴학 처리여부 확인</h5>
			<p>·학교 홈페이지, 포탈시스템(로그인) → 학사행정 → 학적변동 내역<br/>
			수업일수 11주 이상을 출석한 입대휴학자의 성적은 중간시험과 수시 시험, 출석 및 과제물 성적으로 당해 학기의 성적(학기)은 인정된다.<br/>
			&lt;관련규정 학사운영규정 제18조(휴학자의 성적처리), 제62조(휴학자의 성적인정)&gt;<br/>
			· 학사운영규정 제18조(휴학자의 성적처리)에 의거하여 해당 학년도 학기 성적이 인정(평가)됩니다.<br/>
			· 입대 휴학원 제출 시기에 반드시 수강하고 있는 해당 교과목 담당 교원에게 성적평가에 대한 지도를 받으시기 바랍니다.<br/>
			· 만약, 수강교과목 담당 교원에게 성적평가에 대한 지도를 받지 않았을 경우 당해 학기 성적평가에 불이익을 받을 수
			있으므로 반드시 입대 휴학원 제출 시기에 담당 교원에게 입대휴학사실을 말씀을 드리고, 지도를 받아야 합니다.<br/>
			· 수업일수 12주 이후 입대휴학을 하는 경우라도 수업일수 부족(결석 등), 성적불량 등의 사유로 성적 평가 시 과락(F학점)에 해당 될 때에는 해당 교과목의 성적이 F학점으로 평가될 수 있습니다.
			</p>
			
			<h5>휴학문의</h5>
			<p>소속 학부(과) 전공 전화번호 : 홈페이지 ＂대학 / 대학원, 대학＂안내를 참조<br/>
			교무연구처 학사관리팀 ☎ (043) 649-1134, 1137</p>
			<a class="telephone" href="http://www.semyung.ac.kr/files/down/rest/paper_05_new.pdf">
				일반휴학원 DOWNLOAD
			</a><br/>
			<a class="telephone" href="http://www.semyung.ac.kr/files/down/rest/paper_06_new.pdf">
				입대휴학원 DOWNLOAD
			</a>
		</div>
	</div>
	
		<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
		<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>