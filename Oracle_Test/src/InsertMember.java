import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Scanner;

public class InsertMember {

	public static void main(String[] args) throws Exception{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("Oracle_JDBC 드라이버 로딩 완료");

		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "system";
		String pwd = "jsp804";

		Connection conn = DriverManager.getConnection(url, user, pwd);
		System.out.println("DB연결 완료");

		
		String sql;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String inputid,inputpasswd,inputname;
		String where,set,select;
		
		int command;
		Scanner scan = new Scanner(System.in);
		do{
			System.out.println("-----------------------------------------------------");
			System.out.println("쿼리문  선택\n 1> insert \n 2> delete \n 3> update \n 4> select \n 0> exit");
			command = scan.nextInt();
			
			switch(command){
			case 1:
				System.out.println("--------------insert--------------");
				System.out.print("id : ");
				inputid = scan.next();
				
				System.out.print("passwd : ");
				inputpasswd = scan.next();
					
				System.out.print("name : ");
				inputname = scan.next();
					
				sql = "insert into member values (?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, inputid);
				pstmt.setString(2, inputpasswd);
				pstmt.setString(3, inputname);
				pstmt.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
				pstmt.executeUpdate();
				
				break;
			case 2:
				System.out.println("--------------delete--------------");
				System.out.println("id : ");
				where = scan.next();
				sql = "delete from member where id = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, where);
				pstmt.executeUpdate();
				break;
			case 3:
				System.out.println("--------------update--------------");
				sql = "update member set ";
				System.out.println("set ");
				sql += scan.next()+" = ?";
				
				System.out.println("= ");
				set = scan.next();
				System.out.println(sql);
				
				sql += " where ";
				
				System.out.println("where ");
				sql += scan.next()+" = ?";
				
				System.out.println("= ");
				where = scan.next();
				System.out.println(sql);
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, set);
				pstmt.setString(2, where);
				pstmt.executeUpdate();
				break;
			case 4:
				System.out.println("--------------selete--------------");
				sql = "select ";
				System.out.println("검색할 컬럼 (입력완료는 stop)");
				sql += scan.next();
				while(true){
					select = scan.next();
					if(!select.equals("stop")){
						sql += ","+select;
					}else{
						break;
					}
					
				}
				sql += " from member ";
				System.out.println("Order by? (아니면 no)");
				select = scan.next();
				if(!select.equals("no")){
					sql += "order by "+select+" ";
					System.out.println("정렬방식?");
					sql += scan.next();
				}
				
				System.out.println(sql);
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery(sql);
				
				while(rs.next()){
			    	  String id = rs.getString("id");
			    	  String passwd = rs.getString("passwd");
			    	  String name = rs.getString("name");
			    	  Timestamp register = rs.getTimestamp("reg_date");
			    	  System.out.println(id+"/"+passwd+"/"+name+"/"+register.toString()+"/");
			    }
				
				break;
			}
			
			if(command!=4){
				sql = "select * from member ORDER BY name DESC";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery(sql);
				
				while(rs.next()){
			    	  String id = rs.getString("id");
			    	  String passwd = rs.getString("passwd");
			    	  String name = rs.getString("name");
			    	  Timestamp register = rs.getTimestamp("reg_date");
			    	  System.out.println(id+"/"+passwd+"/"+name+"/"+register.toString()+"/");
			    }
			}
			
			System.out.println("!!!!!success!!!!!");
			
			System.out.println("Continued??? Y/N");
			
		}while(scan.next().equals("Y"));
		
		rs.close();
		pstmt.close();
		conn.close();
		
		System.out.println("종료하였습니다.....");
	}
	
}
