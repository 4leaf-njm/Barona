<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
$(document).ready(function(){
	$('.submenu').hover(function(){
		if($(this).hasClass('on')) {
			$(this).removeClass('on');
			$(this).find('span.vert').show();
		} else {
			$(this).addClass('on');
			$(this).find('span.vert').hide();
		}
	});
});
</script>
<div id="lnb">
	<div id="con_left">
		<img src="${pageContext.request.contextPath }/resources/images/menu/treatment_menu.png" alt="질환 정보" style="margin-bottom: 5px;">
		<ul class="outer">
			<li>
				<a href="${pageContext.request.contextPath }/expert/expert_1.do">팔꿈치<i class="fas fa-minus"></i></a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath }/expert/expert_2.do" >어깨<i class="fas fa-minus"></i></a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath }/expert/expert_3.do">목<i class="fas fa-minus"></i></a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath }/expert/expert_3.do">통증클리닉<i class="fas fa-minus"></i></a>
			</li>
		</ul>
		
		<%-- <div id="quick_left">
			<div class="phone">
				<img src="${pageContext.request.contextPath }/resources/images/commons/quickmenu01.jpg">
			</div>
			
			<a href="#" >
				<img class="icon" src="${pageContext.request.contextPath }/resources/images/menu/info.jpg" alt="공지사항">
			</a>
			<a href="#">
				<img class="icon" src="${pageContext.request.contextPath }/resources/images/menu/fnq.jpg" alt="자주하는 질문">
			</a>
			<a href="#">
				<img class="icon" src="${pageContext.request.contextPath }/resources/images/menu/after.jpg" alt="수술/시술 후기">
			</a>
			<a href="#">
				<img class="icon" src="${pageContext.request.contextPath }/resources/images/menu/qna.jpg" alt="일반 상담 문의">
			</a>
			<a href="#">
				<img class="icon" src="${pageContext.request.contextPath }/resources/images/menu/reservation.jpg" alt="진료 예약 문의">
			</a>
			<a href="#">
				<img class="icon" src="${pageContext.request.contextPath }/resources/images/menu/blog.jpg" alt="네이버 블로그">
			</a>
			
		</div>
		
		<div id="cooper">
<!-- 			연계 회사 -->
		</div> --%>
	</div>
</div>
