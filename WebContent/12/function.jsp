<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ page isELIgnored="false" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>EL 함수</title>
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

	<h2>EL 함수 예제</h2>
	
	변수: \${ requestScope.now  }=> ${ requestScope.now  }<p>
	[Refresh]하면 현재 시간(함수값) : ${ zz:format(requestScope.now) }
	
	
	
	<hr>
	
	<p>변수: \${ sessionScope.now }=>${ sessionScope.now }
	<p>처음 접속한 시간(함수값) : ${ zz:format(sessionScope.now) }
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