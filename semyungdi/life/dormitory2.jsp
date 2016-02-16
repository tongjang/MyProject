 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>학생생활관</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="imagetoolbar" content="no"> 
<meta name="viewport" content="width=device-width; initial-scale=1.0; user-scalable=yes, target-densitydpi=medium-dpi">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="apple-touch-icon-precomposed" href="apple-touch-icon.png">
<link rel="stylesheet" type="text/css" href="<%=context%>/semyungdi/css/mcommon.css" />
<style type="text/css">
.backslash {
    background-image: url(../backslash.png)!important;
    background-size: 100% 100%!important;
    text-align: left!important;
}
</style>
<script type="text/javascript" src="<%=context%>/semyungdi/js/iphone.js"></script>
<script type="text/javascript" src="<%=context%>/semyungdi/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="<%=context%>/semyungdi/js/common.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
		<jsp:include page="/semyungdi/header.jsp"></jsp:include>
	
      <div class="ui-box">
		<div  class="table_style">
                     <table style="width:630;" summary="분과, 동아리명, 목적 및 취지">

                                <colgroup>
                                    <col width="40">
                                    <col width="65">
                                    <col width="80">
                                    <col width="80">
									<col width="80">
									<col width="80">
									<col width="90">
									<col width="100">
                                </colgroup>

                                <thead>
                                    <tr>
                                        <th width="125" scope="col" class="backslash">분야별</th>
                                        <th colspan="3" scope="col">학 습</th>
                                        <th width="67" scope="col">스펙타클</th>
                                        <th width="46" scope="col">봉사</th>
                                        <th width="76" scope="col" colspan="2">문화예술</th>
                                        <th width="107" scope="col">취·창업</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row" rowspan="2">커뮤니티</th>
                                        <td colspan="3"><span style="color:red;">놀부(놀</span>며 공<span style="color:red;">부</span>하며)커뮤니티</td>
                                        <td rowspan="2">스포츠</td>
                                        <td rowspan="2">봉사</td>
                                        <td colspan="2"><span style="color:blue;">흥부(흥</span>이 풍<span style="color:blue;">부</span>한)<br>커뮤니티</td>
                                        <td rowspan="2">취창업<br>커뮤니티</td>
                                    </tr>
                                    <tr>
                                      <td>세명<br>튜터링</td>
                                      <td>필통<br>(<span style="color:red;">FEEL이<br>통하는 학습</span>)</td>
                                      <td>글쓰기/토익<br>/IT/기초학문</td>
                                      <td>문화예술</td>
                                      <td>SMU<br>독서통아리</td>
                                    </tr>

                                    <tr>
                                        <th scope="row" rowspan="6">내 용</th>
                                        <td rowspan="6" style="font-size:10px;">선·후배간<br>특정<br>전공과목<br>스터디를<br>통한 전공<br>학습 능력<br>향상</td>
                                        <td rowspan="6" style="font-size:10px;">소속 전공<br>분야 학습을<br>통한 실용<br>전문지식<br>배양(자격증,<br>고시, 공모전)</td>
                                        <td rowspan="6" style="font-size:10px;">기초교육<br>(자기소개서,<br>면접대비<br>말하기,<br>보고서및<br>논문쓰기,<br>토익,MOS,<br>수학,물리)<br>을 통한 <br>기초역량<br>강화</td>
                                        <td rowspan="6" style="font-size:10px;">체육활동을<br>통한 학생들<br>간의 유대관계<br>증진 및<br>인성과<br>지성을<br>겸비한<br>건강한<br>세명인 실현</td>
                                        <td rowspan="6" style="font-size:10px;">자발적이고<br>활동적이며<br>체계적이고<br>지속적인<br>봉사활동의<br>초석을<br>마련하여<br>인성중심<br>교육 실현</td>
                                        <td rowspan="6" style="font-size:10px;">학생 개개인의<br>취미 공유를<br>통해<br>소통하여<br>학생들 간의<br>유대관계<br>증진 및<br>역동적인<br>학교생활<br>실현</td>
                                        <td rowspan="6" style="font-size:10px;">학우들끼리<br>같은 책을<br>읽으면서<br>상호간<br>의견교환을<br>통해 사고력<br>증진 및 토론<br>기술 습득</td>
                                        <td rowspan="6" style="font-size:10px;">재학생의<br>자발적인<br>취·창업<br>활동 지원</td>
                                    </tr>

                                    <tr>

                                    </tr>

                                    <tr>

                                    </tr>

                                    <tr>

                                   </tr>

                                    <tr>

                                    </tr>

                                    <tr>

                                    </tr>
                                    
                                     <tr>
                                      <th>운영부서</th>
                                      <td colspan="2">대학교육혁신본부</td>
                                        <td>교양교육원</td>
                                        <td colspan="3">학생처</td>
                                        <td>민송도서관</td>
                                        <td>취업지원처</td>
                                    </tr>

                                    <tr>
                                      <th>위치/연락처</th>
                                      <td colspan="2">디자인학관 501-2호<br>(☏649-7164, 7165)</td>
                                        <td>학술관 207호<br>(☏649-7065)</td>
                                        <td colspan="3">학생회관 509호<br>(☏649-1143, 1148, 7075)</td>
                                        <td>민송도서관<br>303호<br>(☏649-7002)</td>
                                        <td>학술분과<br>201호<br>(☏649-0347)</td>

                                    </tr>
                                </tbody>
                            </table>
		</div>
	</div>
    

    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>