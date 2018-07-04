<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="content">
	<br>
	<h1 style="color:#007886;">Q&A 등록하기</h1>
	<hr>
	<form action="qnaAdd.do" method="post" name="frm">
		<table class="table">
			<tr>
				<th style="width: 90px;">제목</th>
				<td colspan="5"><input style="width:740px;" type="text" name="qnaTitle"></td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td><input type="text" name="qnaPhone"></td>
				<th>비밀번호</th>
				<td><input type="password" name="qnaPwd"></td>
				<th>작성자</th>
				<td><input type="text" name="qnaWriter"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="5"><textarea cols="113" rows="30" name="qnaContent" style="resize: none;"></textarea></td>
			</tr>
			<tr>
				<th colspan="6" style="text-align: center;">
					<button class="btn btn-default" onclick="javascript:go_addQna()">등록하기</button>
					<button class="btn btn-default" onclick="javascript:history.go(-1);">취소하기</button>
				</th>
			</tr>
		</table>
	</form>
	<script>
		function go_addQna() {
			document.frm.submit();
		}
	</script>
</div>