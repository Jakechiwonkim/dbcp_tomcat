import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class App {

	public static void main(String[] args) {
		App app = new App();
		app.testMysqlConsole();
	}
	
	public void testMysqlConsole() {
        
    	Connection con = null;
        Statement stmt = null;
        //String driverName = "org.gjt.mm.mysql.Driver";
        //String driverName = "com.mysql.jdbc.Driver";
        String driverName = "com.mysql.cj.jdbc.Driver";
        //String dbURL = "jdbc:mysql://localhost/univdb";
    	String dbURL = "jdbc:mysql://localhost:3306/univdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
        
    	try {
            Class.forName(driverName);
            con = DriverManager.getConnection(dbURL, "root", "1111");
            stmt = con.createStatement();
            ResultSet result = stmt.executeQuery("select * from student;");
           
            System.out.println("<b>아이디</b></td>"
           + "<td align=center><b>암호</b></td>"
           + "<td align=center><b>이름</b></td>"
           + "<td align=center><b>입학년도</b></td>"
           + "<td align=center><b>학번</b></td>"
           + "<td align=center><b>학과</b></td>"
           + "<td align=center><b>휴대폰1</b></td>"
           + "<td align=center><b>휴대폰2</b></td>"
           + "<td align=center><b>주소</b></td>"
           + "<td align=center><b>이메일</b></td>");

           while (result.next()) {
	           System.out.println( 
	        		    "<tr>"
	        		    +"   <td align=center>" + result.getString(1)  + "</td>"
	        		    +"   <td align=center>" + result.getString(2)  + "</td>"
	        		    +"   <td align=center>" + result.getString(3)  + "</td>"
	        		    +"   <td align=center>" + result.getString(4)  + "</td>"
	        		    +"   <td align=center>" + result.getString(5)  + "</td>"
	        		    +"   <td align=center>" + result.getString(6)  + "</td>"
	        		    +"   <td align=center>" + result.getString(7)  + "</td>"
	        		    +"   <td align=center>" + result.getString(8)  + "</td>"
	        		    +"   <td align=center>" + result.getString(9)  + "</td>"
	        		    +"   <td align=center>" + result.getString(10) + "</td>"
	        		    +"</tr>"
	        		   );
           }
            result.close();
        }
        catch(Exception e) {
        	System.out.println("MySql 데이터베이스 univdb의 student 조회에 문제가 있습니다. <hr>");
        	System.out.println(e.toString());
            e.printStackTrace();
        }
        finally {
            if(stmt != null)
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
            if(con != null)
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
        }
    }
}