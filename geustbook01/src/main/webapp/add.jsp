<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.bitacademy.guestbook.vo.GuestbookVo" %>
<%@ page import="com.bitacademy.guestbook.dao.GuestbookDao" %>
<%@ page import="java.util.List" %>
<%
	request.setCharacterEncoding("utf-8"); // 응답을 UTF-8로 받아오고
	// 각 name에 속하는 값들을 자바의 변수에 저장
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	// vo객체에 받아온 값 저장
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	//vo객체를 dao를 통해 insert
	GuestbookDao dao = new GuestbookDao();
	dao.insert(vo);
	//redirect
	response.sendRedirect("/guestbook01");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>