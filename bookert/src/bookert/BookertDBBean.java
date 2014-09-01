package bookert;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BookertDBBean {
	private static BookertDBBean instance = new BookertDBBean();
	
	public static BookertDBBean getInstance(){
		return instance;
	}
	
	private BookertDBBean(){}
	
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/bookert");
		return ds.getConnection();
	}
	//책 정보 입력 기능
	public void bookInfo(BookinfoBean info){
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		
		try{
			sql = "insert into book_info (name,maker,author,category1,category2,price,publication,reg_date) "
					+ "values (?,?,?,?,?,?,?,?)";
			
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, info.getName());
			pstmt.setString(2, info.getMaker());
			pstmt.setString(3, info.getAuthor());
			pstmt.setString(4, info.getCategory1());
			pstmt.setString(5, info.getCategory2());
			pstmt.setInt(6, info.getPrice());
			pstmt.setString(7, info.getPublication());
			pstmt.setTimestamp(8, info.getReg_date());
			pstmt.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(pstmt!=null)
				try{pstmt.close();}catch(Exception e){}
			if(conn!=null)
				try{conn.close();}catch(Exception e){}
		}
	}
	
	//책 제목 검색 기능
	public List<BookinfoBean> bookSearch(String name,String column,String sort){
		List<BookinfoBean> result = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		
		try{
			conn = getConnection();
			
			
			sql = "select * from book_info where name like ?";
			if(column!=null){
				sql += " order by ";
				if(sort.equals("1")){
					sql += column+" desc";
				}else{
					sql += column+" asc";
				}
			}
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%"+name+"%");
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				result = new ArrayList<BookinfoBean>();
				do{
					BookinfoBean book = new BookinfoBean();
					book.setBook_num(rs.getInt("book_num"));
					book.setName(rs.getString("name"));
					book.setMaker(rs.getString("maker"));
					book.setAuthor(rs.getString("author"));
					book.setCategory1(rs.getString("category1"));
					book.setCategory2(rs.getString("category2"));
					book.setPrice(rs.getInt("price"));
					book.setPublication(rs.getString("publication"));
					book.setReg_date(rs.getTimestamp("reg_date"));
					result.add(book);
				}while(rs.next());
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally{
			if(rs!=null)
				try{rs.close();}catch(Exception e){}
			if(pstmt!=null)
				try{pstmt.close();}catch(Exception e){}
			if(conn!=null)
				try{conn.close();}catch(Exception e){}
		}
		return result;
	}
	
	//책 입고 기능
	public void bookStock(BookstockBean book){
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try{
			conn = getConnection();
			String sql = "select * from book_stock where book_num=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, book.getBook_num());
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				sql = "update book_stock set ea=?,stock_date=? where book_num=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, book.getEa()+rs.getInt("ea"));
				pstmt.setTimestamp(2, book.getStock_date());
				pstmt.setInt(3, rs.getInt("book_num"));
				pstmt.executeUpdate();
			}else{
				sql = "insert into book_stock values (?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, book.getBook_num());
				pstmt.setString(2, book.getName());
				pstmt.setInt(3, book.getEa());
				pstmt.setTimestamp(4, book.getStock_date());
				pstmt.executeUpdate();
			}
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{
			if(rs!=null)
				try{rs.close();}catch(Exception e){}
			if(pstmt!=null)
				try{pstmt.close();}catch(Exception e){}
			if(conn!=null)
				try{conn.close();}catch(Exception e){}
		}
	}
	//책 재고 검색기능
	public List<BookstockBean> bookStockList(String column,String sort){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BookstockBean> result = null;
		String sql = null;
		
		try{
			conn = getConnection();
			if(column.equals("")){
				sql = "select * from book_stock order by stock_date desc";
			}else{
				sql = "select * from book_stock order by ";
				if(sort.equals("1")){
					sql += column+" desc";
				}else{
					sql += column+" asc";
				}
			}
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()){
				result = new ArrayList<BookstockBean>();
				do{
					BookstockBean stock = new BookstockBean();
					stock.setBook_num(rs.getInt("book_num"));
					stock.setName(rs.getString("name"));
					stock.setEa(rs.getInt("ea"));
					stock.setStock_date(rs.getTimestamp("stock_date"));
					result.add(stock);
				}while(rs.next());
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null)
				try{rs.close();}catch(Exception e){}
			if(pstmt!=null)
				try{pstmt.close();}catch(Exception e){}
			if(conn!=null)
				try{conn.close();}catch(Exception e){}
		}
		
		return result;
	}
}
