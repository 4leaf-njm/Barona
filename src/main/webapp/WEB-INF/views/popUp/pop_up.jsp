<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/cookie.js"></script>
<script>
	function closePopup() {
        setCookie("popupYN", "N", 1);
        var cookieCheck = getCookie('popupYN');
        self.close();
	}
	
	$(function() {
	   var btnClose = $('.btnClose');

	   btnClose.click(function() {
	      setCookie( "popupYN", "N" , 1);
	      window.close();
	   });
	});
</script>
<style>
	body {margin: 0;}
	.btn_box {padding: 10px 6px; background: #000; text-align: right;}
	.btn_box a {display: inline-block; font-size: 14px; color: #fff; margin-right: 5px; padding: 5px 10px; background: #393939; text-decoration: none;}
</style>
</head>
<body onresize="parent.resizeTo(414, 618)" onload="parent.resizeTo(414, 618)">
	<img src="${pageContext.request.contextPath }/resources/images/commons/pop_up_image.jpg">
	<div class="btn_box">
		<a href="#" class="btnClose"><b>24</b>시간 동안 다시 열람하지 않습니다.</a>
		<a href="javascript:window.close();">닫기</a>
	</div>
</body>
</html>