<%@ page language="java" contentType="text/html;charset=utf-8"  session="true" %>
<%@ page import="java.net.*" %>

<%

	String  spageUrls = (String)session.getAttribute("spageUrl");
	
	System.out.println("=====Login Page : Login_mobile_A========" + spageUrls);

	String sWhoAreYou = (String) session.getAttribute("WhoAreYou?");
	String sOS = request.getParameter("sOS");

	String title_bar = (String)request.getParameter("title_bar");	
	
	String title_bar_img = "";
	if( title_bar != null )
	{
		title_bar_img = "2";
	}		String context = request.getContextPath();

%>
<script language='javascript'>

	sOS = navigator.systemLanguage;

</script>
<html>
<head>
<title>세명대학교 모바일 로그인</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="imagetoolbar" content="no"> 
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<link rel="apple-touch-icon" href="apple-touch-icon.png" />
<link rel="apple-touch-icon-precomposed" href="apple-touch-icon.png" />
<script type="text/javascript" src="<%=context%>/semyungdi/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="<%=context%>/semyungdi/js/iphone.js"></script>
<style type="text/css">
body	{ font-family: 굴림; font-size: 12px; }
table	{ font-size: 12px; font-family: "굴림"; border-collapse: "collapse";}
td		{ font-size: 12px; font-family: "굴림";}
img		{ border: 0; }

@import url("css/common_sub.css");

	
body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, p, blockquote, th, td 
{ margin : 0px; padding : 0px; border: 0px ; -webkit-text-size-adjust: none;}
h1,h2,h3,h4,h5,h6 { font-size : 100%; -webkit-text-size-adjust: none; }
ol,ul { list-style : none; -webkit-text-size-adjust: none; }
li { -webkit-text-size-adjust: none; }
address, caption, cite, code, dfn, em, th, var
{ font-style : normal; font-weight : normal; }
table { border-collapse : collapse; border-spacing : 0; }
fieldset,img { border : 0; }
caption,th { text-align : left; }
q:before, q:after { content :''; }
form { margin:0px; }

