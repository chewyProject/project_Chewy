package com.chewy.fwd.vo;

public class ReviewVo {
	private int r_no;
	private String r_nick;
	private String r_title;
	private String r_content;
	private int r_star;
	private int grade;
	private String r_gcontent;
	private String r_photo;
	public ReviewVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ReviewVo(int r_no, String r_nick, String r_title, String r_content, int r_star, int grade, String r_gcontent,
			String r_photo) {
		super();
		this.r_no = r_no;
		this.r_nick = r_nick;
		this.r_title = r_title;
		this.r_content = r_content;
		this.r_star = r_star;
		this.grade = grade;
		this.r_gcontent = r_gcontent;
		this.r_photo = r_photo;
	}
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public String getR_nick() {
		return r_nick;
	}
	public void setR_nick(String r_nick) {
		this.r_nick = r_nick;
	}
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public int getR_star() {
		return r_star;
	}
	public void setR_star(int r_star) {
		this.r_star = r_star;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getR_gcontent() {
		return r_gcontent;
	}
	public void setR_gcontent(String r_gcontent) {
		this.r_gcontent = r_gcontent;
	}
	public String getR_photo() {
		return r_photo;
	}
	public void setR_photo(String r_photo) {
		this.r_photo = r_photo;
	}
	@Override
	public String toString() {
		return "ReviewVo [r_no=" + r_no + ", r_nick=" + r_nick + ", r_title=" + r_title + ", r_content=" + r_content
				+ ", r_star=" + r_star + ", grade=" + grade + ", r_gcontent=" + r_gcontent + ", r_photo=" + r_photo
				+ "]";
	}
	
	
}
