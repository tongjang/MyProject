////////////////////////////////////////////////////////////////////////////////////
//
// KSignCASE-Web v2.0 javascript function definition.
//
////////////////////////////////////////////////////////////////////////////////////

function CheckAX()
{
	var Installed = false;
	// AxKSignCASE 프로젝트 일때
	var KSIGNActiveXProgID = "AxSMU.AxSMU.1"
	
	try
	{
		var xObj = new ActiveXObject(KSIGNActiveXProgID);
	
		if(xObj){
			Installed = true;
		}
		else
		{
			Installed = false;
		}
	}
	catch(ex)
	{
		Installed = false;
	}
	
	return Installed;
} 

function InitConfig()
{
	var ret;

	//////////////////////////////////////////////////////////////////////////////////
	// 환경설정시 변경하지 않는 환경 변수의 경우 BSTR 형은 ""을 int형은 -1을 입력한다.
	//////////////////////////////////////////////////////////////////////////////////

	//////////////////////////////////////////////////////////////////////////////////
	// SetAppCommon(BSTR PkiType, int nNtCa, int nActiveDs, int *retval)
	// [APP_COMMON]의 정보를 Setting 하는 함수 
	// 1. BSTR PkiType : CA의 종류를 	
	//	#define AXKCASE_COMMON_PKITYPE_NPKI		("NPKI")
	//	#define AXKCASE_COMMON_PKITYPE_GPKI		("GPKI")
	//	#define AXKCASE_COMMON_PKITYPE_PPKI		("PPKI")
	// 2. int nNtCa : CA의 종류가 Nt인지 아닌지 (1/0)				
	// 3. int nActiveDs : DS가 Active 디렉토리인지 아닌지 (1/0)	
	//////////////////////////////////////////////////////////////////////////////////

	ret = document.AxKCASE.SetAppCommon("PPKI", 0, 1);

                   
	//////////////////////////////////////////////////////////////////////////////////
	// SetCMPInform(BSTR CaIp, int nCmpPort, BSTR CmpKmCertDn, BSTR CmpDsIp,
	//					int nDsPort, int nWtlsCert, int nCmpCaVer, int *retval)
	// [CMP_INFORM]의 정보를 Setting 하는 함수 
	// 1. BSTR CaIp : CA 서버의 IP 주소 
	// 2. int nCmpPort : CA 서버의 cmp 포트
	// 3. BSTR CmpKmCertDn : VID를 위한 암호키분배 인증서 DN
	// 4. BSTR CmpDsIp : DS 서버 IP 주소 
	// 5. int nDsPort : DS 서버 포트 
	// 6. int nWtlsCert : 인증서가 Wtls용인지 아닌지 (1/0)
	// 7. int nCmpCaVer : CA 서버 버전 
	//////////////////////////////////////////////////////////////////////////////////

	ret = document.AxKCASE.SetCMPInform("211.114.146.15", 4502, "", "211.114.146.15", 389, 0, 2);


	//////////////////////////////////////////////////////////////////////////////////
	// SetPKCSInform(int nSign_ContentInc,	int nSign_CertPathInc, int nSign_CvOp,
	//				 int nSign_EncOaep, int nSign_SaveCert,	int nEnc_SignCertOp,
	//               int nEnc_LocalKmCert,  int nEnc_SaveCert, char *pszEncAlgo) 
	// [PKCS_INFORM]의 정보를 Setting 하는 함수 
	// 1. int nSign_ContentInc : 전자서명시 원문 포함/미포함 (1/0)
	// 2. int nSign_CertPathInc : 전자서명시 인증서 Chain 포함/미포함 (1/0)
	// 3. int nSign_CvOp : 전자서명시 서명용 인증서 검증 옵션 (1/0)
	// 4. int nSign_EncOaep : RSA OAEP 사용 선택 옵션 (1/0)	
	// 5. int nSign_SaveCert : 전자서명 검증시 인증서 저장 옵션 (1/0)	
	// 6. int nEnc_SignCertOp : 암호화시 서명용 인증서 사용 옵션 (1/0)
	// 7. int nEnc_LocalKmCert : 암호화시 인증서 참조 로컬 우선순위 (1/0)
	// 8. int nEnc_SaveCert : 암호화시 인증서 저장 옵션 (1/0)	
	// 9. char* pszEncAlgo : 암호화시 사용할 기본 알고리즘  (SEED, DES, 3DES, RC2)
	//////////////////////////////////////////////////////////////////////////////////

	ret = document.AxKCASE.SetPKCSInform(1, 0, 0, 0, 0, 0, 1, 1, "SEED");


	//////////////////////////////////////////////////////////////////////////////////
	// SetCVInform(int nAnyPolicy, BSTR ArlDn, BSTR Policies, int nPathValOp,
	// BSTR ValMethod, BSTR Crl_ChkOp, int nCrl_SaveOp, int *retval)
	// [CV_INFORM]의 정보를 Setting 하는 함수 
	// 1. int nAnyPolicy : 모든정책 허용 옵션 (1/0)	
	// 2. BSTR ArlDn : CA 인증서의 ARL 분기점이 없을 경우 ARLDN 값 설정
	// 3. BSTR Policies : 초기 정책 집합
	// 4. int nPathValOp : 인증 경로 검증 옵션 (1/0)	
	// 5. BSTR ValMethod : CRL/OCSP 검증 옵션 (CRLCHECK_OCSP, CRLCHECK_CRL)	
	// 6. BSTR Crl_ChkOp : CRL 검증 옵션 
	//                          (CRL_CHECK_FULL, CRL_CHECK_USERONLY, CRL_CHECK_NONE)
	// 7. int nCrl_SaveOp : CRL 저장 옵션 (1/0)
	//////////////////////////////////////////////////////////////////////////////////

	ret = document.AxKCASE.SetCVInform(1, "", "1.2.3.4.5|2.5.29.32.0|1.2.392.200132|1.2.392.200132.1|1.2.392.200132.1.1|1.2.392.200132.1.1.1|1.2.410.200004.2.1|1.2.410.200004.5.1.1.5|1.2.410.200004.5.1.1.7|1.2.410.200004.5.2.1.1|1.2.410.200004.5.2.1.2|1.2.410.200004.5.3.1.1|1.2.410.200004.5.3.1.2|1.2.410.200004.5.3.1.4|1.2.410.200004.5.4.1.1|1.2.410.200004.5.4.1.2|1.2.410.200004.5.4.1.3|1.2.410.200004.5.4.1.4|1.2.410.200004.5.4.1.5|1.2.410.200004.5.4.1.7|1.2.410.200005.1.1.1|1.2.410.200005.1.1.5|1.2.410.200012.1.1.1|1.2.410.200012.1.1.3|1.2.410.100001.2.2.1",
	1, "CRLCHECK_CRL", "CRL_CHECK_FULL", 0);


	//////////////////////////////////////////////////////////////////////////////////
	// SetOPPInform(BSTR RaAdmin_Path, int AdminPort, int *retval)	
	// [OPP_INFORM]의 정보를 Setting 하는 함수 
	// 1. BSTR RaAdmin_Path : RA 인증서 저장 위치
	//        "%ProgramFiles%\\NPKI\pki\\RA" "%FloppyDrive%\\NPKI\\pki\\RA" 
	// 2. int AdminPort : CA의 Admin 포트
	//////////////////////////////////////////////////////////////////////////////////

	ret = document.AxKCASE.SetOPPInform("", 8502);


	//////////////////////////////////////////////////////////////////////////////////
	// SetCMInform(BSTR PriKey_EncAlg, int *retval)	
	// [CM_INFORM]의 정보를 Setting 하는 함수 
	// 1. BSTR PriKey_EncAlg : 개인키 암호화 알고리즘	
	//	  "KCP_PBEWithMD2DES_CBC" "PBE_ENCALGO_MD5DES" 	
	//	  "PBE_ENCALGO_SHA1SEED" "PBE2_ENCALGO_SHA1SEED"
	//	  "PBE2_ENCALGO_SHA1DESEDE" 
	//////////////////////////////////////////////////////////////////////////////////

	ret = document.AxKCASE.SetCMInform("PBE_ENCALGO_SHA1SEED");

	
	//////////////////////////////////////////////////////////////////////////////////
	// SetSubjectInform(  BSTR szSubjectDefaultMedia, 
	//                    int nSubjectPwdPolicyOp, 
	//                    int nSubjectPwdMinLen, 
	//                    int nSubjectPwdRandomLevel, 
	//                    int nSubjectPwdValidTime, 
	//                    int *retval)	
	// [SUBJECT_INFORM]의 정보를 Setting 하는 함수 
	// 1. BSTR szSubjectDefaultMedia : 디폴트 저장 매체	
	//	  "HARDDISK", "FLOPPYDISK", "SMARTCARD", "USB" 중 선택 	
	// 2. int nSubjectPwdPolicyOp	 : 패스워드 정책 옵션 (1/0)	
	// 3. int nSubjectPwdMinLen 	 : 패스워드 최소 길이  (8~16)
	// 4. int nSubjectPwdRandomLevel : 패스워드 구성 레벨 (0/1/2)	
	// 5. int nSubjectPwdValidDays 	 : 패스워드 유효 기간 
	// 6. int nSubjectPwdAlarmDays 	 : 패스워드 변경일 알림 경고 메시지 출력일 
	//////////////////////////////////////////////////////////////////////////////////
	ret = document.AxKCASE.SetSubjectInform("HARDDISK", 0, 8, 1, 30,10);

}

