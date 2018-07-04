<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<jsp:useBean id="today" class="java.util.Date" />
<fmt:formatDate value='${today}' pattern='yyyyMMddHHmmddss' var="ver"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge,chrome=1"> 
<meta name="naver-site-verification" content="6410fa0dc4eed7c08c14e3d0dc8e548445d160e1"/>
<meta name="description" content="여기를 눌러 링크를 확인하세요.">
<meta property="og:type" content="website">
<meta property="og:title" content="바로나마취통증의학과">
<meta property="og:description" content="여기를 눌러 링크를 확인하세요.">
<meta property="og:image" content="${pageContext.request.contextPath }/resources/images/commons/logo.png">
<meta property="og:url" content="http://www.thebarona.com">
<title>바로나통증의학과 방문을 환영합니다.</title>
<link href="${pageContext.request.contextPath }/resources/css/menu.css?ver=${ver}" rel="stylesheet"> 
<link href="${pageContext.request.contextPath }/resources/css/common.css?ver=${ver}" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/main.css?ver=${ver}" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/plugin/flexslider/flexslider.css" rel="stylesheet" type="text/css" media="screen">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/plugin/flexslider/jquery.flexslider-min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/cookie.js?ver=${ver}"></script>
<script>
     /* var stmnLEFT = 25; // 오른쪽 여백 
  	 var stmnGAP1 = 0; // 위쪽 여백 
  	 var stmnGAP2 = 230; // 스크롤시 브라우저 위쪽과 떨어지는 거리 
  	 var stmnBASE = 230; // 스크롤 시작위치 
  	 var stmnActivateSpeed = 35; //스크롤을 인식하는 딜레이 (숫자가 클수록 느리게 인식)
  	 var stmnScrollSpeed = 20; //스크롤 속도 (클수록 느림)
  	 var stmnTimer; 
  	 
  	 function RefreshStaticMenu() { 
  	  var stmnStartPoint, stmnEndPoint; 
  	  stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
  	  stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
  	  if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
  	  if (stmnStartPoint != stmnEndPoint) { 
  	   stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 15 ); 
  	   document.getElementById('STATICMENU').style.top = parseInt(document.getElementById('STATICMENU').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
  	   stmnRefreshTimer = stmnScrollSpeed; 
  	   }
  	  stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed); 
  	  } 
  	 function InitializeStaticMenu() {
  	  document.getElementById('STATICMENU').style.right = stmnLEFT + 'px';  //처음에 오른쪽에 위치. left로 바꿔도.
  	  document.getElementById('STATICMENU').style.top = document.body.scrollTop + stmnBASE + 'px'; 
  	  RefreshStaticMenu();
  	  } */
</script>
</head>
<body>
	<!-- wrapper (S) -->
	<div id="wrapper">
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="content" />
		<tiles:insertAttribute name="footer" />
		<%-- <tiles:insertAttribute name="quick" /> --%>
	</div>
	<!-- wrapper (E) -->
</body>
</html>