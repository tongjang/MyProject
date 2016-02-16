////////////////////////////////////////////////////////////////////////////////////
//
// KSignCASE-Web v2.0 javascript function definition.
//
////////////////////////////////////////////////////////////////////////////////////

function CheckAX()
{
	var Installed = false;
	// AxKSignCASE ������Ʈ �϶�
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
	// ȯ�漳���� �������� �ʴ� ȯ�� ������ ��� BSTR ���� ""�� int���� -1�� �Է��Ѵ�.
	//////////////////////////////////////////////////////////////////////////////////

	//////////////////////////////////////////////////////////////////////////////////
	// SetAppCommon(BSTR PkiType, int nNtCa, int nActiveDs, int *retval)
	// [APP_COMMON]�� ������ Setting �ϴ� �Լ� 
	// 1. BSTR PkiType : CA�� ������ 	
	//	#define AXKCASE_COMMON_PKITYPE_NPKI		("NPKI")
	//	#define AXKCASE_COMMON_PKITYPE_GPKI		("GPKI")
	//	#define AXKCASE_COMMON_PKITYPE_PPKI		("PPKI")
	// 2. int nNtCa : CA�� ������ Nt���� �ƴ��� (1/0)				
	// 3. int nActiveDs : DS�� Active ���丮���� �ƴ��� (1/0)	
	//////////////////////////////////////////////////////////////////////////////////

	ret = document.AxKCASE.SetAppCommon("PPKI", 0, 1);

                   
	//////////////////////////////////////////////////////////////////////////////////
	// SetCMPInform(BSTR CaIp, int nCmpPort, BSTR CmpKmCertDn, BSTR CmpDsIp,
	//					int nDsPort, int nWtlsCert, int nCmpCaVer, int *retval)
	// [CMP_INFORM]�� ������ Setting �ϴ� �Լ� 
	// 1. BSTR CaIp : CA ������ IP �ּ� 
	// 2. int nCmpPort : CA ������ cmp ��Ʈ
	// 3. BSTR CmpKmCertDn : VID�� ���� ��ȣŰ�й� ������ DN
	// 4. BSTR CmpDsIp : DS ���� IP �ּ� 
	// 5. int nDsPort : DS ���� ��Ʈ 
	// 6. int nWtlsCert : �������� Wtls������ �ƴ��� (1/0)
	// 7. int nCmpCaVer : CA ���� ���� 
	//////////////////////////////////////////////////////////////////////////////////

	ret = document.AxKCASE.SetCMPInform("211.114.146.15", 4502, "", "211.114.146.15", 389, 0, 2);


	//////////////////////////////////////////////////////////////////////////////////
	// SetPKCSInform(int nSign_ContentInc,	int nSign_CertPathInc, int nSign_CvOp,
	//				 int nSign_EncOaep, int nSign_SaveCert,	int nEnc_SignCertOp,
	//               int nEnc_LocalKmCert,  int nEnc_SaveCert, char *pszEncAlgo) 
	// [PKCS_INFORM]�� ������ Setting �ϴ� �Լ� 
	// 1. int nSign_ContentInc : ���ڼ���� ���� ����/������ (1/0)
	// 2. int nSign_CertPathInc : ���ڼ���� ������ Chain ����/������ (1/0)
	// 3. int nSign_CvOp : ���ڼ���� ����� ������ ���� �ɼ� (1/0)
	// 4. int nSign_EncOaep : RSA OAEP ��� ���� �ɼ� (1/0)	
	// 5. int nSign_SaveCert : ���ڼ��� ������ ������ ���� �ɼ� (1/0)	
	// 6. int nEnc_SignCertOp : ��ȣȭ�� ����� ������ ��� �ɼ� (1/0)
	// 7. int nEnc_LocalKmCert : ��ȣȭ�� ������ ���� ���� �켱���� (1/0)
	// 8. int nEnc_SaveCert : ��ȣȭ�� ������ ���� �ɼ� (1/0)	
	// 9. char* pszEncAlgo : ��ȣȭ�� ����� �⺻ �˰���  (SEED, DES, 3DES, RC2)
	//////////////////////////////////////////////////////////////////////////////////

	ret = document.AxKCASE.SetPKCSInform(1, 0, 0, 0, 0, 0, 1, 1, "SEED");


	//////////////////////////////////////////////////////////////////////////////////
	// SetCVInform(int nAnyPolicy, BSTR ArlDn, BSTR Policies, int nPathValOp,
	// BSTR ValMethod, BSTR Crl_ChkOp, int nCrl_SaveOp, int *retval)
	// [CV_INFORM]�� ������ Setting �ϴ� �Լ� 
	// 1. int nAnyPolicy : �����å ��� �ɼ� (1/0)	
	// 2. BSTR ArlDn : CA �������� ARL �б����� ���� ��� ARLDN �� ����
	// 3. BSTR Policies : �ʱ� ��å ����
	// 4. int nPathValOp : ���� ��� ���� �ɼ� (1/0)	
	// 5. BSTR ValMethod : CRL/OCSP ���� �ɼ� (CRLCHECK_OCSP, CRLCHECK_CRL)	
	// 6. BSTR Crl_ChkOp : CRL ���� �ɼ� 
	//                          (CRL_CHECK_FULL, CRL_CHECK_USERONLY, CRL_CHECK_NONE)
	// 7. int nCrl_SaveOp : CRL ���� �ɼ� (1/0)
	//////////////////////////////////////////////////////////////////////////////////

	ret = document.AxKCASE.SetCVInform(1, "", "1.2.3.4.5|2.5.29.32.0|1.2.392.200132|1.2.392.200132.1|1.2.392.200132.1.1|1.2.392.200132.1.1.1|1.2.410.200004.2.1|1.2.410.200004.5.1.1.5|1.2.410.200004.5.1.1.7|1.2.410.200004.5.2.1.1|1.2.410.200004.5.2.1.2|1.2.410.200004.5.3.1.1|1.2.410.200004.5.3.1.2|1.2.410.200004.5.3.1.4|1.2.410.200004.5.4.1.1|1.2.410.200004.5.4.1.2|1.2.410.200004.5.4.1.3|1.2.410.200004.5.4.1.4|1.2.410.200004.5.4.1.5|1.2.410.200004.5.4.1.7|1.2.410.200005.1.1.1|1.2.410.200005.1.1.5|1.2.410.200012.1.1.1|1.2.410.200012.1.1.3|1.2.410.100001.2.2.1",
	1, "CRLCHECK_CRL", "CRL_CHECK_FULL", 0);


	//////////////////////////////////////////////////////////////////////////////////
	// SetOPPInform(BSTR RaAdmin_Path, int AdminPort, int *retval)	
	// [OPP_INFORM]�� ������ Setting �ϴ� �Լ� 
	// 1. BSTR RaAdmin_Path : RA ������ ���� ��ġ
	//        "%ProgramFiles%\\NPKI\pki\\RA" "%FloppyDrive%\\NPKI\\pki\\RA" 
	// 2. int AdminPort : CA�� Admin ��Ʈ
	//////////////////////////////////////////////////////////////////////////////////

	ret = document.AxKCASE.SetOPPInform("", 8502);


	//////////////////////////////////////////////////////////////////////////////////
	// SetCMInform(BSTR PriKey_EncAlg, int *retval)	
	// [CM_INFORM]�� ������ Setting �ϴ� �Լ� 
	// 1. BSTR PriKey_EncAlg : ����Ű ��ȣȭ �˰���	
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
	// [SUBJECT_INFORM]�� ������ Setting �ϴ� �Լ� 
	// 1. BSTR szSubjectDefaultMedia : ����Ʈ ���� ��ü	
	//	  "HARDDISK", "FLOPPYDISK", "SMARTCARD", "USB" �� ���� 	
	// 2. int nSubjectPwdPolicyOp	 : �н����� ��å �ɼ� (1/0)	
	// 3. int nSubjectPwdMinLen 	 : �н����� �ּ� ����  (8~16)
	// 4. int nSubjectPwdRandomLevel : �н����� ���� ���� (0/1/2)	
	// 5. int nSubjectPwdValidDays 	 : �н����� ��ȿ �Ⱓ 
	// 6. int nSubjectPwdAlarmDays 	 : �н����� ������ �˸� ��� �޽��� ����� 
	//////////////////////////////////////////////////////////////////////////////////
	ret = document.AxKCASE.SetSubjectInform("HARDDISK", 0, 8, 1, 30,10);

}

