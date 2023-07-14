<%@page import="jstlel.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	UserVo vo4 = new UserVo();
	vo4.setNo(4l);
	vo4.setName("둘리4");
	
	pageContext.setAttribute("vo", vo4);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>Scope, 객체의 존속범위</h4>
	${vo.no }<br> 	<!--${PageScope.vo.no }  -->
	${vo.name }<br> <!-- 지정을 안해도 PAGE에서 먼저 찾음 -->

	
	== request scope=====================<br>
	${requestScope.vo.no } -- 리퀘스트에서 찾아라 <br>
	${requestScope.vo.name }<br>
	
	== session scope=====================<br>
	${sessionScope.vo.no } -- session에서 찾아라 <br>
	${sessionScope.vo.name }<br>
	
	== application scope=====================<br>
	${applicationScope.vo.no } -- application에서 찾아라 <br>
	${applicationScope.vo.name }<br>
	
</body>
</html>