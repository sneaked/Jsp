import java.sql.*;


public class Oracle_ConnTest {

	public static void main(String[] args) throws Exception{
		 Class.forName("oracle.jdbc.driver.OracleDriver");
	      System.out.println("Oracle_JDBC 드라이버 로딩 완료");
	      
	      String url = "jdbc:oracle:thin:@localhost:1521:xe";
	      String user = "system";
	      String pwd = "jsp804";
	      
	      Connection conn = DriverManager.getConnection(url, user, pwd);
	      System.out.println("DB연결 완료");
	      
	      String sql = "select id,name from member where id= ? ";
	      PreparedStatement pstmt = conn.prepareStatement(sql);
	      pstmt.setString(1, "aaa");
	      ResultSet rs = pstmt.executeQuery();
	      
	      while(rs.next()){
	    	  String id = rs.getString("id");
	    	  String name = rs.getString("name");
	    	  System.out.println(id+"/"+name+"/");
	      }
	      
	    /*  while(rs.next()){
	    	  String id = rs.getString("id");
	    	  String passwd = rs.getString("passwd");
	    	  String name = rs.getString("name");
	    	  Timestamp register = rs.getTimestamp("reg_date");
	    	  System.out.println(id+"/"+passwd+"/"+name+"/"+register.toString()+"/");
	      }
	      */
	      /*String sql = "insert into test (id) values ('f')";
	      
	      PreparedStatement pstmt = conn.prepareStatement(sql);
	      
	      pstmt.executeUpdate(sql);*/
	    
	      
	      System.out.println("ok");

	      rs.close();
	      pstmt.close();
	      conn.close();
	   
	}

}