function LoginData2(form)
{

	var dn, ret;
	var ssn;
	var signeddata;
	
	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
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
		alert( "������ �α��� ���� :"+errmsg );
		return;
	}
	
	form.signed_data.value = signeddata;
	form.action  = "http://portal.semyung.ac.kr/verifySignedData.jsp";
	form.submit();
}


function ElevationAdmin()
{
	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	document.AxKCASE.ElevationAdmin();
	return;
}


function SetConfig()
{
	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	document.AxKCASE.SetCommonInfo();
	return;
}

function CheckFirewall()
{
	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	document.AxKCASE.CheckFirewall();
	return;
}

function SelectCert(form)
{
	var dn;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	document.AxKCASE.COMManagementCert();
	return;
}

function IssueCert()
{
	var ret;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	ret = document.AxKCASE.COMIssueCert("", "");
	if(ret != 0){
		return;
	}

	alert("������ �߱��� �Ϸ��߽��ϴ�.");
	return;
}

function ReIssueCert()
{
	var ret;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	ret = document.AxKCASE.COMIssueCert("", "");
	if(ret != 0){
		return;
	}

	alert("������ �߱��� �Ϸ��߽��ϴ�.");
	return;
}


function UpdateCert()
{
	var ret;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	ret = document.AxKCASE.COMUpdateCert();
	if(ret != 0){
		return;
	}

	alert("������ ������ �Ϸ��߽��ϴ�.");
	return;
}