function LoginData2(form)
{

	var dn, ret;
	var ssn;
	var signeddata;
	
	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}
	
	dn = document.AxKCASE.SelectCert();
	//alert("dn : " + dn);
	if ((dn == null) || (dn == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	signeddata = document.AxKCASE.SignedData(dn, "",dn);
	//alert("signeddata : " + signeddata);
	if( signeddata == null || signeddata == "" )
	{
		errmsg = document.AxKCASE.GetErrorContent();
		errcode = document.AxKCASE.GetErrorCode();
		alert( "인증서 로그인 오류 :"+errmsg );
		return;
	}
	
	form.signed_data.value = signeddata;
	form.action  = "http://portal.semyung.ac.kr/verifySignedData.jsp";
	form.submit();
}


function ElevationAdmin()
{
	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	document.AxKCASE.ElevationAdmin();
	return;
}


function SetConfig()
{
	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	document.AxKCASE.SetCommonInfo();
	return;
}

function CheckFirewall()
{
	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	document.AxKCASE.CheckFirewall();
	return;
}

function SelectCert(form)
{
	var dn;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	dn = document.AxKCASE.SelectCert();
	if ((dn == null) || (dn == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return false;
	}
	form.user_dn.value = dn;

	return true;
}

function ManageCert()
{
	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	document.AxKCASE.COMManagementCert();
	return;
}

function IssueCert()
{
	var ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	ret = document.AxKCASE.COMIssueCert("", "");
	if(ret != 0){
		return;
	}

	alert("인증서 발급을 완료했습니다.");
	return;
}

function ReIssueCert()
{
	var ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	ret = document.AxKCASE.COMIssueCert("", "");
	if(ret != 0){
		return;
	}

	alert("인증서 발급을 완료했습니다.");
	return;
}


function UpdateCert()
{
	var ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	ret = document.AxKCASE.COMUpdateCert();
	if(ret != 0){
		return;
	}

	alert("인증서 갱신을 완료했습니다.");
	return;
}

function KeyUpdateCert()
{
	var ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	ret = document.AxKCASE.COMKeyUpdateCert();
	if(ret != 0){
		return;
	}

	alert("인증서 키갱신을 완료했습니다.");
	return;
}

function HoldCert()
{
	var ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	ret = document.AxKCASE.HoldCertificate();
	if(ret != 0){
		return;
	}

	alert("인증서 효력정지를 완료했습니다.");
	return;
}

function RevokeCert()
{
	var ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	ret = document.AxKCASE.COMRevokeCert();
	if(ret != 0){
		return;
	}

	alert("인증서 폐지를 완료했습니다.");
	return;
}

function SignedData(form)
{
	var signeddata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data 를 입력하십시오.");
		return;
	}

/*	if ((form.user_dn.value == null) || (form.user_dn.value == ""))
	{
		if(!SelectCert(form))
			return;
	}

		alert(form.user_dn.value);
	*/
	//signeddata = document.AxKCASE.SignedData(form.user_dn.value, "", form.src.value);
	signeddata = document.AxKCASE.SignedData(form.user_dn.value, "", form.src.value);
	if((signeddata == null) || (signeddata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	form.signed_data.value = signeddata;
	return;
}

function VerifySignedData(form)
{
	var srcdata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("result data 입력이 없습니다.");
		return;
	}
	// srcdata = document.AxKCASE.VerifySignedData(form.signed_data.value, "", 1);
	srcdata = document.AxKCASE.VerifySignedData(form.signed_data.value, "", 0);
	if((srcdata == null) || (srcdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	alert(srcdata);
	return;
}

function EnvelopedData(form)
{
	var envdata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data 를 입력하십시오.");
		return;
	}

	// envdata = document.AxKCASE.EnvelopedData(form.rec_dn.value, form.src.value, 1);
	envdata = document.AxKCASE.EnvelopedData(form.rec_dn.value, form.src.value, 0);
	if((envdata == null) || (envdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	form.signed_data.value = envdata;
	return;
}

function DecryptEnvelopedData(form)
{
	var srcdata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")) {
		alert("result data 입력이 없습니다.");
		return;
	}

	if ((form.user_dn.value == null) || (form.user_dn.value == "")) {
		if(!SelectCert(form))
			return;
	}

	srcdata = document.AxKCASE.DecryptEnvelopedData(form.rec_dn.value, "", form.signed_data.value);
	if((srcdata == null) || (srcdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	alert(srcdata);
	return;
}


function SignedAndEnvelopedData(form)
{
	var signandenvdata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data 를 입력하십시오.");
		return;
	}
	if((form.rec_dn.value == null) || (form.rec_dn.value == "")){
		alert("recipient dn 을 입력하십시오.");
		return;
	}

	if ((form.user_dn.value == null) || (form.user_dn.value == "")) {
		if(!SelectCert(form))
			return;
	}

	signandenvdata = document.AxKCASE.SignedAndEnvelopedData(form.user_dn.value, "", form.rec_dn.value, form.src.value, 1);
	if((signandenvdata == null) || (signandenvdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	form.signed_data.value = signandenvdata;
	return;
}

function VerifySignedAndEnvelopedData(form) 
{
	var srcdata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("result data 입력이 없습니다.");
		return;
	}

	srcdata = document.AxKCASE.VerifySignedAndEnvelopedData(form.rec_dn.value, "", form.signed_data.value, 1);
	if((srcdata == null) || (srcdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	alert(srcdata);
	return;
}

function EncryptedDigest(form)
{
	var encdigetdata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data 를 입력하십시오.");
		return;
	}

	if ((form.user_dn.value == null) || (form.user_dn.value == "")) {
		if(!SelectCert(form))
			return;
	}
	alert(form.user_dn.value);
	encdigetdata = document.AxKCASE.EncryptedDigest(form.user_dn.value, "", form.src.value);
	if((encdigetdata == null) || (encdigetdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	form.signed_data.value = encdigetdata;
	return;
}

function VerifyEncryptedDigest(form)
{
	var ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data 를 입력하십시오.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("result data 입력이 없습니다.");
		return;
	}

	if ((form.user_dn.value == null) || (form.user_dn.value == "")) {
		if(!SelectCert(form))
			return;
	}
alert(form.user_dn.value);
	ret = document.AxKCASE.VerifyEncryptedDigest(form.user_dn.value, form.src.value, form.signed_data.value, 0);
	if(ret != 0){
		if(ret != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	alert("단순 메세지 전자서명 검증에 성공했습니다.");
	return;
}

function SymmEncrypt(form)
{
	var key, enckey, envdata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data 를 입력하십시오.");
		return;
	}
	if((form.rec_dn.value == null) || (form.rec_dn.value == "")){
		alert("recipient dn 을 입력하십시오.");
		return;
	}

	// 키 생성 
	key = document.AxKCASE.GenSymmetricKey("SEED");
	if((key == null) || (key == "")){
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	// 대칭키는 비대칭 암호화
	enckey = document.AxKCASE.AsymmEncrypt(form.rec_dn.value, key);
	if((enckey == null) || (enckey == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}
	form.symm_enckey.value = enckey;

	// 메세지 대칭키 암호화
	envdata = document.AxKCASE.SymmEncrypt("NEAT", key, form.src.value);
	if((envdata == null) || (envdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	form.signed_data.value = envdata;
	return;
}
function SymmEncrypt(form)
{
	var key, enckey, envdata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data 를 입력하십시오.");
		return;
	}
	if((form.rec_dn.value == null) || (form.rec_dn.value == "")){
		alert("recipient dn 을 입력하십시오.");
		return;
	}

	// 키 생성 
	key = document.AxKCASE.GenSymmetricKey("SEED");
	if((key == null) || (key == "")){
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	// 대칭키는 비대칭 암호화
	enckey = document.AxKCASE.AsymmEncrypt(form.rec_dn.value, key);
	if((enckey == null) || (enckey == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}
	form.symm_enckey.value = enckey;

	// 메세지 대칭키 암호화
	envdata = document.AxKCASE.SymmEncrypt("NEAT", key, form.src.value);
	if((envdata == null) || (envdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	form.signed_data.value = envdata;
	return;
}
function TestSymmEncrypt(form)
{
    var iv, key, enckey, envdata;
    var aa;

    if(!CheckAX()) {
        alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
        return;
    }

    if((form.src.value == null) || (form.src.value == "")){
        alert("source data 를 입력하십시오.");
        return;
    }

    if((form.Select_SymmAlg.value == null) || (form.Select_SymmAlg.value == "")){
        alert("대칭키 알고리즘을 먼저 선택하세요.");
        return;
    }
   
    // 키 생성

    iv = "0123456789012345";
    key = document.AxKCASE.BASE64Encode("0123456789012345"+iv);
  
    alert("Password : " + key);

    form.symm_enckey.value = key;

    // 메세지 대칭키 암호화
    //envdata = document.AxKCASE.SymmEncrypt("NEAT", key, form.src.value);
    envdata = document.AxKCASE.SymmEncryptEncoded(form.Select_SymmAlg.value, key, form.src.value);
    if((envdata == null) || (envdata == ""))
    {
        if(document.AxKCASE.GetErrorCode() != -1)
            alert(document.AxKCASE.GetErrorContent());
        return;
    }

    form.signed_data.value = envdata;
    return;
}
function SymmDecrypt(form)
{
	var deckey, orgdata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("result data 입력이 없습니다.");
		return;
	}

	if((form.rec_dn.value == null) || (form.rec_dn.value == "")){
		alert("dn 을 입력하십시오.");
		return;
	}

	// 대칭키를 비대칭 복호화
	deckey = document.AxKCASE.AsymmDecrypt(form.rec_dn.value, "8888888888888888", form.symm_enckey.value);
	if((deckey == null) || (deckey == "")){
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	// 암호문은 대칭키 복호화 
	orgdata = document.AxKCASE.SymmDecrypt("NEAT", deckey, form.signed_data.value);
	if((orgdata == null) || (orgdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	alert(orgdata);
	return;
}
function TestSymmDecrypt(form)
{
    var iv, key, deckey, orgdata;

    if(!CheckAX()) {
        alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
        return;
    }

    if((form.signed_data.value == null) || (form.signed_data.value == "")){
        alert("result data 입력이 없습니다.");
        return;
    }

    if((form.Select_SymmAlg.value == null) || (form.Select_SymmAlg.value == "")){
        alert("대칭키 알고리즘을 먼저 선택하세요.");
        return;
    }
 
        iv = "0123456789012345";
        key = document.AxKCASE.BASE64Encode("0123456789012345"+iv);

    alert("Password : " +key);

    // 암호문은 대칭키 복호화
    //orgdata = document.AxKCASE.SymmDecrypt("NEAT", form.symm_enckey.value, form.signed_data.value);
    //orgdata = document.AxKCASE.SymmDecrypt("SEED", form.symm_enckey.value, form.signed_data.value);
    orgdata = document.AxKCASE.SymmDecryptEncoded(form.Select_SymmAlg.value, key, form.signed_data.value);
    if((orgdata == null) || (orgdata == ""))
    {
        if(document.AxKCASE.GetErrorCode() != -1)
            alert(document.AxKCASE.GetErrorContent());
        return;
    }

    alert(orgdata);
    return;
}

function AsymmEncrypt(form)
{
	var envdata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data 를 입력하십시오.");
		return;
	}
	if((form.rec_dn.value == null) || (form.rec_dn.value == "")){
		alert("recipient dn 을 입력하십시오.");
		return;
	}

	envdata = document.AxKCASE.AsymmEncrypt(form.rec_dn.value, form.src.value);
	if((envdata == null) || (envdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	form.signed_data.value = envdata;
	return;
}
function TestAsymmEncrypt(form)
{
    var envdata;

    if(!CheckAX()) {
        alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
        return;
    }

    if((form.src.value == null) || (form.src.value == "")){
        alert("source data 를 입력하십시오.");
        return;
    }
    if((form.rec_dn.value == null) || (form.rec_dn.value == "")){
        alert("recipient dn 을 입력하십시오.");
        return;
    }

    envdata = document.AxKCASE.AsymmEncrpytEncoded(form.rec_dn.value, form.src.value);
    if((envdata == null) || (envdata == ""))
    {
        if(document.AxKCASE.GetErrorCode() != -1)
            alert(document.AxKCASE.GetErrorContent());
        return;
    }

    form.signed_data.value = envdata;
    return;
}

function AsymmDecrypt(form) 
{
	var srcdata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("result data 입력이 없습니다.");
		return;
	}
	srcdata = document.AxKCASE.AsymmDecrypt(form.rec_dn.value, "", form.signed_data.value);
	if((srcdata == null) || (srcdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	alert(srcdata);
	return;
}
function TestAsymmDecrypt(form)
{
    var srcdata;

    if(!CheckAX()) {
        alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
        return;
    }

    if((form.signed_data.value == null) || (form.signed_data.value == "")){
        alert("result data 입력이 없습니다.");
        return;
    }
    srcdata = document.AxKCASE.AsymmDecryptEncoded("", "", form.signed_data.value);
	if((srcdata == null) || (srcdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	alert(srcdata);
	return;
}
function MsgDigest(form)
{
	var digestdata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data 를 입력하십시오.");
		return;
	}
	if((form.rec_dn.value == null) || (form.rec_dn.value == "")){
		alert("recipient dn 을 입력하십시오.");
		return;
	}

	digestdata = document.AxKCASE.MsgDigest("HAS160", form.src.value);
	if((digestdata == null) || (digestdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	form.signed_data.value = digestdata;
	return;
}

function VerifyMsgDigest(form) 
{
	var ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("result data 입력이 없습니다.");
		return;
	}
	
	ret = document.AxKCASE.VerifyMsgDigest("HAS160", form.signed_data.value, form.src.value);

	if( ret != 0 )
	{
		errmsg = document.AxKCASE.GetErrorContent();
		alert("VerifyMsgDigest error: "+errmsg );
		return;
	}

	alert("VerifyMsgDigest : 해쉬값 검증에 성공하였습니다.");
	return;
}

function GetRFromKey()
{
	var RandomData;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	RandomData = document.AxKCASE.GetRFromKey("", "");

	if( RandomData == null || RandomData == "" )
	{
		errmsg = document.AxKCASE.GetErrorContent();
		alert("GetRFromKey error: "+errmsg );
		return;
	}

	alert("GetRFromKey : "+RandomData);
	document.test.user_rvalue.value = RandomData;
	return;
}

function Make_hVID()
{  
	var hVID;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	hVID = document.AxKCASE.Make_hVID("", "", "");

	if( hVID == null || hVID == "" )
	{
		errmsg = document.AxKCASE.GetErrorContent();
		alert("Make_hVID error: "+errmsg );
		return;
	}

	alert("Make_hVID : "+hVID);
	document.AxKCASE.value = hVID;
	document.test.Make_hVID_TEXT.value = hVID;
	return;
}

function ValidCert_VID()
{  
	var ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}
/*
	if (document.test.user_rvalue.value == null || document.test.user_rvalue.value == "")
	{
		alert("사용자 R 값이 없습니다.\n먼저 GetRFromKey 을 실행하세요");
		return;
	}
*/
	//ret = document.AxKCASE.ValidCert_VID("", document.test.user_rvalue.value, "");
	ret = document.AxKCASE.ValidCert_VID("", "", "");
	if( ret != 0 )
	{
		errmsg = document.AxKCASE.GetErrorContent();
		alert("ValidCert_VID error: "+errmsg );
		return;
	}

	alert("ValidCert_VID : 인증서의 신원확인 검증에 성공하였습니다.");
	return;
}

function ValidCert_hVID()
{  
	var ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if (!document.test.Make_hVID_TEXT.value) {
		alert("ValidCert_hVID : Make_hVID를 먼저 실행하십시요");
		return;
	}

	ret = document.AxKCASE.ValidCert_hVID("", document.test.Make_hVID_TEXT.value);
	if( ret != 0 )
	{
		errmsg = document.AxKCASE.GetErrorContent();
		alert("ValidCert_hVID error: "+errmsg );
		return;
	}

	alert("ValidCert_hVID : 인증서의 신원확인 검증에 성공하였습니다.");
	return;
}

function GetCertInfo()
{
	var	ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	ret = document.AxKCASE.GetCertInfo("");
	if((ret == null) || (ret == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
		alert(document.AxKCASE.GetErrorContent());
		return;
	}

	alert(ret);
	return;
}

function GenHMACsha1(form)
{
	var	ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}
	
	if((form.src.value == null) || (form.src.value == "")){
		alert("source data 를 입력하십시오.");
		return;
	}

  //////////////////////////////////////////////////////////////////////////////////
  // GenHMACsha1(BSTR SrcData, BSTR *retval)      	
  // HMAC-sha1 생성				                            
  // 입력인자 :									
  //    1. BSTR SrcData : HMAC값을 생성할 원본 문자열
  //    2. BSTR SrcKey : HMAC값을 생성할 Key
  // 출력인자 :									
  //    BSTR *retval : Base64로 인코딩된 HMAC값		
  //////////////////////////////////////////////////////////////////////////////////
	ret = document.AxKCASE.GenHMACsha1(form.src.value, "KSIGNHMAC");
	
	if((ret == null) || (ret == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
		alert(document.AxKCASE.GetErrorContent());
		return;
	}

	form.signed_data.value = ret;

	return;
	
}

function VerifyHMACsha1(form)
{
	var	ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}
  
  if((form.src.value == null) || (form.src.value == "")){
		alert("source data 를 입력하십시오.");
		return;
	}
	
  if((form.signed_data.value == null) || (form.signed_data.value == "")){
          alert("result data 입력이 없습니다.");
          return;
  }
  

  //////////////////////////////////////////////////////////////////////////////////
  // VerifyHMACsha1(BSTR SrcData, BSTR HMACData, int *retval)
  // HMAC-sha1 검증
  // 입력인자 :
  //    1. BSTR SrcData : HMAC값을 검증할 원본 문자열
  //    2. BSTR SrcKey : HMAC값을 검증할 Key
  //    3. BSTR HMACData : 검증할 HMAC값
  // 출력인자 :						
  //    int *retval : 검증 결과 ( ret == 0 : 검증성공 )
  //////////////////////////////////////////////////////////////////////////////////
	ret = document.AxKCASE.VerifyHMACsha1(form.src.value, "KSIGNHMAC", form.signed_data.value);
	 
	if( ret != 0 )
  {
       errmsg = document.AxKCASE.GetErrorContent();
       alert("HMAC 검증 에러: "+errmsg );
			return;
	}

	alert("HMAC 검증에 성공하였습니다.");
	
	return;
	
	
}

function SignedDataFile(form)
{
	var signeddata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data 를 입력하십시오.");
		return;
	}

	if ((form.user_dn.value == null) || (form.user_dn.value == ""))
	{
		if(!SelectCert(form))
			return;
	}
	
  //////////////////////////////////////////////////////////////////////////////////////////////////////
  // SignedDataFile(BSTR strUserDN, BSTR strPasswd, BSTR strSrcFile, BSTR strSaveFile, BSTR *retval)
  // Filed의 내용을 읽어 SignedData 생성
  // 입력인자 :
  //    1. BSTR strUserDN : 서명할 사용자 인증서의 DN
  //    2. BSTR strPasswd : 선택한 인증서의 패스워드
  //    3. BSTR strSrcFile : 서명할 파일명
  //    4. BSTR strSaveFile : 서명결과를 저장할 파일명("" 로 지정시 리턴값만을 출력)
  // 출력인자 :																							  					           
  //    BSTR *retval : 서명결과
  /////////////////////////////////////////////////////////////////////////////////////////////////////
	signeddata = document.AxKCASE.SignedDataFile(form.user_dn.value, "", "d:\INSTALL.LOG","d:\SignedData.dat");
	if((signeddata == null) || (signeddata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	form.signed_data.value = signeddata;
	return;
}

function VerifySignedDataFile(form)
{
	var srcdata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("result data 입력이 없습니다.");
		return;
	}
  //////////////////////////////////////////////////////////////////////////////////////////////////////
  // VerifySignedDataFile(BSTR strSignedFile, BSTR strSrcSaveFile, int nVflag, BSTR *retval)
  // Filed의 내용을 읽어 SignedData 생성
  // 입력인자 :
  //    1. BSTR strSignedFile : 검증할 파일명
  //    2. BSTR strSrcSaveFile : 검증결과를 저장할 파일명
  //    3. int nVflag : 인증서 검증 옵션(1: 검증, 0: 검증하지 않음)
  // 출력인자 :																							  					           
  //    BSTR *retval : 서명검증결과 ( 원문 )
  /////////////////////////////////////////////////////////////////////////////////////////////////////
	srcdata = document.AxKCASE.VerifySignedDataFile("d:\SignedData.dat", "", 0);
	if((srcdata == null) || (srcdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	alert(srcdata);
	return;
}



function BASE64Encode(form)
{
	var	ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}
	
	if((form.src.value == null) || (form.src.value == "")){
		alert("source data 를 입력하십시오.");
		return;
	}

  //////////////////////////////////////////////////////////////////////////////////
  // BASE64Encode(BSTR SrcData, BSTR *retval)      	
  // HMAC-sha1 생성				                            
  // 입력인자 :									
  //    1. BSTR SrcData : BASE64 Encode 처리할  원본 문자열
  // 출력인자 :									
  //    BSTR *retval : Base64로 인코딩된값		
  //////////////////////////////////////////////////////////////////////////////////
	ret = document.AxKCASE.BASE64Encode(form.src.value);
	
	if((ret == null) || (ret == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
		alert(document.AxKCASE.GetErrorContent());
		return;
	}

	form.signed_data.value = ret;

	return;
	
}

function BASE64Decode(form)
{
	var	ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}
	
	 if((form.signed_data.value == null) || (form.signed_data.value == "")){
	          alert("result data 입력이 없습니다.");
	          return;
	  }

  //////////////////////////////////////////////////////////////////////////////////
  // BASE64Encode(BSTR SrcData, BSTR *retval)      	
  // HMAC-sha1 생성				                            
  // 입력인자 :									
  //    1. BSTR SrcData : BASE64 Encode 처리할  원본 문자열
  // 출력인자 :									
  //    BSTR *retval : Base64로 인코딩된값		
  //////////////////////////////////////////////////////////////////////////////////
	ret = document.AxKCASE.BASE64Decode(form.signed_data.value);
	
	if((ret == null) || (ret == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
		alert(document.AxKCASE.GetErrorContent());
		return;
	}

	alert(ret);

	return;

}
function ReadDataFile(form)
{
	var	ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}
		
//	 if((form.src.value == null) || (form.src.value == "")){
//	          alert("파일의 경로 입력이 없습니다.");
//	          return;
//	  }

  //////////////////////////////////////////////////////////////////////////////////
  // ReadDataFile(BSTR FilePath, BSTR *retval)      	
  // HMAC-sha1 생성				                            
  // 입력인자 :									
  //    1. BSTR FilePath : 읽을 파일의 경로
  // 출력인자 :									
  //    BSTR *retval : 파일의 내용		
  //////////////////////////////////////////////////////////////////////////////////
	ret = document.AxKCASE.ReadDataFile("c:\\pki\\temp\\dn.txt");
	
	if((ret == null) || (ret == ""))
	{
		
		alert("파일을 읽는데 실패하였습니다");
	}

	form.signed_data.value=ret;

	return;
}
function WriteDataFile()
{
	var	ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}
		
//	 if((form.src.value == null) || (form.src.value == "")){
//	          alert("데이터 입력이 없습니다.");
//	          return;
//	  }
//	if((form.signed_data.value == null) || (form.signed_data.value == "")){
//	          alert("입력할 내용이 없습니다.");
//	          return;
//	  }
	sessionkey = "1234"; //test
  //////////////////////////////////////////////////////////////////////////////////
  // WriteDataFile(BSTR FilePath, BSTR Data, int *retval)      	
  // HMAC-sha1 생성				                            
  // 입력인자 :									
  //    1. BSTR FilePath : 쓸 파일의 경로
  //	2. BSTR Data : 쓸 내용
  // 출력인자 :									
  //    int *retval : 결과	
  //////////////////////////////////////////////////////////////////////////////////
	ret = document.AxKCASE.WriteDataFile("c:\\hohoho\\test.txt", sessionkey);

	
	
	if( ret != 0 )
	{
		if(document.AxKCASE.GetErrorCode() != -1)
		alert(document.AxKCASE.GetErrorContent());
		return;
	}
	alert("파일 쓰기를 성공 하였습니다");
	
	return;
}

function DeleteDataFile()
{
	
	var	ret;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}
		
//	 if((form.src.value == null) || (form.src.value == "")){
//	          alert("데이터 입력이 없습니다.");
//	          return;
//	  }
	  ret = document.AxKCASE.DeleteDataFile("c:\\pki\\temp\\dn.txt");
	  
	if( ret != 0 )
	{		
		alert("파일 삭제 에러");
		return;
	}
	alert("파일을 삭제 하였습니다");
	return;
}
function GetUserPassword(form)
{
	var ret;
	  
	if(!CheckAX()) {
    	alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
        return;
    }
    ret=document.AxKCASE.GetUserPassword();
    
  	if((ret == null) || (ret == ""))
	{
	
		alert("에러");
		return;
	}
	alert(ret);
	return;

}
function AsymmEncryptforServer(form)
{
	var envdata;

	if(!CheckAX()) {
		alert("클라이언트 프로그램이 설치되지 않아 수행할 수 없습니다.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data 를 입력하십시오.");
		return;
	}
	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("recipient cert 을 입력하십시오.");
		return;
	}

	envdata = document.AxKCASE.AsymmEncryptforServer(form.src.value, form.signed_data.value);
	if((envdata == null) || (envdata == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	document.AxKCASE.WriteDataFile("C:\\test\\encdata.txt",envdata);
	return;
}
		