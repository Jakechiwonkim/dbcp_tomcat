<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL Core: remove</title>
</head>
<body>

<h2>JSTL Core Tag: remove</h2>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="str" value="Hello set Tag!!!.........." scope="session" />
JSTL ����: \${str} = ${str} <br>     <!-- JSTL ����  -->
���� ����(EL:ǥ�����):\${sessionScope.str} = ${sessionScope.str} <br>

<!-- ���� �׽�Ʈ  -->
\${param.str} = ${param.str} <br>
\${pageScope.str} = ${pageScope.str} <br>
\${requestScope.str} = ${requestScope.str} <br>
\${applicationScope.str} = ${applicationScope.str} <br>


<hr>
after removing str page scope<br>

<c:remove var="str" scope="page" />
\${str} = ${str} <br>

<hr>
after removing str session scope<br>

<c:remove var="str" scope="session" />
\${str} = ${str} <br>

<hr>
<c:set var="app" value="�������α׷�����" scope="application" />
\${app} = ${app} <br>

<c:remove var="app" />
\${app} = ${app} 



</body>
</html>