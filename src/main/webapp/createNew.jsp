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
	<title>게시물이 등록되었습니다</title>
</head>
<body>
	<table>
		<tr>
<% 
//한글이 post/get의 파라미터로 연동될 때 필요한 처리
request.setCharacterEncoding("utf-8");

int b_id = 1; // 이 게시판의 b_id, DB에서 외래키로 사용됨
String title = request.getParameter("title");
String content = request.getParameter("content");

BoardItemService boarditemservice = new BoardItemServiceImpl();
BoardItem boarditem = new BoardItem();
boarditem.setB_id(b_id);
boarditem.setTitle(title);
boarditem.setContent(content);
int result = boarditemservice.create(boarditem);

if (result != 0) {
	out.print("<td><h1>게시물이 등록되었습니다</h1></td>");
} else {
	out.print("<td><h1>오류가 발생했습니다. 다시 시도해 주세요</h1></td>");
}

%>
		</tr>
	</table>
	<table>
		<tr>
			<td width=500>
			</td>
			<td><input type="button" value="메뉴로" OnClick="location.href ='index.jsp'">
			</td>
		</tr>
	</table>
</body>
</html>