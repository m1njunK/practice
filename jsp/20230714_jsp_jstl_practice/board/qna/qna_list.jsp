<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- qna_list.jsp -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<jsp:include page="../../common/header.jsp" />
<br/>
<section class="wrap">
	<table>
		<tr>
			<th colspan="5">
				<h1>질문과 답변 목록</h1>
			</th>
		</tr>
		<c:if test="${!empty member}">
			<tr>
				<th colspan="5" style="text-align:right">
					<a href="qna_write.jsp">질문 작성하러 가기</a>
				</th>
			</tr>
		</c:if>
		<c:choose>
			<c:when test="${rs.rowCount > 0}">
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성시간</th>
					<th>조회수</th>
				</tr>
				<c:forEach var="board" items="${rs.rows}">
				<tr>
					<td>${board.qna_num}</td>
					<td style="text-align:left;padding:5px;">
						<a href="qna_detail.jsp?qna_num=${board.qna_num}">
						${board.qna_title}
						</a>
					</td>
					<td>${board.qna_name}</td>
					<td>${board.qna_date}</td>
					<td>${board.qna_readcount}</td>
				</tr>
				<tr>
					<th colspan="5">삭제된 게시물 입니다.</th>
				</tr>
				</c:forEach>
				
				<!-- 페이징 처리 -->
			</c:when>
			<c:otherwise>
				<tr>
					<th colspan="5">
						등록된 게시물이 없습니다.
					</th>
				</tr>
			</c:otherwise>
		</c:choose>
		
	</table>
</section>
<jsp:include page="../../common/footer.jsp" />












