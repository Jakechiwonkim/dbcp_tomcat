<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page isELIgnored="false" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EL �Լ�</title>
</head>
<body>

	<%@ taglib prefix="zz" uri="/WEB-INF/tld/ELfunction.tld"%>
	<%
		java.util.Date today = new java.util.Date();
		request.setAttribute("now", today);
		
		if (session.isNew()){
			session.setAttribute("now", today);
		}
	%>

	<h2>EL �Լ� ����</h2>
	
	����: \${ requestScope.now  }=> ${ requestScope.now  }<p>
	[Refresh]�ϸ� ���� �ð�(�Լ���) : ${ zz:format(requestScope.now) }
	
	
	
	<hr>
	
	<p>����: \${ sessionScope.now }=>${ sessionScope.now }
	<p>ó�� ������ �ð�(�Լ���) : ${ zz:format(sessionScope.now) }
	<p>
	
	<hr>
	<hr>

	<p> ${ zz:add("4", "3") }
	<p>
	
	<p> ${ zz:subtract( "6", "1.5") }
	<p>
	
	<p> ${ zz:hello() }
	
</body>
</html>