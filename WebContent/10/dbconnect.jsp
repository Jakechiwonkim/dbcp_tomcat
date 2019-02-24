<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>데이터베이스 예제 : dbconnect.jsp</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<h2>데이터베이스 드라이버와 DB univdb 연결 점검 프로그램 </h2>
<%
try {
    String driverName = "com.mysql.cj.jdbc.Driver"; //"org.gjt.mm.mysql.Driver";
    //String dbURL = "jdbc:mysql://localhost:3306/univdb";
    String dbURL = "jdbc:mysql://localhost:3306/univdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    
    Class.forName(driverName);
    Connection con = DriverManager.getConnection(dbURL, "root", "1111");
    out.println("MySql 데이터베이스 univdb에 성공적으로 접속했습니다");
    con.close();
}
catch (Exception e) {
	out.println("MySql 데이터베이스 univdb 접속에 문제가 있습니다. <hr>");
    out.println(e.getMessage());
    e.printStackTrace();
}
%>

</body>
</html>