<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP ���� : sub.jsp</title>
</head>
<body>
	<hr>
	
	<font color=${param.color }>
	�� �κ��� include �±װ� �ִ� �ڸ��� sub.jsp�� ����� ���Ե˴ϴ�.
	</font>
	
	<h3 style="color: ${param.color };">
	�� �κ��� include �±װ� �ִ� �ڸ��� sub.jsp�� ����� ���Ե˴ϴ�.</h3>
	
	<p>1��=> ${param.weeks }��</p>
	
	
	<%=request.getParameter("name_en")%>
<br/>	
	
	<% String name_ko =request.getParameter("name_ko");
	%>
\${param.name_ko}=>${param.name_ko}
<br/>	
<hr>
</body>
</html>