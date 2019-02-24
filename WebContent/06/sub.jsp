<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP 예제 : sub.jsp</title>
</head>
<body>
	<hr>
	
	<font color=${param.color }>
	이 부분은 include 태그가 있던 자리로 sub.jsp의 결과가 삽입됩니다.
	</font>
	
	<h3 style="color: ${param.color };">
	이 부분은 include 태그가 있던 자리로 sub.jsp의 결과가 삽입됩니다.</h3>
	
	<p>1년=> ${param.weeks }주</p>
	
	
	<%=request.getParameter("name_en")%>
<br/>	
	
	<% String name_ko =request.getParameter("name_ko");
	%>
\${param.name_ko}=>${param.name_ko}
<br/>	
<hr>
</body>
</html>