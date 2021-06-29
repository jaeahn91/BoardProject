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
	BoardItemService boarditemservice = new BoardItemServiceImpl();
	List<BoardItem> boarditems = boarditemservice.selectAll();
	int id = 0;
	String title = "";
	String date = "";	
%>
	<table cellspacing=1 width=600 border=1>
	<tr>
		<td width=50><p align=center>번호</p></td>
		<td width=500><p align=center>제목</p></td>
		<td width=100><p align=center>등록일</p></td>
	</tr>
<%
for (BoardItem boarditem : boarditems) {
	id = boarditem.getId();
	title = boarditem.getTitle();
	date = boarditem.getDate();
	
	out.print("<tr>");
	out.print("<td width=50><p align=center>"+ id +"</p></td>");
	out.print("<td width=500><p align=center><a href='selectOneItem.jsp?id="+id+"'>"+ title +"</a></p></td>");
	out.print("<td width=100><p align=center>"+ date +"</p></td>");
	out.print("</tr>");	
}
%>
	</table>
	<table>
	<tr>
		<td width=550></td>
		<td><input type=button value="신규" OnClick="location.href ='writeNew.jsp'"></td>
	</tr>
	</table>


</body>
</html>








