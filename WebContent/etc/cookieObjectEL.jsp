<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ǥ����� ���尴ü cookie</title>
</head>
<body>


<% 	
//Cookie c = new Cookie("userid", "");
//c.setMaxAge(0);

Cookie c = new Cookie("userid", "gdhong"); //java.net.URLEncoder.encode("�ѱ��Է�") 

response.addCookie(c);
%>

<h2>ǥ����� ���尴ü cookie �̿�(ȿ����)</h2>

\${cookie.userid.value} = ${cookie.userid.value}

<p>
<hr>

<h2>��ũ��Ʈ������ ���� Cookie �̿�(��ȿ����)</h2>
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
<th>Ű</th><th>���</th>
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