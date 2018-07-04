<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="lnb">
	<div id="con_left">
		<img src="${pageContext.request.contextPath }/resources/images/lnb/lnb_tit_intro.jpg" alt="상담">
		<ul class="outer">
			<li>
				<a href="${pageContext.request.contextPath }/counsel/notice_list.do">공지사항<i class="fas fa-minus"></i></a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath }/counsel/faq_list.do">자주하는질문<i class="fas fa-minus"></i></a>
			</li>
			<li>
				<a href="${pageContext.request.contextPath }/counsel/reserve.do">간편예약<i class="fas fa-minus"></i></a>
			</li>
		</ul>
		
		<%-- <div id="quick_left">
			<div class="phone">
				<img src="${pageContext.request.contextPath }/resources/images/commons/quickmenu01.jpg" />
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