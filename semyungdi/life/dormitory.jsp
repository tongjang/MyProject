
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

<title>학생생활관</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport"
	content="width=device-width; initial-scale=1.0; user-scalable=yes, target-densitydpi=medium-dpi">
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
		<div class="greeting_img" align="center">
		<ul>
			<li><img src="<%=context%>/semyungdi/images/img_student01.jpg"/></li>
		</ul>
		</div>	
		<div class="fund" style="margin-top: 10px;">
		<h4>현황</h4>
		<div class="table_style">
			<table summary="구분, 남학생생활관,예지, 청룡, 비룡, 인성, 여학생 생활관, 청풍, 세명">
				<colgroup>
					<col width="103">
					<col width="103">
					<col width="103">
					<col width="103">
					<col width="103">
					<col width="97">
					<col width="107">
				</colgroup>
				<thead>
					<tr>
						<th scope="col" rowspan="2">구분</th>
						<th scope="col" colspan="4">남학생 생활관</th>
						<th scope="col" colspan="2">여학생 생활관</th>
					</tr>
					<tr>
						<th class="borLeft" scope="col">예지</th>
						<th scope="col">청룡</th>
						<th scope="col">비룡</th>
						<th scope="col">인성</th>
						<th scope="col">청풍</th>
						<th scope="col">세명</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row" class="back_fff">사감</th>
						<td>강병상<br>최종관
						</td>
						<td>이성균<br>김태목
						</td>
						<td>김태규<br>박승룡
						</td>
						<td>김동출<br>박승철
						</td>
						<td>이재금<br>최승희
						</td>
						<td>김성자<br>권원희
						</td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">전화</th>
						<td>649-7206<br>649-7207
						</td>
						<td>649-7208<br>649-7209
						</td>
						<td>649-7212<br>649-7213
						</td>
						<td>649-7210<br>649-7211
						</td>
						<td>649-7214<br>649-7215
						</td>
						<td>649-7216<br>649-7217
						</td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">규모</th>
						<td>지하1층<br>지상4층
						</td>
						<td>지하1층<br>지상4층
						</td>
						<td>지하1층<br>지상4층
						</td>
						<td>지하1층<br>지상5층
						</td>
						<td>지하1층<br>지상7층
						</td>
						<td>지하1층<br>지상12층
						</td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">호실수</th>
						<td>2인81실<br>3인8실<br>4인33실
						</td>
						<td>2인15실<br>4인16실<br>6인실69실
						</td>
						<td>2인87실<br>4인88실
						</td>
						<td>1인2실<br>2인7실<br>6인97실
						</td>
						<td>1인13실<br>2인224실
						</td>
						<td>1인5실<br>2인146실<br>4인110실<br>6인60실
						</td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">최대인원</th>
						<td>318명</td>
						<td>508명</td>
						<td>526명</td>
						<td>598명</td>
						<td>461명</td>
						<td>1,097명</td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">복지시설</th>
						<td colspan="6">컴퓨터실ㆍ유무선인터넷ㆍTV시청실ㆍ휴게실ㆍ사생회실</td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">편의시설</th>
						<td colspan="6">식당ㆍ매점ㆍ샤워실ㆍ세탁실ㆍ커피숍</td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">운동시설</th>
						<td colspan="6">테니스장ㆍ농구장ㆍ헬스장</td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">개관일</th>
						<td>1991.3</td>
						<td>1996.8</td>
						<td>2006.3</td>
						<td>2001.3</td>
						<td>2008.9</td>
						<td>2010.3</td>
					</tr>
					<tr>
						<th scope="row" class="back_fff">리모델링일</th>
						<td>2011.3</td>
						<td>2012.3</td>
						<td>-</td>
						<td>2013.3</td>
						<td>-</td>
						<td>-</td>
					</tr>
				</tbody>
			</table>

		</div>
		
			<h4>입실자격 및 선발기준</h4>
			<p style="margin-top: 5px;">
				· 본교 재학생으로 성적,거리,생활정도,품행 등을 종합적으로 평가하여 학생생활관 운영위원회에서 선발<br /> · 전화 :
				043-645-1125~9
			</p>
			<br />
			<br />

			<h4>전화번호 안내</h4>
			<p style="margin-top: 5px;">
				· 생활관장 :김기환(649-1144)<br /> · 여학생 생활관장 : 김명희(649-1352)<br /> · 생활관
				팀장 : 김현동(649-7200)<br /> · 생활관 주임 : 권순엽(649-7201)<br /> · 생활관 담당
				:이은영(649-7202)<br /> · 생활관 담당 조교 : 649-7203<br /> · FAX : 649-7205<br />
			</p>
			<br />
			<br />

			<h4>생활관비 (관리비,기본식비,사생회비)</h4>
			<p style="margin-top: 5px;">
				· 실비 부담을 원칙으로 하며 타대학(교) 생활관(기숙사) 운영상태를 참고하여 생활관 운영위원회에서 결정함<br />
			</p>
			<br />
			<br />

			<h4>사생활동</h4>
			<p style="margin-top: 5px;">
				· 사생회 조직 : 사생회장, 동장, 층장<br /> · 사생회 임무 : 사생회 주관 행사를 기획하고 사생 자율점호를
				실시함<br />
			</p>
			<br />
			<br />

			<h4>생자치행사</h4>
			<p style="margin-top: 5px;">
				· 사생의 밤 : 5월 초순경 사생회를 중심으로 노래자랑, 장기자랑 등 다채로운 행사를 함<br /> · 오픈하우스 :
				10월 말경 사생회를 중심으로 전야제 행사 및 오픈하우스 행사<br />
			</p>
			<br />
			<br />
		</div>
	</div>


	<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>