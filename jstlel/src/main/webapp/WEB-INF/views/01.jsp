<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>값 출력</h4>
	${iVal } <br><!-- 내부 request(혹은 session)에서 ival이란걸 찾음 -->
	${lval } <br>
	${fval } <br>
	${bval } <br>
	${sval } <br>
	<h4>객체출력</h4>
	${object } <br>
	${vo.no } <br>
	${vo.name }<br>
	<h4>map출력</h4>
	${m.ival }<br>
	${m.sval }<br>
	${m.fval }<br>
	<h4>산술 연산</h4>
	${3*4+6/2 } <br>
	${ival + 10 }<br>
	
	<h4>관계 연산</h4>
	${ival < 10 }		<br>
	${ival == 10 }		<br>
	${obj == null }: 비추, null은 자바 코드기 때문에 추천하지않음 el을 쓰는건 자바코드와의 분리를 위해서인데<br>
	${empty object }: 추천	**empty**<br>
	${obj != null }: 비추	, 자바를 사용하면 안좋지,  <br>
	${not empty object }:추천	<br>
	<h4>논리 연산</h4>
	${ival == 10 && lval < 10000 }<br>
	${ival == 10 || lval < 10000 }<br>
	
	<h4>요청 파라미터</h4> 
	<p>//?a=10&email=zhqkfxm0127@namver.com 이렇게 보내는값들</p>
	${param.a }<br>
	${param.email }<br>
	
	<h4>Context Path</h4>
	${pageContext.request.contextPath }
</body>
</html>