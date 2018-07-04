<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	.submenu{
		height: 56px;
		background-color: white;
		cursor:pointer;
		font-size: 15px;
		font-weight: bold;
		border-bottom: 1px solid #e4e4e4;
		line-height: 56px;
		padding-left: 22px;
		color: #8d8d8d;
		position: relative;
	}
	.submenu.first{
		border-top: 6px solid #e4e4e4;
		height: 62px;
	}
	.submenu.last{
		border-bottom: 16px solid #e4e4e4;
		height:72px;
	}
	.submenu span {
		display: inline-block;
		position: absolute;
		top: 27px;
		right: 19px;
		width: 16px;
		height: 3px;
		background: #42a5e6;
	}
	.icon{
		margin-top: 2px;
	}
	#content {
		background: #fff;
		padding-bottom: 72px;
		padding-left: 50px;
		margin-bottom: 50px;
	}
</style>

<div id="lnb" style="background-color: white;">
	<div id="con_left">
		<img src="${pageContext.request.contextPath }/resources/images/menu/qna_menu.png" alt="질의응답">
		<div class="submenu first" onclick="location.href='${pageContext.request.contextPath }/qnaBoard/qnaList.do'">Q&A<span></span></div>
		
		<div id="quick_left">
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
		</div>
	</div>
</div>
