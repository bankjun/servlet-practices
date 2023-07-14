<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!-- 자바 함수, 루프, 조건문 쓰는 클래스 import -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSTL Test: forEach</h1>
	<!-- var = 참조하는 이름, 이걸 페이지 스콥에 저장해서 사용하는데 그떄 참조할 이름인거임 -->
	<!-- varStatus: 루프의 상태 countㅍ루프홨수,  -->
	<c:forEach items="${list }" var="vo" varStatus="status">
		<h4>[${status.count }:${status.index }]${vo.no }:${vo.name }</h4>
	</c:forEach>
	
	
</body>
</html>