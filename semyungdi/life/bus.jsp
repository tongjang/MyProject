
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

<title>통학버스</title>
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
		<div class="fund" style="margin-top: 10px; margin-bottom: 10px;">
			<h4>운행안내</h4>
			<div class="table_style" style="margin-bottom: 10px;">
				<table summary="세명대학교 버스 운행 정보를 제공합니다.">
					<colgroup>
						<col width="10%">
						<col width="38%">
						<col width="10%">
						<col width="16%">
						<col width="12%">
						<col width="14%">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" rowspan="2">운행지역</th>
							<th scope="col" rowspan="2">출 발 지</th>
							<th scope="colgroup" colspan="2"
								style="border-bottom: 1px solid #e4e4e5;">출발시간</th>
							<th scope="col" rowspan="2">소요시간</th>
							<th scope="col" rowspan="2">요 금<br>(20일기준)
							</th>
						</tr>
						<tr>
							<th scope="col">등교차량</th>
							<th scope="col">하교차량</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row" rowspan="4"><span class="t_bl">서울</span></th>
							<td class="aleft"><span class="t_bk"><strong>잠실</strong></span><br>
							<span style="letter-spacing: -1px;">(롯데월드 남문 구름다리 밑)</span></td>
							<td>07:20<br>09:10<br>10:00
							</td>
							<td class="aleft" rowspan="3">수시막차<br>(잠실하차)<br>(월-목,20:00)<br>(금요일,18:40)
							</td>
							<td class="aleft">1시간 50분</td>
							<td class="aleft" rowspan="5"><span class="t_bk">106,000원</span></td>
						</tr>
						<tr>
							<td class="aleft"><span class="t_bk"><strong>시청</strong></span><br>
								(프라자호텔 뒤 Log편의점 앞)</td>
							<td>6:50</td>
							<td class="aleft">2시간</td>
						</tr>
						<tr>
							<td class="aleft"><span class="t_bk"><strong>강동지역</strong></span><br>
								길동사거리 GS주유소앞(07:20) <br>
							<em class="blue">→</em> 상일동 GS LPG주유소 앞(07:30)</td>
							<td>7:20</td>
							<td class="aleft">1시간 50분</td>
						</tr>
						<tr>
							<td class="aleft"><span class="t_bk"><strong>상봉,
										구리</strong></span><br>
							<span style="letter-spacing: -0.5px;">상봉터미널 맞은편
									이마트앞(07:00)<br>
								<em class="blue">→</em>구리롯데백화점 맞은편(07:10)
							</span></td>
							<td>7:00</td>
							<td class="aleft">상봉<br>(잠실하차)<br>
							<br>구리<br>막차18:30<br>(잠실경유후하차)
							</td>
							<td class="aleft">2시간</td>
						</tr>
						<tr>
							<th scope="row"><span class="t_bl">성남</span></th>
							<td class="aleft"><span class="t_bk"><strong>모란,
										야탑역</strong></span><br>
							<span style="letter-spacing: -0.5px;">모란역 5번출구 전화박스
									앞(07:05)</span><br>
							<em class="blue">→</em> 야탑역 1번출구 전방 30M앞 메트로 빌딩(07:20)</td>
							<td>7:05</td>
							<td class="aleft">막차<br>18:30
							</td>
							<td class="aleft">1시간 50분</td>
						</tr>
						<tr>
							<th scope="row"><span class="t_bl">수원<br>안양
							</span></th>
							<td class="aleft"><span class="t_bk">동수원사거리 동수원병원앞버스
									정류장(06:40)<br>
								<em class="blue">→</em> 삼성홈플러스 버스정류장 안양방면(06:45)<em class="blue">→</em>
									안양 인덕원역 4번출구 20M 인덕원 횟집 앞(07:10)
							</span></td>
							<td>06:40(수원)<br>07:10(안양)
							</td>
							<td class="aleft">막차<br>(18:30)
							</td>
							<td>2시간</td>
							<td class="aleft"><span class="t_bk">106,000원</span></td>
						</tr>
						<tr>
							<th scope="row"><span class="t_bl">죽전<br>용인
							</span></th>
							<td class="aleft"><span class="t_bk">용인시 수지구 죽전2동
									주민센터 앞(07:05)<br>
								<em class="blue">→</em> 용인시 시외버스터미널 양지IC방향 GS25시 <br>편의점
									앞(07:45)
							</span></td>
							<td>07:05(죽전)<br>07:45(용인)
							</td>
							<td class="aleft">막차<br>(18:30)
							</td>
							<td class="aleft">2시간 10분</td>
							<td class="aleft"><span class="t_bk">106,000원</span></td>
						</tr>
						<tr>
							<th scope="row"><span class="t_bl">부천</span></th>
							<td class="aleft"><span class="t_bk"><strong>송내역(송내역남부)</strong></span><br>
								(송내역 1번출구 전방 250M 푸조 자동차 매장 앞 10번 구역)</td>
							<td>6:40</td>
							<td class="aleft">막차<br>(18:30)
							</td>
							<td class="aleft">2시간 30분</td>
							<td class="aleft"><span class="t_bk">124,000원</span></td>
						</tr>
						<tr>
							<th scope="row"><span class="t_bl">이천<br>여주
							</span></th>
							<td class="aleft"><span class="t_bk">이천시외버스터미널옆
									그랜드웨딩홀앞(07:30)<em class="blue">→</em> 여주사거리 세종대왕 동상앞(08:00)
							</span></td>
							<td>07:30(이천)<br>08:00(여주)
							</td>
							<td class="aleft">막차<br>(18:40)
							</td>
							<td class="aleft">1시간 40분</td>
							<td class="aleft"><span class="t_bk">이천<br>90,000원<br>여주<br>83,000원
							</span></td>
						</tr>
						<tr>
							<th scope="row"><span class="t_bl">원주</span></th>
							<td class="aleft"><span class="t_bk"><strong>원주시내일원</strong></span><br>
								(태장주유소앞)</td>
							<td>7:50</td>
							<td class="aleft">수시막차<br>(18:40)
							</td>
							<td class="aleft">40분</td>
							<td class="aleft"><span class="t_bk">62,000원</span></td>
						</tr>
						<tr>
							<th scope="row"><span class="t_bl">충주</span></th>
							<td class="aleft"><span class="t_bk"><strong>충주시내일원</strong></span><br>
								(죠이랜드건너편)</td>
							<td>7:50</td>
							<td class="aleft">수시막차<br>(18:40)
							</td>
							<td class="aleft">40분</td>
							<td class="aleft"><span class="t_bk">63,000원</span></td>
						</tr>
					</tbody>
				</table>
			</div>
			<p style="margin-top: 5px; font-size: 11px;">
				통학버스를 이용하는 학생들의 부담을 줄이고자 요금의 27% 정도를 학교에서 지원하여 서울역 ↔ 천안역간 전철요금보다
				저렴하게 이용 할 수 있도록 하고 있습니다.<br /> 하교시 잠실하차를 제외한 야탑, 구리, 수원, 안양, 죽전, 용인,
				이천, 여주, 원주, 충주지역은 위 운행안내 시간표의 안내된 막차가 운영되오니위 지역들은 반드시 막차를 이용하시어
				해당지역으로 귀가하시기 바랍니다.
			</p>
			<br />
			<br />

			<h5>운행일자 : 2015년 8월 31일부터 운행. 주5일(월~금)</h5>
			<br />
			<h5>통학증 발급신청</h5>
			<p style="margin-top: 5px;">· 기 간 : 2015년 8월 31일 ~ 9월
				7일(10:00~17:00) · 장 소 : 본교 학생회관 2층 학생처 · 준비물 : 증명사진 1매, 통학요금(8월 31일
				~ 9월 25일, 20일간 승차요금 준비) · 문의처</p>
			<div class="table_style">
				<table summary="서울, 야탑, 상봉(구리), 이천, 여주, 부천, 수원, 안양, 원주, 충주">
					<colgroup>
						<col width="375">
						<col width="173">
						<col width="169">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row" class="bd_top"><strong>서울, 야탑,
									상봉(구리), 이천, 여주</strong></th>
							<td>두레고속관광</td>
							<td>02) 465 - 0700</td>
						</tr>
						<tr>
							<th scope="row"><strong>부천, 수원, 안양, 죽전, 용인</strong></th>
							<td>두레고속관광</td>
							<td>02) 465 - 0700</td>
						</tr>
						<tr>
							<th scope="row"><strong>원주</strong></th>
							<td>두레고속관광여행사</td>
							<td>010-9122-3180<br> 010-4149-5144
							</td>
						</tr>
						<tr>
							<th scope="row"><strong>충주</strong></th>
							<td>나이스관광여행사</td>
							<td>043) 855 - 6626</td>
						</tr>
					</tbody>
				</table>
			</div>
			<br />
			<h5>유의사항</h5>
			<p style="margin-top: 5px;">
				· 이용 인원이 20명 미만일 경우 운행이 중단됩니다.<br /> · 통학버스 운행 사항이 변경될 수 있으니 유의하시기
				바랍니다.<br /> · 음주시에는 통학버스를 이용할 수 없습니다.<br />
			</p>
			<br />
			<br />

			<h4>통학증 발급 안내</h4>
			<h5>발급대상</h5>
			· 3일권 : 4학년만 해당<br /> · 5일권 : 전 학년 해당<br />

			<h5>지역별 요금</h5>
			<div class="table_style">
				<table summary="구분, 수도권, 송내, 이천, 여주, 원주, 충주">
					<colgroup>
						<col width="88">
						<col width="89">
						<col width="89">
						<col width="89">
						<col width="89">
						<col width="89">
						<col width="89">
						<col width="89">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" colspan="2">구분</th>
							<th scope="col">수도권</th>
							<th scope="col">송내</th>
							<th scope="col">이천</th>
							<th scope="col">여주</th>
							<th scope="col">원주</th>
							<th scope="col">충주</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row" class="back_fff" rowspan="2">주 5일권<br>(20일기준)
							</th>
							<td>1일요금</td>
							<td>5,300원</td>
							<td>6,200원</td>
							<td>4,500원</td>
							<td>4,150원</td>
							<td>3,100원</td>
							<td>3,150원</td>
						</tr>
						<tr>
							<td>20일기준</td>
							<td>106,000원</td>
							<td>124,000원</td>
							<td>90,000원</td>
							<td>83,000원</td>
							<td>62,000원</td>
							<td>63,000원</td>
						</tr>
						<tr>
							<th scope="row" class="back_fff" rowspan="2">주 3일권<br>(12일기준)
							</th>
							<td>1일요금</td>
							<td>6,700원</td>
							<td>7,600원</td>
							<td>5,650원</td>
							<td>5,250원</td>
							<td>4,000원</td>
							<td>4,000원</td>
						</tr>
						<tr>
							<td>12일기준</td>
							<td>80,400원</td>
							<td>91,200원</td>
							<td>67,800원</td>
							<td>63,000원</td>
							<td>48,000원</td>
							<td>48,000원</td>
						</tr>
					</tbody>
				</table>
				<br />
				<br />
			</div>

			<h4>직통시외버스 운행안내 (경기고속, 대원고속)</h4>
			<h5>시간표</h5>
			<div class="table_style">
				<table summary="서울, 야탑, 상종(구리), 이천, 여주, 부천, 수원, 안양, 원주, 충주">
                                <colgroup>
                                    <col width="247">
                                    <col width="106"> 
                                    <col width="362">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th scope="row"><strong>동서울출발 → 세명대학교 동문 앞</strong></th>
                                        <td>월요일 ~ 일요일<br>(공휴일 포함)</td>
                                        <td class="tL">06:30, 07:30, 08:00, 09:30, 10:00, 11:00, 12:00, 13:30, 14:00, <br>15:00, 16:00, 17:00, 18:00, 19:00, 20:30</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" rowspan="3"><strong>세명대학교 동문 출발 →<br>동서울 (일요일/공휴일 운행하지 않음)</strong></th>
                                        <td>월,화,수,목</td>
                                        <td class="tL">12:00, 13:00, 14:00, 15:00, 16:30, 18:00, 19:30, 20:00</td>
                                    </tr>
                                    <tr>
                                        <td>금요일</td>
                                        <td class="tL">10:00, 11:00, 12:00 13:00 14:00, 15:00, 16:30, 18:00, 19:30, 20:00</td>
                                    </tr>
                                    <tr>
                                        <td>토요일</td>
                                        <td class="tL">12:00, 13:00, 14:00, 15:00, 16:30</td>
                                    </tr>
                                </tbody>
                            </table>
			</div>
			<br />
			<h5>요금 : 7,700원(본교 학생증 확인, 정상가격은 11,000원)</h5>
			<h5>매표 : 동서울터미널, 학생회관 CU (구 패밀리마트)</h5>

		</div>
	</div>

	<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>