
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

<title>학칙 · 규정</title>
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

function fn_comm_fileDownload(filename,filepath){			
	//var dFrm = WebSquare.document.getElementById("__DownlodFrm__");
    //if (dFrm == null) {
    //    dFrm = WebSquare.document.createElement("<iframe name='__DownlodFrm__'height='0px'></iframe>");
    //    WebSquare.document.body.insertAdjacentElement("beforeEnd",dFrm);
    //}
	
	if (filepath == null) {
		//fn_comm_msgBox("I", "0", "다운로드 파일 경로가 없습니다.");
		return;
	}
	var fileName = filename;       		       		
	fileName = encodeURIComponent(fileName);
	
	var filePath = filepath;       		
	
	//인코딩 2번함.. 지우지 마시오.
	fileName = encodeURIComponent(fileName);
	
	var url  = "http://www.semyung.ac.kr/FileDownLoad.jsp?";
		  url += "fileName="  + fileName;
		  url += "&filePath=" + filePath;
		  
		  console.log(url);

	//dFrm.src = url;

	//websquare_2.0_1.0950A.20110414.225046_1.5.jar 버전 시 적용
	//WebSquare.core.download(url,"","post");
	//WebSquare.net.download(url,"","post"); 
	window.location.href=url;
	
}	
</script>
</head>
<body>
	<jsp:include page="/semyungdi/header.jsp"></jsp:include>

	<div class="ui-box" id="uiaa">
	<div class="table_style">
		<table border="0" cellpadding="1" cellspacing="0">
			<tbody>
				<thead>
				<tr>
					<th class="td_title03">연&nbsp;번</td>
					<th class="td_title03" colspan="2">목
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 차</td>
					<th class="td_title03" align="center">다운로드</td>
				</tr>
				</thead>
			</tbody>
			<tbody>
				<tr>
					<th class="bLft0" align="center" colspan="4">제1편 학교법인</td>
				</tr>
				<tr>
					<th class="bLft0" align="center" class="td_title01">1</td>
					<td align="center" class="td_data01">1-1-1</td>
					<td style="text-align:left;padding-left:15px;">대원교육재단 정관</td>
					<td align="center" class="td_data01"><div 
					align="center">
							<a
								href="javascript:fn_comm_fileDownload('1-1-1___학교법인대원교육재단정관_2014년9월1일.hwp','/was_data/webapp/intradev/filedata/gadmin/upload/2014923246489606.hwp')"><img
								src="<%=context%>/semyungdi/images/han.gif" border="0" alt="한글파일"></a>
						</div></td>
				</tr>
				<tr>
					<th class="bLft0" align="center" colspan="4">제2편 학칙</td>
				</tr>
				<tr>
					<th class="bLft0" align="center" class="td_title01">2</td>
					<td align="center" class="td_data01">2-1-1</td>
					<td style="text-align:left;padding-left:15px;">세명대학교학칙</td>
					<td align="center" class="td_data01"><div align="center">
							<a
								href="javascript:fn_comm_fileDownload('2-1-1___세명대학교학칙_20160101.hwp','/was_data/webapp/intradev/filedata/gadmin/upload/20161191141386344.hwp')"><img
								src="<%=context%>/semyungdi/images/han.gif" border="0" alt="한글파일"></a>
						</div></td>
				</tr>
				<tr>
					<th class="bLft0" align="center" class="td_title01">3</td>
					<td align="center" class="td_data01">2-1-2</td>
					<td style="text-align:left;padding-left:15px;">세명대학교학사운영규정</td>
					<td align="center" class="td_data01"><div align="center">
							<a
								href="javascript:fn_comm_fileDownload('2-1-2___학사운영규정_20150301.hwp','/was_data/webapp/intradev/filedata/gadmin/upload/20153253342963.hwp')"><img
								src="<%=context%>/semyungdi/images/han.gif" border="0" alt="한글파일"></a>
						</div></td>
				</tr>
				<tr>
					<th class="bLft0" align="center"	colspan="4">제3편 행정</td>
				</tr>
				<tr>
					<th class="bLft0" align="center"	colspan="4">제3장 교무·연구행정</td>
				</tr>
				<tr>
					<th class="bLft0" align="center" class="td_title01">4</td>
					<td align="center" class="td_data01">3-3-1</td>
					<td style="text-align:left;padding-left:15px;">복수전공이수규정</td>
					<td align="center" class="td_data01"><div
							align="center">
							<a
								href="javascript:fn_comm_fileDownload('3-3-1___복수전공규정(개정)_전문.hwp','/was_data/webapp/intradev/filedata/gadmin/upload/2013319101638171.hwp')"><img
								src="<%=context%>/semyungdi/images/han.gif" border="0" alt="한글파일"></a>
						</div></td>
				</tr>
				<tr>
					<th class="bLft0" align="center" class="td_title01">5</td>
					<td align="center" class="td_data01">3-3-2</td>
					<td style="text-align:left;padding-left:15px;">부전공이수규정</td>
					<td align="center" class="td_data01"><div
							align="center">
							<a
								href="javascript:fn_comm_fileDownload('3-3-2___부전공규정(개정)_전문.hwp','/was_data/webapp/intradev/filedata/gadmin/upload/20133191017213964.hwp')"><img
								src="<%=context%>/semyungdi/images/han.gif" border="0" alt="한글파일"></a>
						</div></td>
				</tr>
				<tr>
					<th class="bLft0" align="center" class="td_title01">6</td>
					<td align="center" class="td_data01">3-3-4</td>
					<td style="text-align:left;padding-left:15px;">신입생전공선택시행세칙</td>
					<td align="center" class="td_data01">
					<div align="center">
							<a
								href="javascript:fn_comm_fileDownload('3-3-4___신입생전공선택시행세칙_20150701.hwp','/was_data/webapp/intradev/filedata/gadmin/upload/201576944455548.hwp')"><img
								src="<%=context%>/semyungdi/images/han.gif" border="0" alt="한글파일"></a>
						</div></td>
				</tr>
				<tr>
					<th class="bLft0" align="center" class="td_title01">7</td>
					<td align="center" class="td_data01">3-3-5</td>
					<td style="text-align:left;padding-left:15px;">교직과정운영규정</td>
					<td align="center" class="td_data01"><div
							align="center">
							<a
								href="javascript:fn_comm_fileDownload('3-3-5___교직과정운영규정_2014년3월1일.hwp','/was_data/webapp/intradev/filedata/gadmin/upload/201410211011369023.hwp')"><img
								src="<%=context%>/semyungdi/images/han.gif" border="0" alt="한글파일"></a>
						</div></td>
				</tr>
				<tr>
					<th class="bLft0" align="center" class="td_title01">8</td>
					<td align="center" class="td_data01">3-3-10</td>
					<td style="text-align:left;padding-left:15px;">수업평가시행내규</td>
					<td align="center" class="td_data01"><div
							align="center">
							<a
								href="javascript:fn_comm_fileDownload('3-3-10__수업평가시행내규_20150501.hwp','/was_data/webapp/intradev/filedata/gadmin/upload/2015717111225570.hwp')"><img
								src="<%=context%>/semyungdi/images/han.gif" border="0" alt="한글파일"></a>
						</div></td>
				</tr>
				<tr>
					<th class="bLft0" align="center" class="td_title01">9</td>
					<td align="center" class="td_data01">3-3-11</td>
					<td style="text-align:left;padding-left:15px;">특별학점인정내규</td>
					<td align="center" class="td_data01"><div
							align="center">
							<a
								href="javascript:fn_comm_fileDownload('3-3-11__특별학점인정내규_20150301.hwp','/was_data/webapp/intradev/filedata/gadmin/upload/201532534222493.hwp')"><img
								src="<%=context%>/semyungdi/images/han.gif" border="0" alt="한글파일"></a>
						</div></td>
				</tr>
				<tr>
					<th class="bLft0" align="center" class="td_title01">10</td>
					<td align="center" class="td_data01">3-3-13</td>
					<td style="text-align:left;padding-left:15px;">연계전공규정</td>
					<td align="center" class="td_data01"><div
							align="center">
							<a
								href="javascript:fn_comm_fileDownload('3-3-13__연계전공규정.hwp','/was_data/webapp/intradev/filedata/gadmin/upload/2013951142422333.hwp')"><img
								src="<%=context%>/semyungdi/images/han.gif" border="0" alt="한글파일"></a>
						</div></td>
				</tr>
				<tr>
					<th class="bLft0" align="center" class="td_title01">11</td>
					<td align="center" class="td_data01">3-3-21</td>
					<td style="text-align:left;padding-left:15px;">국내외인턴십운영규정</td>
					<td align="center" class="td_data01"><div
							align="center">
							<a
								href="javascript:fn_comm_fileDownload('3-3-21__국내외인턴십운영규정_20151201.hwp','/was_data/webapp/intradev/filedata/gadmin/upload/2015129110267195.hwp')"><img
								src="<%=context%>/semyungdi/images/han.gif" border="0" alt="한글파일"></a>
						</div></td>
				</tr>
				<tr>
					<th class="bLft0" align="center" class="td_title01">12</td>
					<td align="center" class="td_data01">3-3-22</td>
					<td style="text-align:left;padding-left:15px;">군복무중학점인정내규</td>
					<td align="center" class="td_data01"><div
							align="center">
							<a
								href="javascript:fn_comm_fileDownload('3-3-22__군복무중학점인정내규.hwp','/was_data/webapp/intradev/filedata/gadmin/upload/20143251049371011.hwp')"><img
								src="<%=context%>/semyungdi/images/han.gif" border="0" alt="한글파일"></a>
						</div></td>
				</tr>
				<tr>
					<th class="bLft0" align="center" class="td_title01">13</td>
					<td align="center" class="td_data01">3-3-23</td>
					<td style="text-align:left;padding-left:15px;">국내대학교류학생에관한시행세칙</td>
					<td align="center" class="td_data01"><div
							align="center">
							<a
								href="javascript:fn_comm_fileDownload('3-3-23__국내대학교류학생에관한시행세칙_20150901.hwp','/was_data/webapp/intradev/filedata/gadmin/upload/2015981030161181.hwp')"><img
								src="<%=context%>/semyungdi/images/han.gif" border="0" alt="한글파일"></a>
						</div></td>
				</tr>
			</tbody>
		</table>
		</div>
	</div>

	<jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>