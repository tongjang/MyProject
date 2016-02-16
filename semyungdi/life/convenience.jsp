 
<%@ page language="java" contentType="text/html; charset=utf-8" session="false" %>
<%
	String context = request.getContextPath();
%>

<html>
<head><script language="javascript">

	sOS = navigator.systemLanguage;

</script>

<title>편의시설</title>
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
	$('.conv-box').hide();
	$('#imgaa').show();
});

function tapClickFunction(id){
	$('.smu-list').removeClass('on');
	$('#'+id).addClass('on');
	
	$('.conv-box').hide();
	$('#img'+id).show();
	return false;
}

</script>
</head>
<body>
		<jsp:include page="/semyungdi/header.jsp"></jsp:include>
		
		<div class="smu_tab_link">
			<a href="#;" id="aa" class="smu-list on" onclick="tapClickFunction('aa');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">편의점</a>
			<a href="#;" id="bb" class="smu-list" onclick="tapClickFunction('bb');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">학생식당</a>
			<a href="#;" id="cc" class="smu-list" onclick="tapClickFunction('cc');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">학생휴게실</a>
			<a href="#;" id="dd" class="smu-list" onclick="tapClickFunction('dd');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">서점</a>
			<a href="#;" id="ee" class="smu-list" onclick="tapClickFunction('ee');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">은행</a>
			<a href="#;" id="ff" class="smu-list" onclick="tapClickFunction('ff');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">우체국</a>
			<a href="#;" id="gg" class="smu-list" onclick="tapClickFunction('gg');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">미용실</a>
			<a href="#;" id="hh" class="smu-list" onclick="tapClickFunction('hh');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">복사실</a>
			<a href="#;" id="ii" class="smu-list" onclick="tapClickFunction('ii');" style="border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(227, 227, 227);">안경점</a>
		</div>
	
      <div class="ui-box">
	      	<div class="conv-box" id="imgaa">
				<div class="greeting_img" align="center">
					<img src="<%=context%>/semyungdi/images/img_store01.jpg"></img>	
		        </div>
		        <div  class="fund" style="margin-top: 10px; margin-left: 10px;">
				<h4>학생회관 편의점</h4>
				<p style="margin-top: 5px;">
					· 위치 :학생회관 1층<br/>
					· 전화번호 :043) 645-8580<br/>
					· 이용시간 :08:30~20:30<br/>
					· 서비스 내용 :식권, 복사카드, 각종 제과, 빙과, 음료 판매<br/><br/><br/>
				</p>
	      		</div>
	      		
	      		<div class="greeting_img" align="center">
					<img src="<%=context%>/semyungdi/images/img_store02.jpg"></img>	
		        </div>
	      		<div  class="fund" style="margin-top: 10px; margin-left: 10px;">
				<h4>도서관 편의점</h4>
				<p style="margin-top: 5px;">
					· 위치 :도서관 지하 1층<br/>
					· 전화번호 :043) 645-2540<br/>
					· 이용시간 :08:30~20:30<br/>
					· 서비스 내용 :식권, 복사카드, 각종 제과, 빙과, 음료 판매<br/>
				</p>
	      		</div>
			</div>
			<div class="conv-box" id="imgbb">
				<div class="greeting_img" align="center">
					<img src="<%=context%>/semyungdi/images/img_store03.jpg"></img>	
		        </div>
		        <div  class="fund" style="margin-top: 10px; margin-left: 10px;">
				<h4>학생회관 식당</h4>
				<p style="margin-top: 5px;">
					· 위치 :학생회관 1층<br/>
					· 전화번호 :043) 645-8580<br/>
					· 이용시간 :08:30~19:00<br/>
					· 서비스 내용<br/>
					· 200여평의 공간에 250여석의 좌석을 갖추어<br/>
					· 학생들의 식사문제를 해결해주는 역할을 한다.<br/>
				</p>
	      		</div>
	      		
	      		<div class="greeting_img" align="center">
					<img src="<%=context%>/semyungdi/images/img_store04.jpg"></img>	
		        </div>
	      		<div  class="fund" style="margin-top: 10px; margin-left: 10px;">
				<h4>도서관 식당</h4>
				<p style="margin-top: 5px;">
					· 위치 :도서관 지하<br/>
					· 전화번호 :043) 645-2540<br/>
					· 이용시간 :08:30~19:00<br/>
					· 서비스 내용<br/>
					· 600여평의 공간에 700여석의 좌석을 갖추어<br/>
					· 학생들의 식사문제를 해결해주는 역할을 한다.<br/>
				</p>
	      		</div>
			</div>
			<div class="conv-box" id="imgcc">
				<div class="greeting_img" align="center">
					<img src="<%=context%>/semyungdi/images/img_store05.jpg"></img>	
		        </div>
		        <div  class="fund" style="margin-top: 10px; margin-left: 10px;">
				<h4>학생 휴게실</h4>
				<p style="margin-top: 5px;">
					· 위치 :학생회관 3층 솔수펑이<br/>
					· 이용시간 :09:00~18:00<br/>
					· 서비스 내용<br/>
					· 솔수펑이’ 순우리말로 소나무 숲이 있는 곳이란 뜻으로<br/>
					· 학생들이 학교 안에서도 소나무 밭에 있는 느낌 그대로<br/>
					· 편안하게 쉴 수 있도록 만든 학생들만의 휴식공간이다.<br/>
				</p>
	      		</div>
			</div>
			<div class="conv-box" id="imgdd">
				<div class="greeting_img" align="center">
					<img src="<%=context%>/semyungdi/images/img_store06.jpg"></img>	
		        </div>
		        <div  class="fund" style="margin-top: 10px; margin-left: 10px;">
				<h4>서점</h4>
				<p style="margin-top: 5px;">
					· 위치 :도서관 지하 1층<br/>
					· 전화번호 :043) 649-1395<br/>
					· 이용시간 :09:00~19:00<br/>
					· 서비스 내용 :전공 서적 및 각종 교양 도서, 정기간행물 <br/>
					· 교재 등 다양한 서적을 구비하는 한편<br/>
					· 각종 문구류를 판매한다<br/>
				</p>
	      		</div>
			</div>
			<div class="conv-box" id="imgee">
				<div class="greeting_img" align="center">
					<img src="<%=context%>/semyungdi/images/img_store07.jpg"></img>	
		        </div>
		        <div  class="fund" style="margin-top: 10px; margin-left: 10px;">
				<h4>은행</h4>
				<p style="margin-top: 5px;">
					· 위치 :학생회관 1층<br/>
					· 전화번호 :043) 649-1379<br/>
					· 이용시간 :09:00~16:30<br/>
					· 서비스 내용<br/>
					· 시중은행과 같은 은행업무를 담당하며 학생들의 편의를<br/>
					· 도모하고자 각 건물(학생회관, 도서관, 본관)에 <br/>
					· 현금자동지급기를 설치해 두었다.<br/>
				</p>
	      		</div>
			</div>
			<div class="conv-box" id="imgff">
				<div class="greeting_img" align="center">
					<img src="<%=context%>/semyungdi/images/img_store08.jpg"></img>	
		        </div>
		        <div  class="fund" style="margin-top: 10px; margin-left: 10px;">
				<h4>우체국</h4>
				<p style="margin-top: 5px;">
					· 위치 :학생회관 1층<br/>
					· 전화번호 :043) 649-1796<br/>
					· 이용시간 :09:00~18:00<br/>
					· 서비스 내용<br/>
					· 우편물 접수, 예금, 보험, 공과금수납, 우편주문 판매 등<br/>
					· 우체국에 들어서면 한자리에서 모든 업무를<br/>
					· 손쉽게 처리할 수 있도록 종합적인 서비스 편의를<br/>
					· 제공하고 있다.<br/>
				</p>
	      		</div>
			</div>
			<div class="conv-box" id="imggg">
				<div class="greeting_img" align="center">
					<img src="<%=context%>/semyungdi/images/img_store13.jpg"></img>	
		        </div>
		        <div  class="fund" style="margin-top: 10px; margin-left: 10px;">
				<h4>미용실</h4>
				<p style="margin-top: 5px;">
					· 위치 :학생회관 1층<br/>
					· 전화번호 :043) 649-1396<br/>
					· 이용시간 :09:00~19:30<br/>
					· 서비스 내용<br/>
					· 시중 미용실과 같은 서비스를 제공하고 시중가 보다<br/>
					· 30～50% 할인된 가격으로 서비스를 제공한다.<br/>
				</p>
	      		</div>
			</div>
			<div class="conv-box" id="imghh">
				<div class="greeting_img" align="center">
					<img src="<%=context%>/semyungdi/images/copy_2014_4_15.jpg"></img>	
		        </div>
		        <div  class="fund" style="margin-top: 10px; margin-left: 10px;">
				<h4>복사실</h4>
				<p style="margin-top: 5px;">
					· 위치 :사회과학관 1층<br/>
					· 전화번호 :043) 649-7288<br/>
					· 이용시간 :09:00~19:00<br/>
					· 서비스 내용<br/>
					· 각종 실사출력 및 제본, 각종 포스터, 학회지, 각종 보고서 제작<br/>
				</p>
	      		</div>
			</div>
			<div class="conv-box" id="imgii">
				<div class="greeting_img" align="center">
					<img src="<%=context%>/semyungdi/images/img_store11.jpg"></img>	
		        </div>
		        <div  class="fund" style="margin-top: 10px; margin-left: 10px;">
				<h4>안경점</h4>
				<p style="margin-top: 5px;">
					· 위치 :사회과학관 1층<br/>
					· 전화번호 :043) 649-7288<br/>
					· 이용시간 :09:00~19:00<br/>
					· 서비스 내용<br/>
					· 각종 실사출력 및 제본, 각종 포스터, 학회지, 각종 보고서 제작<br/>
				</p>
	      		</div>
			</div>
       </div>
    <jsp:include page="/semyungdi/gnb.jsp"></jsp:include>
	<jsp:include page="/semyungdi/footer.jsp"></jsp:include>
</body>
</html>