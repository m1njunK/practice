<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<jsp:include page="/common/header.jsp"/>
<section class="wrap">
<table border=1>
	<tr>
		<th colspan="4">회원정보</th>
	</tr>
	<tr>
		<th>회원번호</th>
		<th>이름</th>
		<th>회원등록일</th>
		<th>기타</th>
	</tr>
	<!-- 등록된 회원 정보가 있을 시 출력 -->
	<tr>
		<td>
			<!-- 회원번호 -->
		</td>
		<td>
			<!-- 이름 -->
		</td>
		<td>
			<!-- 회원등록일 -->
		</td>
		<td>
			<!-- 기타 -->
		</td>
	</tr>
	
	<!-- 등록된 회원 목록정보가 존재할 시 페이징 처리 블럭 작성 -->
	<tr>
		<th colspan="4"></th>
	</tr>
	
	<!-- 등록된 회원 정보가 없을 시 출력 -->
	<tr>
		<th>등록된 회원 정보가 없습니다.</th>
	</tr>
	
</table>
</section>
<jsp:include page="/common/footer.jsp" />