function KeyUpdateCert()
{
	var ret;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	ret = document.AxKCASE.COMKeyUpdateCert();
	if(ret != 0){
		return;
	}

	alert("������ Ű������ �Ϸ��߽��ϴ�.");
	return;
}

function HoldCert()
{
	var ret;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	ret = document.AxKCASE.HoldCertificate();
	if(ret != 0){
		return;
	}

	alert("������ ȿ�������� �Ϸ��߽��ϴ�.");
	return;
}

function RevokeCert()
{
	var ret;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	ret = document.AxKCASE.COMRevokeCert();
	if(ret != 0){
		return;
	}

	alert("������ ������ �Ϸ��߽��ϴ�.");
	return;
}

function SignedData(form)
{
	var signeddata;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data �� �Է��Ͻʽÿ�.");
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("result data �Է��� �����ϴ�.");
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data �� �Է��Ͻʽÿ�.");
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")) {
		alert("result data �Է��� �����ϴ�.");
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data �� �Է��Ͻʽÿ�.");
		return;
	}
	if((form.rec_dn.value == null) || (form.rec_dn.value == "")){
		alert("recipient dn �� �Է��Ͻʽÿ�.");
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("result data �Է��� �����ϴ�.");
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data �� �Է��Ͻʽÿ�.");
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data �� �Է��Ͻʽÿ�.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("result data �Է��� �����ϴ�.");
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

	alert("�ܼ� �޼��� ���ڼ��� ������ �����߽��ϴ�.");
	return;
}

