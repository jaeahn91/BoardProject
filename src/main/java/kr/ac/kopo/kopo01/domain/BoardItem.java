package kr.ac.kopo.kopo01.domain;

public class BoardItem {
	private int id;
	private int b_id;
	private String title;
	private String content;
	private String date;
	
	public BoardItem() {
		
	}
	
	
	
	public BoardItem(int id, int b_id, String title) {

		this.id = id;
		this.b_id = b_id;
		this.title = title;
	}
	
	public BoardItem(int id, int b_id, String title, String content) {

		this.id = id;
		this.b_id = b_id;
		this.title = title;
		this.content = content;
	}
	
	public BoardItem(int id, int b_id, String title, String date, String content) {

		this.id = id;
		this.b_id = b_id;
		this.title = title;
		this.date = date;
		this.content = content;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getB_id() {
		return b_id;
	}

	public void setB_id(int b_id) {
		this.b_id = b_id;
	}

	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}

}
