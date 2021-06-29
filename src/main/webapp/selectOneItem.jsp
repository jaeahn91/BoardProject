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
	int id = 0;
	String title = "";
	String date = "";
	String content = "";
	id = Integer.parseInt(request.getParameter("id"));
	BoardItemService boarditemservice = new BoardItemServiceImpl();
	BoardItem boarditem = boarditemservice.selectOne(id);
%>
	<table cellspacing=1 width=600 border=1>
	<tr>
		<td width=50><p align=center>번호</p></td>
		<td width=500><p align=center>제목</p></td>
		<td width=100><p align=center>등록일</p></td>
	</tr>
<%
	id = boarditem.getId();
	title = boarditem.getTitle();
	date = boarditem.getDate();
	content = boarditem.getContent();
	
	out.print("<tr>");
	out.print("<td width=50><p align=center>"+ id +"</p></td>");
	out.print("<td width=500><p align=center>"+ title +"</p></td>");
	out.print("<td width=100><p align=center>"+ date +"</p></td>");
	out.print("</tr>");
	out.print("<tr>");
	out.print("<td colspan=3 width=650>" + content + "</td>");
	out.print("</tr>");
%>
	</table>
	<table>
	<tr>
		<td><input type=button value="목록" OnClick="location.href ='index.jsp'"></td>
		<td width=450></td>
<% 	
	out.print("<td><input type=\"button\" value=\"수정\" " 
		+ "OnClick=\"location.href =\'editItem.jsp?id="+id+"\'\"></td>");
	out.print("<td><input type=\"button\" value=\"삭제\" " 
		+ "OnClick=\"location.href =\'deleteItem.jsp?id="+id+"\'\"></td>");	
%>
	</tr>
	</table>


</body>
</html>








