<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP ���� : main.jsp</title>
</head>
<body>
	<h2> include �׼� �±� </h2>
	main.jsp ���� ���� �κ��Դϴ�.<br> 
	include �±״� ������ �Ӽ� ���� ����� �±� ��ġ�� �����մϴ�.<br>
	
	<jsp:include page="sub.jsp" >
		<jsp:param value="red" name="color"/>
		<jsp:param value="52" name="weeks"/>
		<jsp:param value="gdhong" name="name_en"/>
		<jsp:param value="����������" name="name_ko"/>
	</jsp:include>

	main.jsp ���� �� �κ��Դϴ�.
	<hr>
	../08/grade.html
	<jsp:include page="../08/grade.html" /> 
</body>
</html>