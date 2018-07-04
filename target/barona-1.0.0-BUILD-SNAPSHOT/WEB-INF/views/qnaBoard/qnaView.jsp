<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="content">
	<fmt:parseDate var="qnaRegdate" value="${qna.qnaRegdate}" pattern="yyyy-MM-dd HH:mm:ss" /> 
	<fmt:formatDate var="regdate" value="${qnaRegdate }" pattern="yyyy.MM.dd"/>
	<br>
	<h1 style="color:#007886;">${qna.qnaNo}.${qna.qnaTitle }</h1>
	<p style="float: left;">작성자 : ${qna.qnaWriter } &nbsp;|&nbsp;  작성일 : ${regdate }</p>
	<div style="position: relative; bottom: 10px; float: right;">
		<button class="btn btn-default" onclick="javascript:go_modify('${qna.qnaNo}', '${qna.qnaPwd }');">수정</button>
		<button class="btn btn-default" onclick="javascript:go_remove('${qna.qnaNo}', '${qna.qnaPwd }');">삭제</button>&nbsp;
	</div>
	<hr style="clear: both;">
	<div>${qna.qnaContent }</div>
	
	<form method="post" name="frm">
		<input type="hidden" name="no" />
	</form>
	
	<c:if test="${qna.reply_yn eq 'Y' }">
		<fmt:parseDate var="replyRegdate" value="${reply.replyRegdate}" pattern="yyyy-MM-dd HH:mm:ss" /> 
		<fmt:formatDate var="regdate2" value="${replyRegdate }" pattern="yyyy.MM.dd"/>
		<br><br>
		<h3 style="color:#007886;">답변</h3>
		<p style="float: left;">작성자 : ${reply.replyWriter } &nbsp;|&nbsp;  작성일 : ${regdate2 }</p>
		<hr style="clear: both;">
		<div>${reply.replyContent }</div>
	</c:if>	
	
	<div class="reply" style="display: none;">
		<br><br>
		<h3 style="color:#007886;">답변</h3>
		<form action="qnaReply.do" method="post" name="frm_reply">
			<input type="hidden" name="qnaNo" value="${qna.qnaNo}" />
			<table class="table">
				<colgroup>
					<col style="width: 65px;" />
					<col width="*" />
				</colgroup>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="replyWriter" style="width: 794px;"></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="125" rows="5" name="replyContent" style="resize: none;"></textarea></td>
				</tr>
				<tr>
					<th colspan="2" style="text-align: center;">
						<button class="btn btn-default" onclick="javascript:go_addQna()">등록</button>
					</th>
				</tr>
			</table>
		</form>
	</div>
	
	<div style="text-align: center">
		<c:if test="${qna.reply_yn eq 'N' }">
			<button class="btn btn-default" onclick="javascript:go_replyForm()">답변달기</button>
		</c:if>
		<button class="btn btn-default" onclick="javascript:history.go(-1);">뒤로가기</button>
	</div>
	
	<script>
		function go_modify(no, pwd) {
			var answer = prompt('비밀번호를 입력해주세요.');
			if(answer == pwd) {
				location.href = 'qnaModify.do?no=' + no;
			} else {
				alert('비밀번호가 일치하지 않습니다.');				
			}
		}
		function go_remove(no, pwd) {
			var frm = document.frm;
			var answer = prompt('비밀번호를 입력해주세요.');
			if(answer == pwd) {
				var result = confirm('이 글을 삭제하시겠습니까 ?');
				if(result){
					frm.no.value = no;
					frm.action = 'qnaRemove.do';
					frm.submit();
				}
			} else {
				alert('비밀번호가 일치하지 않습니다.');				
			}
		}
		function go_replyForm() {
			$('.reply').show();
		}
	</script>
</div>