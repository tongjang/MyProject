
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

<title>장학/융자 안내</title>
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
					style="width: 33%; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">장학제도
					개관</a>
				 <a href="#;" id="bb" class="smu-list"
					onclick="tapClickFunction('bb');"
					style="width: 33%; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">장학금
					신청과 지급</a>
				<a href="#;" id="cc" class="smu-list"
					onclick="tapClickFunction('cc');"
					style="width: 33%; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">학자금 융자</a>
			</div>


			<div class="ui-box" id="uiaa">
			<div class="scholar_download">
				<a href="http://www.semyung.ac.kr/insite/files/down/scholarship_2014_1.hwp"><img src="<%=context%>/semyungdi/images/btn_download_01.gif" alt="장학금 규정 및 시행세칙 DOWNLOAD"></a>
				<a href="http://www.semyung.ac.kr/insite/files/down/job_janghak_2013_1.hwp"><img src="<%=context%>/semyungdi/images/btn_download_02.gif" alt="취업률 제고 장학금 기준 DOWNLOAD"></a>
			</div>
				<div class="fund">
					<h4>장학제도 개관</h4>
					<p>세명대학교에서는 학칙 제64조에 따라 학업성적이 우수하고 품행이 방정한 학생과 성적이 우수하면서 가정형편이
						곤란한 학생 및 봉사와 선행 등 모범이 되는 학생에게 장학금을 지급함으로써 장차 국가와 인류사회 발전에 이바지 할
						인재양성을 위해 장학제도를 운영하고 있음.</p>
				</div>
				<div class="fund">
					<h4>장학제도 (약 50종)</h4>
				</div>
				<div class="table_style">
				<table summary="장학제도에 관한 표로써, 장학종별,수혜자격,지급액 등의 정보를 제공합니다." class="scholar_table">
					<colgroup>
						<col width="23">
						<col width="156">
						<col width="309">
						<col width="222">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" colspan="2">장학종별</th>
							<th scope="col">수혜자격</th>
							<th scope="col">지급액</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row" rowspan="37">교내장학금</th>
							<td class="back_fff" rowspan="9">설립자 장학금</td>
							<td>최초합격자</td>
							<td>120만원</td>
						</tr>
						<tr>
							<td>입학사정관/사회기여자 충원합격자</td>
							<td>100만원</td>
						</tr>
						<tr>
							<td>기회균형전형 차상위계층</td>
							<td>등록금50%</td>
						</tr>
						<tr>
							<td>전체수석</td>
							<td>등록금 전액 4년간</td>
						</tr>
						<tr>
							<td>모집군별 계열수석</td>
							<td>등록금 전액 1년</td>
						</tr>
						<tr>
							<td>자매고등학교 출신자</td>
							<td>입학금액</td>
						</tr>
						<tr>
							<td>세명 미드필더</td>
							<td>50만원</td>
						</tr>
						<tr>
							<td>수학능력시험성적우수자</td>
							<td rowspan="2">장학금지급시행세칙 3조 1항 참조</td>
						</tr>
						<tr>
							<td>수능우수자 생활관비</td>
						</tr>
						<tr>
							<td>성적우수 장학금</td>
							<td>학업성정우수자</td>
							<td>장학금지급 시행세칙 3조 2항 참조</td>
						</tr>
						<tr>
							<td>보훈 장학금</td>
							<td>국가유공자 및 그 자녀</td>
							<td>등록금 전액</td>
						</tr>
						<tr>
							<td>위세광명 포인트 <br>장학금
							</td>
							<td>인성·외국어,전공지식 및 컴퓨터활용능력 대외유공 각 분야별로 취득한 점수가 기준점수 이상인 자</td>
							<td>장학금지급 시행세칙 3조 4항 참조</td>
						</tr>
						<tr>
							<td>책임지도교수 추천 장학금</td>
							<td>학부(과)에서 자체 기준 설정하여 지급</td>
							<td>장학위원회 결정</td>
						</tr>
						<tr>
							<td rowspan="2">교직원자녀 장학금</td>
							<td>교원자녀</td>
							<td>장학위원회 결정</td>
						</tr>
						<tr>
							<td>대원교육재단,민송학원,세명학원에<br> 재직중인 교직원자녀
							</td>
							<td>장학위원회 결정</td>
						</tr>
						<tr>
							<td>면학 장학금</td>
							<td>국민기초생활보장수급자 또는 그자녀</td>
							<td>등록금의 50%</td>
						</tr>
						<tr>
							<td>봉사 장학금</td>
							<td>교내 각 부서에서 근로봉사하는 자</td>
							<td>봉사내용에 따라 장학 위원회에서 결정</td>
						</tr>
						<tr>
							<td>공로 장학금</td>
							<td>품행이 방정하고 학교에 공로가 있는 자</td>
							<td>장학위원회 결정</td>
						</tr>
						<tr>
							<td>R.O.T.C 장학금</td>
							<td>전원</td>
							<td>장학위원회 결정</td>
						</tr>
						<tr>
							<td>학군단 해외문화탐방 장학금</td>
							<td>학군단 선발</td>
							<td>장학위원회 결정</td>
						</tr>
						<tr>
							<td>국가고시 장학금</td>
							<td>
								<ul>
									<li><span>국가고시 1차 합격자 (5급상당)</span></li>
									<li><span>국가고시 2차 합격자 (5급상당)</span></li>
									<li><span>국가공무원 임용시험 (7급상당)</span></li>
								</ul>
							</td>
							<td>장학위원회 결정</td>
						</tr>
						<tr>
							<td>민송 장학금</td>
							<td>
								<ul>
									<li><span>가정형편 곤란 자</span></li>
									<li><span>품행이 방정하여 타의 모범이 되는 자</span></li>
									<li><span>학교의 명예를 빛낸 자</span></li>
								</ul>
							</td>
							<td>장학위원회 결정</td>
						</tr>
						<tr>
							<td>교직원 장학금</td>
							<td>전학기 성적 2.50 이상인 자 중 모범생</td>
							<td>장학위원회 결정</td>
						</tr>
						<tr>
							<td rowspan="2">가족 장학금</td>
							<td>직계가족 중 2인 재학시</td>
							<td>500,000원</td>
						</tr>
						<tr>
							<td>직계가족 중 3인 재학시</td>
							<td>등록금 전액</td>
						</tr>
						<tr>
							<td>편입학 장학금</td>
							<td>대원대 출신,협정체결전문대학 등 편입한 자</td>
							<td>장학금지급 시행세칙 3조 16항 참조</td>
						</tr>
						<tr>
							<td>외국인유학생 장학금</td>
							<td>외국인유학생전형으로 입학한 자</td>
							<td>장학금지급 시행세칙 3조 17항 참조</td>
						</tr>
						<tr>
							<td>신입생해외 문화연수 장학금</td>
							<td>신입생 중 입학성적우수자</td>
							<td>대외협력처 결정</td>
						</tr>
						<tr>
							<td>재학생해외 어학연수 장학금</td>
							<td>재학생 중 선발</td>
							<td>장학위원회 결정</td>
						</tr>
						<tr>
							<td rowspan="2">취업률제고 장학금</td>
							<td>어학능력우수자</td>
							<td rowspan="2">장학위원회 결정</td>
						</tr>
						<tr>
							<td>자격증취득자</td>
						</tr>
						<tr>
							<td>장애인복지 장학금</td>
							<td>본교에 장애학생으로 등록된자</td>
							<td>장학위원회 결정</td>
						</tr>
						<tr>
							<td>부서별 장학금</td>
							<td>각 행정부서에서 선발된 자</td>
							<td>각 부서 결정</td>
						</tr>
						<tr>
							<td>세명 장학금</td>
							<td>차상위계층 또는 경제사정 곤란 자</td>
							<td>장학금지급 시행세칙3조 24항 참고</td>
						</tr>
						<tr>
							<td>재충전 프로그램 장학금</td>
							<td>편입학한 본교 졸업생</td>
							<td>장학금지급 시행세칙3조 26항 참고<br>지급액 : 입학금전액, 수업료의 90%<br>(보건,
								의학계열제외)
							</td>
						</tr>
						<tr>
							<td>성적향상 장학금</td>
							<td>직전 2개 학기의 성적 향상자</td>
							<td>장학금지급 시행세칙 3조 27항 참고</td>
						</tr>
						<tr>
							<td>졸업연기자 장학금</td>
							<td>졸업연기자 대상으로 등록금 감면(6학점 까지)</td>
							<td>장학금지급 시행세칙 3조 28항 참고</td>
						</tr>
						<tr>
							<th scope="col">교외장학금</th>
							<td>한국장학재단 외 30종</td>
							<td>각 장학재단 지급 기준에 적합한 자</td>
							<td>등록금액 비율 또는 일정액</td>
						</tr>
					</tbody>
				</table>
				</div>
			</div>
			
			<div class="ui-box" id="uibb">
				<div class="fund" style="margin-bottom: 40px;">
					<h4>신청기간</h4>
					<p>장학금 종류에 따라 신청기간은 다를 수 있으며,	정확한 신청기간은 학교홈페이지 및 각 학부(과)사무실에 공고함.
					</p>
					<h4>신청방법</h4>
					<p>장학금을 받고자 하는 자는 소정 기간 내에 서류를 구비하여 지도교수 및 학과장의 추천을 받아 소속 학부장에게 제출하여야 함
					</p>
					<h4>신청자격의 제한</h4>
					<p>· 재입학생<br/>
						· 징계중에 있거나 징계처분을 받은 사실이 있는 학생<br/>
						· 근로성적이 극히 불량한 근로장학생<br/>
						· 학원안정과 건전한 면학분위기 조성에 유해한 행위를 한 학생<br/>
						· 기타 학칙을 위반한 학생
					</p>
					<h4>수혜기간의 제한</h4>
					<p>당해 학기를 원칙으로 하며 8학기(한의12학기)를 초과할 수 없음. <br/>
					</p>
					<h4>지급 시기</h4>
					<p>교내 장학금의 지급시기는 장학금 종류에 따라 학기초, 학기중, 학기말로 구분하여 지급. <br/>
					</p>
					<h4>지급 방법</h4>
					<p>장학금의 지급방법은 확정된 장학금 지급대상자 명부에 의하여 해당 금액의 학비감면을 원칙으로 하며 특별한 사유가 있을 때에는 현금으로 지급. <br/>
					</p>
					<h4>지급 중지 및 회수</h4>
					<p>· 학칙에 위반되는 행위를 한 사실이 판정될 때 <br/>
						· 장학금의 신청절차 및 신청사유가 허위로 판명될 때 <br/>
						· 징계처분을 받거나 받은 사실이 있을 때 <br/>
						· 교내 장학금을 지급 받은 자가 다른 대학으로 전출한 때에는 이미 지급한 장학금을 회수(보훈장학금은 제외) <br/>
						· 근로장학생으로서 근로성적이 극히 불량할 때 <br/>
						· 학원안정과 건전한 면학분위기 조성에 유해한 행위를 하는 학생 <br/>
						· 상세내용은 장학금 규정 및 장학금지급시행세칙 참조 <br/>
					</p>
					
			  </div>
			</div>
			
			<div class="ui-box" id="uicc">
			<div class="fund" style="margin-bottom: 40px;">
				<h4>공통 자격</h4>
				<p>· 국내 고등교육기관에 재학 및 입학(신입, 편입학, 재입학)복학예정인 대한민국 국민(주민등록상 해외이주 신고자, 영주권자 제외)으로서 대출 제한대상자가 아닐 것<br/>
				· 직전학기 성적 70/100점(C학점) 이상, 12학점 이상 이수<br/>
				· 이수학점 산출기준 및 소속대학의 학기당 최저 이수학점이 12학점 미만인 경우는 소속 대학의 학사규정에 의함</p>
				
				<h4>든든 학자금</h4>
				<p>교과부(또는 재단)와 '든든장학금에관한 협약'을 체결한 만35세 이하의 고등교육기관 대학 학부생</p>
				
				<h4>일반 학자금</h4>
				<p>· 만 55세 이하의 국내 고등교육기관 대학(원)생<br/>
				· 학자금대출 상품 및 한도</p>
				<div class="table_style">
				<table summary="일반 학자금에 관한 표로써, 장학종별,상품특징,대출한도 등의 정보를 제공합니다.">
										<colgroup>
											<col width="98">
											<col width="206">
											<col width="412">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">장학종별</th>
												<th scope="col">상품 특징</th>
												<th scope="col">대출 한도</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row" class="bg_none">든든 학자금</th>
												<td>취업 등 소득이 발생한 시점부터 소득수준에 따라 원리금 상환</td>
												<td>
													<ul>
														<li>
															등록금 및 생활비
															<span class="mt5">- 등록금 대출 : 등록금 전액(수업료 + 기성회비 등)</span>
															<span class="mb5">- 생활비 대출 : 연간300만원(학기당 150만원)</span>
														</li>
														<li>대출자 1인당 대출한도 없음</li>
													</ul>
												</td>
											</tr>
											<tr>
												<th scope="row" class="bg_none">일반 학자금</th>
												<td>대출기간(거치기간 및 상환기간)동안 원리금을 분할하여 상환</td>
												<td>
													<ul>
														<li>
															등록금(WEST대출, 나라지킴이 대출 포함)및 생활비
															<span class="mt5 mb5">
																- 등록금 대출 : 대출자의 재학(또는 입학예정) 고등 교육기관<br>
																(학부, 대학원 등)에 따라 총 대출한도가 설정되며, <br>
																총 대출한도 내에서 대출 가능
															</span>
														</li>
														<li>대출자 1인당 대출한도 없음</li>
													</ul>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
					
					<h4>신청 절차</h4>
					<p>① 학생이 홈페이지(www.kosaf.go.kr) 방문, 로그인 (아이디, 패스워드)<br/>
					② 장학/대출 신청 또는 학자금 대출 신청 메뉴 클릭 : 신청서 작성 버튼 클릭<br/>
					③ 신청동의 및 서약 절차에서'개인(신용)정보 수집ㆍ이용ㆍ제공 및 조회 동의서','신청인 서약서',
					‘행정정보 공동이용 사전동의서' 동의<br/>
					④ 학교정보 입력 : 개인 및 가족정보 입력 (미혼: 부모 정보, 기혼 : 배우자 정보)<br/>
					⑤ 든든 학자금/일반 학자금 체크박스 선택</p>
					
					<h4>학자금 융자 관련 연락처</h4>
					<p>세명대학교 학생처 학자금대출 담당<a href="tel:043-649-1149" class="telephone">☎ 043) 649-1149</a><br/>
					한국장학재단(www.kosaf.go.kr)<br/>
					한국장학재단 콜센터 : <a href="tel:1599-2000" class="telephone">☎ 1599-2000</a></p>
				</div>
			</div>

			<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
			<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>