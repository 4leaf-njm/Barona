<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<style>
	#STATICMENU {
	   margin: 0pt;
	   padding: 0pt;
	   position: absolute;
	   right: 0px;
	   top: 0px;
	   width: 66px;
	   height: 240px;
	}
	#STATICMENU img{
	   width: 66px;
	   height: 66px;
	}
</style>
<div id="STATICMENU">
   <img style="cursor: pointer;" onclick="javascript:window.open('https://www.kakaocorp.com/service/KakaoTalk?lang=ko');" alt="카카오톡" src="${pageContext.request.contextPath }/resources/images/icon/kakao.png">
   <img style="cursor: pointer;" onclick="javascript:window.open('https://www.facebook.com/');" alt="페이스북" src="${pageContext.request.contextPath }/resources/images/icon/facebook.png">
   <img style="cursor: pointer;" onclick="javascript:window.open('https://www.instagram.com/?hl=ko');" alt="인스타그램" src="${pageContext.request.contextPath }/resources/images/icon/insta.png">
</div>