<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>표현언어 내장객체 cookie</title>
</head>
<body>


<% 	
//Cookie c = new Cookie("userid", "");
//c.setMaxAge(0);

Cookie c = new Cookie("userid", "gdhong"); //java.net.URLEncoder.encode("한글입력") 

response.addCookie(c);
%>

<h2>표현언어 내장객체 cookie 이용(효율적)</h2>

\${cookie.userid.value} = ${cookie.userid.value}

<p>
<hr>

<h2>스크립트릿에서 직접 Cookie 이용(비효율적)</h2>
<%  
	Cookie[] cs = request.getCookies(); 
	if (!(cs == null)) {
		for (Cookie ck : cs) {
		if ( ck.getName().equals("userid") )
			out.println(ck.getValue());
		}
	}		
%>

<hr>

<table border="1">
<tr>
<th>키</th><th>밸류</th>
</tr>
<%  
	Cookie[] cs2 = request.getCookies(); 
	if (!(cs2 == null)) 
	{
		for (Cookie ck : cs2) 
		{
			out.println("<tr>");
			out.println("<td>");
			out.println(ck.getName());
			out.println("</td>");
			
			out.println("<td>");
			out.println(ck.getValue());
			out.println("</td>");
		}
		out.println("</tr>");
	}		
%>
</table>

</body>
</html>