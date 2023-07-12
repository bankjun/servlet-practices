<%@page import="com.bitacademy.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%
	List<GuestbookVo> list = (List<GuestbookVo>)request.getAttribute("list");
	int i = 0;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>

	<form action="/guestbook02/gb" method="post">
	<input type="hidden" name="a" value = "add">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" value=" 확인 "></td>
		</tr>
	</table>
	</form>
	
	<br>
	<h3>방명록</h3>
<%
	for(GuestbookVo vo : list){
%>
	<br>
	<form action="/guestbook/gb" method="post">
	<input type="hidden" name="no" value="<%=vo.getNo() %>">
	<input type="hidden" name="a" value="deleteform">
	<table width=510 border=1>
		<tr>
			<td>[<%=++i %>]</td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getRegDate() %></td>
			<td><input type="submit" value="삭제"></td>
		</tr>
		<tr>
			<td colspan=4><%=vo.getMessage() %></td>
		</tr>
	</table>
	</form>
<%
	}
%>
	
</body>
</html>
<%-- <a href="/guestbook02/gb?a=deleteform&no=<%=vo.getNo() %>">삭제</a> --%>