function SymmEncrypt(form)
{
	var key, enckey, envdata;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data �� �Է��Ͻʽÿ�.");
		return;
	}
	if((form.rec_dn.value == null) || (form.rec_dn.value == "")){
		alert("recipient dn �� �Է��Ͻʽÿ�.");
		return;
	}

	// Ű ���� 
	key = document.AxKCASE.GenSymmetricKey("SEED");
	if((key == null) || (key == "")){
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	// ��ĪŰ�� ���Ī ��ȣȭ
	enckey = document.AxKCASE.AsymmEncrypt(form.rec_dn.value, key);
	if((enckey == null) || (enckey == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}
	form.symm_enckey.value = enckey;

	// �޼��� ��ĪŰ ��ȣȭ
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data �� �Է��Ͻʽÿ�.");
		return;
	}
	if((form.rec_dn.value == null) || (form.rec_dn.value == "")){
		alert("recipient dn �� �Է��Ͻʽÿ�.");
		return;
	}

	// Ű ���� 
	key = document.AxKCASE.GenSymmetricKey("SEED");
	if((key == null) || (key == "")){
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	// ��ĪŰ�� ���Ī ��ȣȭ
	enckey = document.AxKCASE.AsymmEncrypt(form.rec_dn.value, key);
	if((enckey == null) || (enckey == ""))
	{
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}
	form.symm_enckey.value = enckey;

	// �޼��� ��ĪŰ ��ȣȭ
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
        alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
        return;
    }

    if((form.src.value == null) || (form.src.value == "")){
        alert("source data �� �Է��Ͻʽÿ�.");
        return;
    }

    if((form.Select_SymmAlg.value == null) || (form.Select_SymmAlg.value == "")){
        alert("��ĪŰ �˰����� ���� �����ϼ���.");
        return;
    }
   
    // Ű ����

    iv = "0123456789012345";
    key = document.AxKCASE.BASE64Encode("0123456789012345"+iv);
  
    alert("Password : " + key);

    form.symm_enckey.value = key;

    // �޼��� ��ĪŰ ��ȣȭ
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("result data �Է��� �����ϴ�.");
		return;
	}

	if((form.rec_dn.value == null) || (form.rec_dn.value == "")){
		alert("dn �� �Է��Ͻʽÿ�.");
		return;
	}

	// ��ĪŰ�� ���Ī ��ȣȭ
	deckey = document.AxKCASE.AsymmDecrypt(form.rec_dn.value, "8888888888888888", form.symm_enckey.value);
	if((deckey == null) || (deckey == "")){
		if(document.AxKCASE.GetErrorCode() != -1)
			alert(document.AxKCASE.GetErrorContent());
		return;
	}

	// ��ȣ���� ��ĪŰ ��ȣȭ 
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
        alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
        return;
    }

    if((form.signed_data.value == null) || (form.signed_data.value == "")){
        alert("result data �Է��� �����ϴ�.");
        return;
    }

    if((form.Select_SymmAlg.value == null) || (form.Select_SymmAlg.value == "")){
        alert("��ĪŰ �˰����� ���� �����ϼ���.");
        return;
    }
 
        iv = "0123456789012345";
        key = document.AxKCASE.BASE64Encode("0123456789012345"+iv);

    alert("Password : " +key);

    // ��ȣ���� ��ĪŰ ��ȣȭ
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data �� �Է��Ͻʽÿ�.");
		return;
	}
	if((form.rec_dn.value == null) || (form.rec_dn.value == "")){
		alert("recipient dn �� �Է��Ͻʽÿ�.");
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
        alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
        return;
    }

    if((form.src.value == null) || (form.src.value == "")){
        alert("source data �� �Է��Ͻʽÿ�.");
        return;
    }
    if((form.rec_dn.value == null) || (form.rec_dn.value == "")){
        alert("recipient dn �� �Է��Ͻʽÿ�.");
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("result data �Է��� �����ϴ�.");
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
        alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
        return;
    }

    if((form.signed_data.value == null) || (form.signed_data.value == "")){
        alert("result data �Է��� �����ϴ�.");
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data �� �Է��Ͻʽÿ�.");
		return;
	}
	if((form.rec_dn.value == null) || (form.rec_dn.value == "")){
		alert("recipient dn �� �Է��Ͻʽÿ�.");
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("result data �Է��� �����ϴ�.");
		return;
	}
	
	ret = document.AxKCASE.VerifyMsgDigest("HAS160", form.signed_data.value, form.src.value);

	if( ret != 0 )
	{
		errmsg = document.AxKCASE.GetErrorContent();
		alert("VerifyMsgDigest error: "+errmsg );
		return;
	}

	alert("VerifyMsgDigest : �ؽ��� ������ �����Ͽ����ϴ�.");
	return;
}

function GetRFromKey()
{
	var RandomData;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}
