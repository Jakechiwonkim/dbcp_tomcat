<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�����ͺ��̽� ���� : ���̺� student ��ȸ</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<h2>�����ͺ��̽� univdb�� ���̺� member ��ȸ ���α׷� </h2>

<hr>
<div align="center">
<h2>�л����� ��ȸ</h2>

<%
    Connection con = null;
    Statement stmt = null;
    //String driverName = "org.gjt.mm.mysql.Driver";
    String driverName = "com.mysql.cj.jdbc.Driver"; //"com.mysql.jdbc.Driver";
    String dbURL = "jdbc:mysql://localhost:3306/univdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";

    try {
        Class.forName(driverName);
        con = DriverManager.getConnection(dbURL, "root", "1111");
        stmt = con.createStatement();
        ResultSet result = stmt.executeQuery("select * from member");
%>
    <table width="100%" border=2 cellpadding=1>
    <tr>
       <td align=center><b>��ȣ</b></td>
       <td align=center><b>����</b></td>
       <td align=center><b>�ۼ���</b></td>
       <td align=center><b>�ۼ���</b></td>
    </tr>
<%
        while (result.next()) {
%>
    <tr>
       <td align=center><%= result.getString(1) %></td>
       <td align=center><%= result.getString(2) %></td>
       <td align=center><%= result.getString(3) %></td>
       <td align=center><%= result.getString(4) %></td>
    </tr>
<%
        }
        result.close();
    }
    catch(Exception e) {
    	out.println("MySql �����ͺ��̽� univdb�� student ��ȸ�� ������ �ֽ��ϴ�. <hr>");
        out.println(e.toString());
        e.printStackTrace();
    }
    finally {
        if(stmt != null) stmt.close();
        if(con != null) con.close();
    }
%>
</table>
</div>

</body>
</html>
