
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

<title>제·증명서발급</title>
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

	<div class="ui-box" id="uiee">
		<div class="fund" style="margin-bottom: 40px;">
			<h4>발급증명서 종류</h4>
			<div class="table_style">
				<table summary="학부, 대학원의 국문, 영문 별 발급증명서 종류">
					<colgroup>
						<col style="width: 8%;">
						<col style="width: 10%;">
						<col style="width: 50%;">
						<col style="width: 32%;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">구분</th>
							<th scope="col">국/영문</th>
							<th scope="col">증명서 종류</th>
							<th scope="col">발급부서 및 문의전화번호</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th class="bLft0" scope="row" rowspan="2">학부</th>
							<td>국문</td>
							<td>재학, 휴학, 재적, 수료, 졸업예정, 졸업, 성적증명서</td>
							<td rowspan="2">대학교 교무연구처 <br>학사관리팀 <br>(043)
								649-1137
							</td>
						</tr>
						<tr>
							<td>영문</td>
							<td>재학, 휴학, 재적, 수료, 졸업예정, 졸업, 성적증명서</td>
						</tr>
						<tr>
							<th class="bLft0" scope="row" rowspan="2">대학원</th>
							<td>국문</td>
							<td>재학, 휴학, 재적, 수료예정, 수료, 졸업예정, 졸업, 성적증명서</td>
							<td rowspan="2">대학원 교학과<br>(043) 649-1120
							</td>
						</tr>
						<tr>
							<td>영문</td>
							<td>재학, 휴학, 재적, 수료예정, 수료, 졸업예정, 졸업, 성적증명서</td>
						</tr>
					</tbody>
				</table>
				장학관련증명서는 학생처(043-649-1149)로 문의

				<h4 style="margin-top: 20px;">교육비 납입증명서 발급 안내</h4>
				<div class="table_style">
					<table summary="학부및대학원 교육비 납입증명서 안내">
						<colgroup>
							<col style="width: 15%">
							<col style="width: 18%">
							<col style="width: 67%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">구분</th>
								<th scope="col">증명서 종류</th>
								<th scope="col">발급부서 및 문의전화번호</th>
							</tr>
						</thead>
						<tbody>
							<tr class="long_type">
								<th class="bLft0" scope="row">학부 및 대학원</th>
								<td>본교 사무처(재무팀)</td>
								<td class="td_list_type">
									<ul>
										<li>본교 포탈시스템 접속</li>
										<li>학사행정</li>
										<li>등록사항</li>
										<li>교육비 납입증명서 발급</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<h4>등록금 고지서 출력 안내</h4>
				<div class="table_style">
					<table summary="학부 및 대학원 등록금 고지서 출력 안내">
						<colgroup>
							<col style="width: 30%;">
							<col style="width: 70%;">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">구분</th>
								<th scope="col">인터넷 출력</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th class="bLft0" scope="row">학부 및 대학원</th>
								<td class="td_list_type">
									<ul>
										<li>본교 포탈시스템 접속</li>
										<li>학사행정</li>
										<li>등록사항</li>
										<li>등록금 납입고지서 조회</li>
										<li>출력</li>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
					자세한 사항은 사무처 경리과로 문의 바람 (043-649-1159)
				</div>

				<h4>발급부서 근무시간</h4>
				<h5>· 관공서의 공휴일 및 개교기념일(5.22) 제외</h5>
				<p>
					· 하절기 (3월∼10월) : 09:00∼18:00<br /> · 동절기 (11월∼ 2월) : 09:00∼17:00
				</p>

				<h4>인터넷 제증명서 신청/발급전송의 발급범위 및 발급업체</h4>
				<h5>발급범위</h5>
				<p>
					· 학 부 : 재학, 휴학, 재적, 졸업예정, 졸업, 성적증명서<br /> · 대학원 : 재학, 휴학, 재적,
					졸업예정, 졸업, 성적증명서
				</p>

				<h4>인터넷 제증명서 발급업체</h4>
				<div class="table_style">
					<table bgcolor="#FFFF99" summary="발급업체별 인터넷 제증명서 정보">
						<colgroup>
							<col style="width: 20%">
							<col style="width: 20%">
							<col style="width: 35%">
							<col style="width: 25%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col"><strong> 발급업체 </strong></th>
								<th scope="col">고객지원센터</th>
								<th scope="col">결제방법</th>
								<th scope="col">증명서발급</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th class="bLft0" scope="row"><strong> (주) 아이앤택 </strong></th>
								<td>1544-4536</td>
								<td>신용카드 / 핸드폰 소액결제</td>
								<td><a href="http://semyung.certpia.com/" class="btn_type2"
									target="_blank"><span>바로가기</span></a></td>
							</tr>
							<tr>
								<th class="bLft0" scope="row"><strong>(주) 다몬이지서티 </strong>
								</th>
								<td>1644-2378</td>
								<td>신용카드 / 핸드폰 소액결제</td>
								<td><a href="http://semyung.webminwon.kr"
									target="_blank&quot;" class="btn_type2"><span>바로가기</span></a></td>
							</tr>
						</tbody>
					</table>
					· 발급업체를 통한 인터넷 제증명서 신청/발급전송의 경우 별도의 회원가입이 필요합니다.<br /> · 제출용은 반드시
					컬러프린터를 사용하십시요.
				</div>

				<div class="table_style">
					<table summary="증병서를 발급장소, 발급방법, 소요시간, 수수료, 시행여부 순으로 나타낸표">
						<colgroup>
							<col style="width: 10%">
							<col style="width: 21%">
							<col style="width: 23%">
							<col style="width: 23%">
							<col style="width: 23%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">구분</th>
								<th scope="col">방문발급</th>
								<th scope="col">팩스민원발급</th>
								<th scope="col">인터넷신청 우편발급</th>
								<th scope="col">인터넷제증명서 신청<br>발급전송
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th class="bLft0" scope="row">발급<br>장소
								</th>
								<td>교내</td>
								<td>국내자치단체 <br>(구청, 읍면동사무소)
								</td>
								<td>포탈시스템</td>
								<td>인터넷이 가능한 모든 장소</td>
							</tr>
							<tr>
								<th class="bLft0" scope="row">발급<br>방법
								</th>
								<td class="align_left">
									<ol>
										<li>① 자동발급기
											<ul>
												<li>- 학생회관2층</li>
												<li>- 도서관 1층</li>
											</ul>
										</li>
										<li style="margin-top: 10px;">② 창구발급
											<ul>
												<li>- 대학본관 1층<br>
												<span class="pdl_10">교무연구처</span></li>
											</ul>
										</li>
									</ol>
								</td>
								<td class="blue_box">
									<ul>
										<li><span>위 단체 직접방문</span></li>
										<li><span>각종 증명서 신청</span></li>
										<li class="last_pd" style="background:none;"><span>팩스본사본으로 <br>자치단체기관장
												<br>명의로 교부발급
										</span></li>
									</ul>
								</td>
								<td class="blue_box">
									<ul>
										<li><span>홈페이지 접속</span></li>
										<li><span>각종 증명서 신청</span></li>
										<li><span>무통장수수료 납부</span></li>
										<li><span>증명서 발급</span></li>
										<li class="last_pd" style="background:none;"><span>회송주소지 <br>(반송의 경우 <br>관련부서보관)
										</span></li>
									</ul>
								</td>
								<td class="blue_box">
									<ul>
										<li><span>홈페이지 접속</span></li>
										<li><span>회원가입 후<br>인터넷제증명서<br>신청 /
												발급전송선택
										</span></li>
										<li><span>증명서 신청</span></li>
										<li><span>증명서수수료</span></li>
										<li class="last_pd" style="background:none;"><span>개인프린터로 발급</span></li>
									</ul>
								</td>
							</tr>
							<tr>
								<th class="bLft0" scope="row">소요시간</th>
								<td>즉시발급</td>
								<td>1~3시간 이내</td>
								<td>1~3일 이내</td>
								<td>즉시 발급 / 전송</td>
							</tr>
							<tr>
								<th class="bLft0" scope="row">발&nbsp;급 <br>수수료
								</th>
								<td>국문 500원 <br> 영문 1,000원
								</td>
								<td>발급수수료+업무처리비+<br>팩스요금
								</td>
								<td>발급수수료+행정처리비용(2,000원)</td>
								<td>발급수수료+대행수수료</td>
							</tr>
							<tr>
								<th class="bLft0" scope="row">시행여부</th>
								<td>시행중</td>
								<td>시행중</td>
								<td>포탈시스템 이용</td>
								<td>시행중</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>