/*
	if (document.test.user_rvalue.value == null || document.test.user_rvalue.value == "")
	{
		alert("����� R ���� �����ϴ�.\n���� GetRFromKey �� �����ϼ���");
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

	alert("ValidCert_VID : �������� �ſ�Ȯ�� ������ �����Ͽ����ϴ�.");
	return;
}

function ValidCert_hVID()
{  
	var ret;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if (!document.test.Make_hVID_TEXT.value) {
		alert("ValidCert_hVID : Make_hVID�� ���� �����Ͻʽÿ�");
		return;
	}

	ret = document.AxKCASE.ValidCert_hVID("", document.test.Make_hVID_TEXT.value);
	if( ret != 0 )
	{
		errmsg = document.AxKCASE.GetErrorContent();
		alert("ValidCert_hVID error: "+errmsg );
		return;
	}

	alert("ValidCert_hVID : �������� �ſ�Ȯ�� ������ �����Ͽ����ϴ�.");
	return;
}

function GetCertInfo()
{
	var	ret;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}
	
	if((form.src.value == null) || (form.src.value == "")){
		alert("source data �� �Է��Ͻʽÿ�.");
		return;
	}

  //////////////////////////////////////////////////////////////////////////////////
  // GenHMACsha1(BSTR SrcData, BSTR *retval)      	
  // HMAC-sha1 ����				                            
  // �Է����� :									
  //    1. BSTR SrcData : HMAC���� ������ ���� ���ڿ�
  //    2. BSTR SrcKey : HMAC���� ������ Key
  // ������� :									
  //    BSTR *retval : Base64�� ���ڵ��� HMAC��		
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}
  
  if((form.src.value == null) || (form.src.value == "")){
		alert("source data �� �Է��Ͻʽÿ�.");
		return;
	}
	
  if((form.signed_data.value == null) || (form.signed_data.value == "")){
          alert("result data �Է��� �����ϴ�.");
          return;
  }
  

  //////////////////////////////////////////////////////////////////////////////////
  // VerifyHMACsha1(BSTR SrcData, BSTR HMACData, int *retval)
  // HMAC-sha1 ����
  // �Է����� :
  //    1. BSTR SrcData : HMAC���� ������ ���� ���ڿ�
  //    2. BSTR SrcKey : HMAC���� ������ Key
  //    3. BSTR HMACData : ������ HMAC��
  // ������� :						
  //    int *retval : ���� ��� ( ret == 0 : �������� )
  //////////////////////////////////////////////////////////////////////////////////
	ret = document.AxKCASE.VerifyHMACsha1(form.src.value, "KSIGNHMAC", form.signed_data.value);
	 
	if( ret != 0 )
  {
       errmsg = document.AxKCASE.GetErrorContent();
       alert("HMAC ���� ����: "+errmsg );
			return;
	}

	alert("HMAC ������ �����Ͽ����ϴ�.");
	
	return;
	
	
}

function SignedDataFile(form)
{
	var signeddata;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data �� �Է��Ͻʽÿ�.");
		return;
	}

	if ((form.user_dn.value == null) || (form.user_dn.value == ""))
	{
		if(!SelectCert(form))
			return;
	}
	
  //////////////////////////////////////////////////////////////////////////////////////////////////////
  // SignedDataFile(BSTR strUserDN, BSTR strPasswd, BSTR strSrcFile, BSTR strSaveFile, BSTR *retval)
  // Filed�� ������ �о� SignedData ����
  // �Է����� :
  //    1. BSTR strUserDN : ������ ����� �������� DN
  //    2. BSTR strPasswd : ������ �������� �н�����
  //    3. BSTR strSrcFile : ������ ���ϸ�
  //    4. BSTR strSaveFile : �������� ������ ���ϸ�("" �� ������ ���ϰ����� ���)
  // ������� :																							  					           
  //    BSTR *retval : ������
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("result data �Է��� �����ϴ�.");
		return;
	}
  //////////////////////////////////////////////////////////////////////////////////////////////////////
  // VerifySignedDataFile(BSTR strSignedFile, BSTR strSrcSaveFile, int nVflag, BSTR *retval)
  // Filed�� ������ �о� SignedData ����
  // �Է����� :
  //    1. BSTR strSignedFile : ������ ���ϸ�
  //    2. BSTR strSrcSaveFile : ��������� ������ ���ϸ�
  //    3. int nVflag : ������ ���� �ɼ�(1: ����, 0: �������� ����)
  // ������� :																							  					           
  //    BSTR *retval : ���������� ( ���� )
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}
	
	if((form.src.value == null) || (form.src.value == "")){
		alert("source data �� �Է��Ͻʽÿ�.");
		return;
	}

  //////////////////////////////////////////////////////////////////////////////////
  // BASE64Encode(BSTR SrcData, BSTR *retval)      	
  // HMAC-sha1 ����				                            
  // �Է����� :									
  //    1. BSTR SrcData : BASE64 Encode ó����  ���� ���ڿ�
  // ������� :									
  //    BSTR *retval : Base64�� ���ڵ��Ȱ�		
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}
	
	 if((form.signed_data.value == null) || (form.signed_data.value == "")){
	          alert("result data �Է��� �����ϴ�.");
	          return;
	  }

  //////////////////////////////////////////////////////////////////////////////////
  // BASE64Encode(BSTR SrcData, BSTR *retval)      	
  // HMAC-sha1 ����				                            
  // �Է����� :									
  //    1. BSTR SrcData : BASE64 Encode ó����  ���� ���ڿ�
  // ������� :									
  //    BSTR *retval : Base64�� ���ڵ��Ȱ�		
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
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}
		
//	 if((form.src.value == null) || (form.src.value == "")){
//	          alert("������ ��� �Է��� �����ϴ�.");
//	          return;
//	  }

  //////////////////////////////////////////////////////////////////////////////////
  // ReadDataFile(BSTR FilePath, BSTR *retval)      	
  // HMAC-sha1 ����				                            
  // �Է����� :									
  //    1. BSTR FilePath : ���� ������ ���
  // ������� :									
  //    BSTR *retval : ������ ����		
  //////////////////////////////////////////////////////////////////////////////////
	ret = document.AxKCASE.ReadDataFile("c:\\pki\\temp\\dn.txt");
	
	if((ret == null) || (ret == ""))
	{
		
		alert("������ �дµ� �����Ͽ����ϴ�");
	}

	form.signed_data.value=ret;

	return;
}
function WriteDataFile()
{
	var	ret;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}
		
//	 if((form.src.value == null) || (form.src.value == "")){
//	          alert("������ �Է��� �����ϴ�.");
//	          return;
//	  }
//	if((form.signed_data.value == null) || (form.signed_data.value == "")){
//	          alert("�Է��� ������ �����ϴ�.");
//	          return;
//	  }
	sessionkey = "1234"; //test
  //////////////////////////////////////////////////////////////////////////////////
  // WriteDataFile(BSTR FilePath, BSTR Data, int *retval)      	
  // HMAC-sha1 ����				                            
  // �Է����� :									
  //    1. BSTR FilePath : �� ������ ���
  //	2. BSTR Data : �� ����
  // ������� :									
  //    int *retval : ���	
  //////////////////////////////////////////////////////////////////////////////////
	ret = document.AxKCASE.WriteDataFile("c:\\hohoho\\test.txt", sessionkey);

	
	
	if( ret != 0 )
	{
		if(document.AxKCASE.GetErrorCode() != -1)
		alert(document.AxKCASE.GetErrorContent());
		return;
	}
	alert("���� ���⸦ ���� �Ͽ����ϴ�");
	
	return;
}

function DeleteDataFile()
{
	
	var	ret;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}
		
//	 if((form.src.value == null) || (form.src.value == "")){
//	          alert("������ �Է��� �����ϴ�.");
//	          return;
//	  }
	  ret = document.AxKCASE.DeleteDataFile("c:\\pki\\temp\\dn.txt");
	  
	if( ret != 0 )
	{		
		alert("���� ���� ����");
		return;
	}
	alert("������ ���� �Ͽ����ϴ�");
	return;
}
function GetUserPassword(form)
{
	var ret;
	  
	if(!CheckAX()) {
    	alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
        return;
    }
    ret=document.AxKCASE.GetUserPassword();
    
  	if((ret == null) || (ret == ""))
	{
	
		alert("����");
		return;
	}
	alert(ret);
	return;

}
function AsymmEncryptforServer(form)
{
	var envdata;

	if(!CheckAX()) {
		alert("Ŭ���̾�Ʈ ���α׷��� ��ġ���� �ʾ� ������ �� �����ϴ�.");
		return;
	}

	if((form.src.value == null) || (form.src.value == "")){
		alert("source data �� �Է��Ͻʽÿ�.");
		return;
	}
	if((form.signed_data.value == null) || (form.signed_data.value == "")){
		alert("recipient cert �� �Է��Ͻʽÿ�.");
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
		