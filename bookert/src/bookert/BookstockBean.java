package bookert;

import java.sql.Timestamp;

public class BookstockBean {

	private int book_num;
	private String name;
	private int ea;
	private Timestamp stock_date;
	
	public int getBook_num() {
		return book_num;
	}
	public void setBook_num(int book_num) {
		this.book_num = book_num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getEa() {
		return ea;
	}
	public void setEa(int ea) {
		this.ea = ea;
	}
	public Timestamp getStock_date() {
		return stock_date;
	}
	public void setStock_date(Timestamp stock_date) {
		this.stock_date = stock_date;
	}
	
	
}
