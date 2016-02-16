package com.semyung.m.semyung;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.DownloadListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
    private WebView webView;
    final Context context = this;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        webView = (WebView) findViewById(R.id.webview);

        Button homeBtn = (Button) findViewById(R.id.homeBtn);
        Button classBtn = (Button) findViewById(R.id.classBtn);
        Button attBtn = (Button) findViewById(R.id.attBtn);
        Button libBtn = (Button) findViewById(R.id.libBtn);

        homeBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                webView.loadUrl("http://192.168.11.111/mobile/semyungdi/index.jsp");
            }
        });

        classBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                webView.loadUrl("http://m.semyung.ac.kr/m-lms/LMS_Login.jsp");
            }
        });

        attBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                webView.loadUrl("http://att.semyung.ac.kr");
            }
        });

        libBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                webView.loadUrl("http://m.semyung.ac.kr/Login_mobile_A.jsp");
            }
        });

        webView.setWebViewClient(new WebViewClient() {
            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                if (url.startsWith("tel:")) { //전화걸기
                    Intent call_phone = new Intent(Intent.ACTION_VIEW, Uri.parse(url));
                    startActivity(call_phone);
                    return true;
                }

                view.loadUrl(url);
                return true;
            }

            @Override
             public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
                super.onReceivedError(view, errorCode, description, failingUrl);
                switch (errorCode) {
                    case ERROR_AUTHENTICATION:               // 서버에서 사용자 인증 실패
                    case ERROR_BAD_URL:                            // 잘못된 URL
                    case ERROR_CONNECT:                           // 서버로 연결 실패
                    case ERROR_FAILED_SSL_HANDSHAKE:     // SSL handshake 수행 실패
                    case ERROR_FILE:                                   // 일반 파일 오류
                    case ERROR_FILE_NOT_FOUND:                // 파일을 찾을 수 없습니다
                    case ERROR_HOST_LOOKUP:            // 서버 또는 프록시 호스트 이름 조회 실패
                    case ERROR_IO:                               // 서버에서 읽거나 서버로 쓰기 실패
                    case ERROR_PROXY_AUTHENTICATION:    // 프록시에서 사용자 인증 실패
                    case ERROR_REDIRECT_LOOP:                // 너무 많은 리디렉션
                    case ERROR_TIMEOUT:                          // 연결 시간 초과
                    case ERROR_TOO_MANY_REQUESTS:            // 페이지 로드중 너무 많은 요청 발생
                    case ERROR_UNKNOWN:                         // 일반 오류
                    case ERROR_UNSUPPORTED_AUTH_SCHEME:  // 지원되지 않는 인증 체계
                    case ERROR_UNSUPPORTED_SCHEME:
                        AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
                        builder.setPositiveButton("확인", new DialogInterface.OnClickListener() {
                            public void onClick(DialogInterface dialog, int which) {
                                finish();
                            }
                        });
                        builder.setMessage("네트워크 상태가 원활하지 않습니다. 잠시 후 다시 시도해 주세요.");
                        builder.show();
                        break;
                }
            }
        });

        webView.setDownloadListener(new DownloadListener() {
            public void onDownloadStart(String url, String userAgent,
                                        String contentDisposition, String mimetype,
                                        long contentLength) {
                Intent i = new Intent(Intent.ACTION_VIEW);
                i.setData(Uri.parse(url));
                startActivity(i);
            }
        });

        webView.setInitialScale(1);

        WebSettings webSettings = webView.getSettings();
        webSettings.setUseWideViewPort(true);
        webSettings.setJavaScriptEnabled(true);
        webSettings.setBuiltInZoomControls(true);
        webSettings.setSupportZoom(true);

        webView.loadUrl("http://192.168.11.111/mobile/semyungdi/index.jsp");
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(context);

        if((keyCode == KeyEvent.KEYCODE_BACK) && webView.canGoBack()){
            webView.goBack();
            return true;
        }else if((keyCode == KeyEvent.KEYCODE_BACK) && !(webView.canGoBack())){
            alertDialogBuilder.setTitle("세명대학교 모바일 종료")        // 제목 설정
                    .setMessage("앱을 종료 하시 겠습니까?")        // 메세지 설정
                    .setCancelable(false)        // 뒤로 버튼 클릭시 취소 가능 설정
                    .setPositiveButton("확인", new DialogInterface.OnClickListener(){
                        // 확인 버튼 클릭시 설정
                        public void onClick(DialogInterface dialog, int whichButton){
                            finish();
                        }
                    })
                    .setNegativeButton("취소", new DialogInterface.OnClickListener(){
                        // 취소 버튼 클릭시 설정
                        public void onClick(DialogInterface dialog, int whichButton){
                            dialog.cancel();
                        }
                    });

            AlertDialog dialog = alertDialogBuilder.create();    // 알림창 객체 생성
            dialog.show();    // 알림창 띄우기
        }
        return super.onKeyDown(keyCode, event);
    }
}