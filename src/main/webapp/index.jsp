<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="naver-site-verification" content="6410fa0dc4eed7c08c14e3d0dc8e548445d160e1"/>
<meta name="description" content="여기를 눌러 링크를 확인하세요.">
<meta property="og:type" content="website">
<meta property="og:title" content="바로나마취통증의학과">
<meta property="og:description" content="여기를 눌러 링크를 확인하세요.">
<meta property="og:image" content="${pageContext.request.contextPath }/resources/images/commons/logo.png">
<meta property="og:url" content="http://www.thebarona.com">
<link href="${pageContext.request.contextPath }/resources/css/loading.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>바로나통증의학과 방문을 환영합니다.</title>
<script>
   setTimeout(function(){
      go_main();
   }, 3500);
</script>

<script>
/* 메인 페이지로 이동 */
function go_main() {
	var mobileInfo = new Array('Android', 'iPhone', 'iPod', 'BlackBerry', 'Windows CE', 'SAMSUNG', 'LG', 'MOT', 'SonyEricsson');
	var result = false;
	for (var info in mobileInfo){		if (navigator.userAgent.match(mobileInfo[info]) != null){
			result = true;
			break;
		}
	}
	if(result) {
    	location.href="${pageContext.request.contextPath }/m/main.do";
	} else {
		location.href="${pageContext.request.contextPath }/main.do";
	}
}
</script>
</head>
<body>
	<!-- 로딩 화면 -->
	<div class="loading">
		<div class="load_bg">
			<img src="${pageContext.request.contextPath }/resources/images/main/loading_bg.jpg" style="width: 100%; height: 100%;"/>
			<div class="cont">
				<p class="rt"><img src="${pageContext.request.contextPath }/resources/images/main/loading_01.png" style="float: right; width: 50%;"/></p>
				<div class="center">
					<p class="txt"><img src="${pageContext.request.contextPath }/resources/images/main/loading_02.png" style="width: 100%;" /></p>
					<p class="logo"><img src="${pageContext.request.contextPath }/resources/images/main/loading_03.png" style="width: 100%;" /></p>
					<div class="spinner">
				      <div class="bounce1"></div>
				      <div class="bounce2"></div>
				      <div class="bounce3"></div>
				    </div>
				</div>
			</div>
   		</div>
	</div>
</body>
</html>