<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<jsp:include page="/common/header.jsp" />
<section class="wrap">
<table border=1>
	<tr>
		<th colspan="4">회원정보</th>
	</tr>
	<tr>
		<th>회원번호</th>
		<th>아이디</th>
		<th>회원등록일</th>
		<th>기타</th>
	</tr>
	<!-- 등록된 회원 정보가 있을 시 출력 -->
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td>
			<a href="<c:url value='/management/memberUpdate.jsp'/>?u_num=">수정</a> |
			<a href="<c:url value='/management/memberDelete.jsp'/>?u_num=">삭제</a>
		</td>
	</tr>
	<tr>
		<td colspan="4">
			<c:if test="${pm.prev}">
				<a href="<c:url value='/management/member.jsp'/>?selectPage=${pm.startPage-1}">[이전]</a>
			</c:if>
			<c:forEach var="i" begin="${pm.startPage}" end="${pm.endPage}">
				<a href="<c:url value='/management/member.jsp'/>?selectPage=${i}">[${i}]</a>
			</c:forEach>
			<c:if test="${pm.next}">
				<a href="<c:url value='/management/member.jsp'/>?selectPage=${pm.endPage + 1}">[다음]</a>
			</c:if>
		</td>
	</tr>
	
	<!-- 등록된 회원 정보가 없을 시 출력 -->
	<tr>
		<td colspan="4">등록된 회원정보가 없습니다.</td>
	</tr>
</table>
</section>
<jsp:include page="/common/footer.jsp" />











