<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head>
<script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>대학편제</title>
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
$(document).ready(function(){
	$('.ui-box').hide();
	$('#imgaa').show();
});

function tapClickFunction(id){
	$('.smu-list').removeClass('on');
	$('#'+id).addClass('on');
	
	$('.ui-box').hide();
	$('#img'+id).show();
	return false;
}
</script>
</head>
<body>
		<jsp:include page="/semyungdi/header.jsp"></jsp:include>
		<div class="smu_tab_link">
			<a href="#;" id="aa" class="smu-list on" onclick="tapClickFunction('aa');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">문·사회계열</a>
			<a href="#;" id="bb" class="smu-list" onclick="tapClickFunction('bb');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">자연과학·공학계열</a>
			<a href="#;" id="cc" class="smu-list" onclick="tapClickFunction('cc');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">예·체능계열</a>
		</div>
		<div class="ui-box" id="imgaa">
			<div class="fund" style="margin: 20px; backg">
					<h4>인문·사회계열</h4>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://koreal.semyung.ac.kr/"><span>미디어문화학부</span></a></dt>
					<dd>
						<ul>
			              <li class="li1"><a href="http://koreal.semyung.ac.kr/flow/?ref=menu/view.emt&menu_table=m1_00&menu_idx=020300">· 미디어한국어문학</a><br/>
			              <a href="http://koreal.semyung.ac.kr/flow/?ref=menu/view.emt&menu_table=m1_00&menu_idx=020200">· 외국어로서의 한국어교육</a></li>
			            </ul>
						<ul>
			            </ul>
			         </dd>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://media-c.semyung.ac.kr/"><span style="background-image:none;">디지털콘텐츠창작학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://eng.semyung.ac.kr/"><span style="background-image:none;">영어학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://china.semyung.ac.kr/"><span style="background-image:none;">중국어학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://japan.semyung.ac.kr/"><span style="background-image:none;">일본어학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://smwel.semyung.ac.kr/"><span style="background-image:none;">사회복지학과</span></a></dt>
				</dl>
			</div>`
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://lawpadp.semyung.ac.kr/"><span>경찰·공공행정학부</span></a></dt>
					<dd>
						<ul>
			              <li class="li2"><a href="http://lawpadp.semyung.ac.kr/category_main.php?f_submenus=0402">· 공공행정학</a></li>
			              <li class="li2"><a href="http://lawpadp.semyung.ac.kr/category_main.php?f_submenus=0403">· 경찰행정학</a></li>
			            </ul>
			         </dd>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://law.semyung.ac.kr/"><span style="background-image:none;">법학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://dfem.semyung.ac.kr/"><span style="background-image:none;">소방방재학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://realestate.semyung.ac.kr/"><span style="background-image:none;">부동산학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://smbat.semyung.ac.kr/"></a><span>글로벌경영학부</span></dt>
					<dd>
						<ul>
			              <li class="li2"><a href="http://biz.semyung.ac.kr/">· 경영학</a></li>
			              <li class="li2"><a href="http://smacc.semyung.ac.kr/">· 회계학</a></li>
			              <li class="li2"><a href="http://smit.semyung.ac.kr/">· 무역학</a></li>
			            </ul>
			         </dd>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://ebiz.semyung.ac.kr/"><span style="background-image:none;">전자상거래학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://smadpr.semyung.ac.kr/"><span style="background-image:none;">광고홍보학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://htd.semyung.ac.kr/"><span style="background-image:none;">호텔관광경영학과</span></a></dt>
				</dl>
			</div>
		</div>
		
		<div class="ui-box" id="imgbb">
			<div class="fund" style="margin: 20px; backg">
					<h4>자연과학·공학계열</h4>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://scs.semyung.ac.kr/"><span style="background-image:none;">컴퓨터학부</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://smics.semyung.ac.kr/"><span style="background-image:none;">정보통신학부</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://smel.semyung.ac.kr/"><span style="background-image:none;">전기공학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://cec.semyung.ac.kr/new/index.htm"><span style="background-image:none;">전자공학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://bio.semyung.ac.kr/"><span style="background-image:none;">바이오환경공학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://healthsaf.semyung.ac.kr/"><span style="background-image:none;">보건안전공학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://smae.semyung.ac.kr/"><span style="background-image:none;">건축공학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://smce.semyung.ac.kr/"><span style="background-image:none;">토목공학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://smhani.semyung.ac.kr/"><span style="background-image:none;">한의예과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://nurse.semyung.ac.kr/"><span style="background-image:none;">간호학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://clinic.semyung.ac.kr/"><span style="background-image:none;">임상병리학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://smot.semyung.ac.kr/"><span style="background-image:none;">작업치료학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://smbio.semyung.ac.kr/"><span>한방바이오융합과학부</span></a></dt>
					<dd>
						<ul>
			              <li class="li1"><a href="http://orifood.semyung.ac.kr/">· 식품영양학</a><br/>
			              · 한방바이오융합학전공<br/>
			              &nbsp;&nbsp;<a href="http://orifood.semyung.ac.kr/sub_01_06.htm">· 한방식품과학 트랙</a><br/>
			              &nbsp;&nbsp;<a href="http://naturalmed.semyung.ac.kr/">· 한방의약과학 트랙</a><br/>
			              &nbsp;&nbsp;<a href="http://smoh.semyung.ac.kr/">· 한방화장품과학 트랙</a><br/>
			              </li>
			            </ul>
						<ul>
			            </ul>
			         </dd>
				</dl>
			</div>
		</div>
		
		<div class="ui-box" id="imgcc">
			<div class="fund" style="margin: 20px; backg">
					<h4>예·체능계열</h4>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://design.semyung.ac.kr"><span>융합디자인학부</span></a></dt>
					<dd>
						<ul>
			              <li class="li1"><a href="http://ivd.semyung.ac.kr/">· 산업시각디자인학</a><br/>
			              <a href="http://sid1996.semyung.ac.kr/">· 공간환경디자인학</a><br/>
			              <a href="http://fashion.semyung.ac.kr/">· 패션문화디자인학</a><br/>
			              </li>
			            </ul>
			         </dd>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://smsports.semyung.ac.kr/"><span>생활체육학과</span></a></dt>
					<dd>
						<ul>
			              <li class="li1"><a href="http://smsports.semyung.ac.kr/">· 골프산업학 트랙</a></li>
			            </ul>
			         </dd>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://smenter.semyung.ac.kr/"><span style="background-image:none;">공연영상학과</span></a></dt>
				</dl>
			</div>
			<div class="sitemap">
				<dl class="stmap_01">
					<dt><a href="http://kyoyang.semyung.ac.kr/"><span style="background-image:none;">교양과정부</span></a></dt>
				</dl>
			</div>
		</div>
    
    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>