.bg_cont { background: url(images/login2/320/login-bg.png) repeat center top; }
.bg_cont2 { position: relative; width: 320px; height: 400px; margin: 0 auto; background: url(images/login2/320/login-bg2.png) no-repeat 0 -128px; }
.login_box { position: relative; width: 267px; height: 88px; top: 170px; margin: 0 auto 0 auto; background: url(images/login2/320/login-box.png) no-repeat 0 0; }
.login_box ul li { position: absolute; oveflow: hidden; }
.login_box .logo { position: relative; top: 172px; margin: 0 auto; width: 117px; height: 35px; background: url(images/login2/320/login-logo.png) no-repeat 0 0; }
.login_box ul li input { padding: 0px; width: 130; height: 22px; font: bold 15px/22px dotum;  color: black; border: solid 0px white; border-type: none; -webkit-tap-highlight-color: rgba(0,0,0,0); -webkit-border-radius: 1px; -webkit-appearance: none; }
.login_box ul li span { position: absolute; font: normal 14px/26px dotum; color: #999999; }

.in_id { top: 16px; left: 32px; }
.in_pass { top: 49px; left: 32px; }
.in_but { top: 12px; right: 13px; width: 63px; height: 63px; }
#login_but { display: block; width: 100%; height: 100%; background: url(images/login2/320/login-but.png) no-repeat 0 0; }

.bg_cont2 .txt { position: relative; width: 250px; top: 174px; margin: 0 auto; font: normal 13px dotum; color: #333333; text-shadow: 1px 1px 1px white; }	
</style>

<script language="javascript">
	function search(){

		var url='/reference/searchPop.jsp';
		window.open(url,'search','width=500,height=303,toolbar=no,status=no,location=no, scrollbars=no,menubar=no,resizable=no,left=450,top=300');

	}

	function ChkIdPass() {

		var id = loginForm.username.value;
		var pwd = loginForm.password.value;

		if( id.length < 1) {
			alert("아이디를 입력하십시오!");
			loginForm.username.focus();
			return false;
		}

		if( pwd.length < 1) {
			alert("비밀번호를 입력하십시오!");
			loginForm.password.focus();
			return false;
		}

		return true;

	}

	function LoginSubmit() {

		if(ChkIdPass()) {
			loginForm.submit();
		} else {
			return ;
		}

	}

	function f_guide() {

		cw=600;
		ch=500;
		sw=screen.availWidth;
		sh=screen.availHeight;
		px=(sw-cw)/2;
		py=(sh-ch)/2;

		window.open('./guide.htm','giude','left='+px+',top='+py+',width='+cw+',height='+ch+',toolbar=no,menubar=no,status=no,scrollbars=yes,resizable=yes');

	}

	function pro_focus( cid )
	{
		$("." + cid + " span").text( "" );
	}
</script>
</head>

<body width="100%" leftmargin="0" topmargin="0">
<div id="topsection">
<table  width="100%" height="56" border="0" cellpadding="0" cellspacing="0"  background="images2/top_bg.png">
	<tr>
		<td width="10%" height="56"><a href="<%=context%>/semyungdi/index.jsp"><img src="<%=context%>/semyungdi/images2/top_before.png" border="0"></td>
		<td width="75%" height="56"  align="center"><img src='<%=context%>/semyungdi/images/ulife_top<%=title_bar_img%>.png' border='0'></td>
		<td width="15%" height="56" align="center"> <a href="<%=context%>/semyungdi/index.jsp"><img src="<%=context%>/semyungdi/images2/top_home.png" border="0"></a></td>
 
	</tr>
</table>
<table  width="100%" height="4" border="0" cellpadding="0" cellspacing="0"  background="<%=context%>/semyungdi/images2/top_line_1px.png">
	<tr>
		<td width="100%" height="4"><img src="<%=context%>/semyungdi/images2/top_line.png" border="0"></td>
	</tr>	
</table>				
</div>
 <div id="content_body" >
<table width="100%"  height="40" border="0" cellpadding="0" cellspacing="0"  background="<%=context%>/semyungdi/images2/title_menu_bg.png">
	<tr>
		<td width="100%"  height="10" colspan="3"></td>
	</tr>
</table>


<!--- MAIN START --->
<form name="loginForm" method="post" action="https://login.semyung.ac.kr/Mobile_Login_Proc.jsp" autocomplete=off>
<!--<form name="loginForm" method="post" action="Login_check.jsp" autocomplete="off">-->
<!--<form name="loginForm" method="post" action="./Mobile_login_check3.jsp" autocomplete="off">-->
<!--<INPUT type="hidden" name="spageUrl" value="A">-->
<INPUT type="hidden" name="signed_data" value="">
<INPUT type="hidden" name="spageUrl" value="<%=spageUrls%>">

<div class="bg_cont">
	<div class="bg_cont2">
		<div class="login_box">
			<ul>
				<li class="in_id">
					<span>아이디</span>
					<input type="text" name="username" id="username" maxlength="20" value="" tabindex="1" onkeydown="pro_focus( 'in_id' )" />
				</li>
				<li class="in_pass">
					<span>비밀번호</span>
					<input type="password" name="password" id="password" maxlength="20" value="" onkeydown="if (event.keyCode == 13) javascript:LoginSubmit(); pro_focus( 'in_pass' )" tabindex="2" /></li>
				<li class="in_but">
					<a id="login_but" href="javascript:LoginSubmit();" onfocus="this.blur();"></a>
				</li>
				<li class="logo"></li>
			</ul>
		</div>
		<div class="txt">
			<ul>
				<li>
				교내 포탈시스템 아이디 및 비밀번호와 동일하게 로그인 하시면 됩니다.
				</li>
			</ul>
		</div>
	</div>
</div>

</form>
<!--- MAIN END --->


	<table  width="100%"   border="0" cellpadding="0" cellspacing="0" bgcolor="#565656">
		<tr>
			<td width="100%" height="10" align="center" colspan="2"></td>
		</tr>
		<tr>
			<td width="220" align="center"><img src="<%=context%>/semyungdi/images2/main_footer.png" border="0"></td>
			<td width="60%" align="right"><img src="<%=context%>/semyungdi/images2/main_footer_sm_logo.png" border="0"></td>
		</tr>
	</table>
		<TD>
	</TR>							 
</TABLE>


<script language="javascript">
	loginForm.username.focus();
</script>
 
</form>
</BODY>
</HTML>