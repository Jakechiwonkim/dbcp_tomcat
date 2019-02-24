<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL Core: paramhandle</title>

<%
//request.setCharacterEncoding("EUC-KR");

%>
</head>
<body onload="abc()">
<script type="text/javascript">
const user = '${param.user}';
const job = '${param.job}';


function abc(){
	console.log('user=' + user);
	console.log('job=' + job);
}

</script>
<h2>JSTL Core Tag: import, redirect, url에서 param 이용</h2>
\${param.user} = ${param.user} <P>
\${param.job} = ${param.job} <P>

</body>
</html>