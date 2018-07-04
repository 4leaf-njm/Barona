<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="content">
	<br>
	<h1 style="color:#007886;">Q&A</h1>
	<div style="text-align: right;">
		<button class="btn btn-default" onclick="javascript:location.href='${pageContext.request.contextPath }/qnaBoard/qnaAdd.do'">질문하기</button>
	</div>
	<hr>
	<br>
	<table class="table table-hover">
		<thead>
			<tr>
				<th style="width: 3%;">No.</th>
				<th>제목</th>
				<th style="width: 7%;">작성자</th>
				<th style="width: 8%;">답변여부</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="qna" items="${qnaList }">
				<tr onclick="javascript:location.href='${pageContext.request.contextPath }/qnaBoard/qnaView.do?no=${qna.qnaNo}'">
					<td style="text-align: center;">${qna.qnaNo }</td>
					<td>${qna.qnaTitle }</td>
					<td style="text-align: center;">${qna.qnaWriter }</td>
					<c:choose>
						<c:when test="${qna.reply_yn eq 'Y'}">
							<td style="text-align: center;">답변</td>
						</c:when>
						<c:otherwise>
							<td style="text-align: center; color: red;">미답변</td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>