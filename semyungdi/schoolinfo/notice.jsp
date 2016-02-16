 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>학사공지사항</title>
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
var jdata_id        = new Array();
var jdata_no        = new Array();
var jdata_rowId     = new Array();
var jdata_dept      = new Array();
var jdata_subject   = new Array();
var jdata_wDate		= new Array();
var jdata_viewCount	= new Array();

var cnt = 0;
$(document).ready(function(){
	getXML();
});
function getXML(){
	$.ajax
	({
		url      : "http://semyung.ac.kr/mobileXML.smu",	
		dataType : "xml",
		success  : 
			function(data) {
				xml2arr( data );
			}
	});
}

function xml2arr( data ){
	$(data).find("notice").each(

	function(){
		jdata_id[cnt]         = $(this).attr("id"); 
		jdata_no[cnt]         = $(this).find("no").text(); 
		jdata_rowId[cnt]      = $(this).find("rowId").text(); 
		jdata_dept[cnt]       = $(this).find("dept").text(); 
		jdata_subject[cnt]    = $(this).find("subject").text(); 
		jdata_wDate[cnt]      = $(this).find("wDate").text();  
		jdata_viewCount[cnt]  = $(this).find("viewCount").text(); 

		cnt++;	
	});
	showTableList();
}

function showTableList(){
	var html_str ="";
	for(var i=0; i<10; i++ ){
		html_str += "<li><dl><dt><a href='http://semyung.ac.kr/schoolinfo.smu?action=notice01&BOARD_NUM=" + jdata_rowId[i] + "'><span class='noti-subject'>";
		if(i<2)
			html_str += "<strong>"+jdata_subject[i]+"</strong></span></a></dt><dd>";
		else
			html_str += jdata_subject[i]+"</span></a></dt><dd>";
			
		html_str += jdata_wDate[i]+"</dd></dl></li>";
	}

	html_str += "";
	$("#container_list").append( html_str );

}
</script>
</head>
<body>
		<jsp:include page="/semyungdi/header.jsp"></jsp:include>
	
      <div class="ui-box">
		<div class="founder-box2">
			<ul id="container_list">
				
			</ul>
			<!-- <ul>
				<li>
					<dl>
						<dt>
							<span class="noti-subject">[공지]2016학년도 1학기(추가) 교수초빙</span>
						</dt>
						<dd>
							교무/연구팀 | 2015.12.31
						</dd>
					</dl>
				</li>
			</ul> -->
		</div>
	</div>
	
    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>