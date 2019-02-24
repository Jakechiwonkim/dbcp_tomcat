<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>표현언어 연산자 empty 예제</title>
</head>
<body>


\${null} = ${ null } <p>
\${n} = ${n} <P>

\${empty null} = ${empty null} <p>
\${empty n} = ${empty n} <p>

\${param.user} = ${param.user} <P>
\${empty param.user} = ${empty param.user} <P>

\${param.name} = ${param.name} <P>
\${empty param.name} = ${empty param.name} <P>

\${param.userName} = ${param.userName} <P>
\${empty param.userName} = ${empty param.userName} <P>

<h3>세션테스트</h3>

\${ userName } = ${ userName } <P>
\${ sessionScope.userName } = ${ sessionScope.userName } <P>

<%
session.setAttribute("userName", "퍼펙트JSP");
%>
\${ userName } = ${ userName } <P>
\${ sessionScope.userName } = ${ sessionScope.userName } <P>
<%
session.invalidate();
%>
\${ userName } = ${ userName } <P>
<%-- \${ sessionScope.userName } = ${ sessionScope.userName } <P> --%>


</body>
</html>