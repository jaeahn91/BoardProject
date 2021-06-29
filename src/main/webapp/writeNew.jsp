<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="kr.ac.kopo.kopo01.domain.*" %>
<%@ page import="kr.ac.kopo.kopo01.service.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.sql.*, javax.sql.*, java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>차, 음료 갤러리</title>
</head>
<body>
<%
	
%>
	<table cellspacing=1 width=600 border=1>
	<tr>
		<td width=50><p align=center>번호</p></td>
		<td width=500><p align=center>제목</p></td>
		<td width=100><p align=center>등록일</p></td>
	</tr>
	<form method="post" action="createNew.jsp">
	<tr>
		<td></td>
		<td><input type="text" id="title" name="title"
		placeholder="제목을 입력하세요" width=500></td>
		<td></td>
	</tr>
	<tr>
		<td colspan=3>
		<textarea id="content" name="content"></textarea>		
		</td>
	</tr>
	</table>
	<table>
	<tr>
		<td width=500></td>
		<td><input type="button" value="취소" OnClick="location.href ='index.jsp'"></td>
		<td><button width=50>등록</button></td>		
	</tr>
	</table>
	</form>
	
<%

%>

</body>
</html>








