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
	<title>게시물 수정</title>
</head>
<body>
<% 
//한글이 post/get의 파라미터로 연동될 때 필요한 처리
request.setCharacterEncoding("utf-8");

int id = 0;
int b_id = 1; // 이 게시판의 b_id, DB에서 외래키로 사용됨
int result = 0;
String title = "";
String content = "";

id = Integer.parseInt(request.getParameter("id"));
BoardItemService boarditemservice = new BoardItemServiceImpl();
BoardItem boarditem = boarditemservice.selectOne(id);
title = boarditem.getTitle();
content = boarditem.getContent();
%>
<% 

%>
	<table cellspacing=1 width=600 border=1>
	<tr>
		<td width=50><p align=center>번호</p></td>
		<td width=500><p align=center>제목</p></td>
		<td width=100><p align=center>등록일</p></td>
	</tr>
	<% out.print("<form method=\"post\" action=\"editItemDone.jsp?id=\"" + id + "\">");
	%>
	<tr>
		<td></td>
		<td>
		<% 
		out.print("<input type=\"text\" id=\"title\" name=\"title\" value=\""+title+"\"width=500>");
		%>
		</td>
		<td></td>
	</tr>
	<tr>
		<td colspan=3>
		<textarea id="content" name="content">
		<% out.print(content); %>
		</textarea>		
		</td>
	</tr>
	</table>
	<table>
	<tr>
		<td width=500></td>
		<td><input type="button" value="취소" OnClick="location.href ='index.jsp'"></td>
<% 
	out.print("<td><button width=50 id=\"" + id + "\">등록</button></td>");		
%>		
	</tr>
	</table>
	</form>
</body>
</html>