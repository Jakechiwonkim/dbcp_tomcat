<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�����ͺ��̽� ���� : dbconnect.jsp</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<h2>�����ͺ��̽� ����̹��� DB univdb ���� ���� ���α׷� </h2>
<%
try {
    String driverName = "com.mysql.cj.jdbc.Driver"; //"org.gjt.mm.mysql.Driver";
    //String dbURL = "jdbc:mysql://localhost:3306/univdb";
    String dbURL = "jdbc:mysql://localhost:3306/univdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    
    Class.forName(driverName);
    Connection con = DriverManager.getConnection(dbURL, "root", "1111");
    out.println("MySql �����ͺ��̽� univdb�� ���������� �����߽��ϴ�");
    con.close();
}
catch (Exception e) {
	out.println("MySql �����ͺ��̽� univdb ���ӿ� ������ �ֽ��ϴ�. <hr>");
    out.println(e.getMessage());
    e.printStackTrace();
}
%>

</body>
</html>