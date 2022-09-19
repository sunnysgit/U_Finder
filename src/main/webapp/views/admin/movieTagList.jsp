<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="admin_sessionChk.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/project_semi/css/admin/admin.css">

</head>
<body>
	
	<table><caption>태그 목록</caption>
		<tr>
			<th>태그번호</th>
			<th>태그</th>
		</tr>
		<c:if test="${empty list }">
			<tr>
				<td colspan="2">DB에 태그가 없다!</td>
			</tr>
		</c:if>
		<c:if test="${not empty list }">
			<c:forEach var="tag" items="${list }">
				<tr>
					<td>${tag.tagno }</td>
					<td>${tag.tag }</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	
	<button onclick="location.href='/project_semi/views/admin/admin_main.do'">메인으로</button>