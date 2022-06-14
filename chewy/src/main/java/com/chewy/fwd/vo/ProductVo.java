package com.chewy.fwd.vo;

import java.util.Date;
import java.util.List;

public class ProductVo {
	private int cnt;
	private int p_no;
	private int bct_no;
	private int mct_no;
	private int sct_no;
	private int b_no;
	private String p_name;
	private String p_img;
	private float p_price;
	private int p_total;
	private int p_discount;
	private float p_star;
	private String p_question;
	private String p_answer;
	private String p_shipping;
	private String p_addtext;
	private Date p_date;
	
	private String b_name;
	
	public ProductVo() {
	}

	public ProductVo(int cnt, int p_no, int bct_no, int mct_no, int sct_no, int b_no, String p_name, String p_img,
			float p_price, int p_total, int p_discount, float p_star, String p_question, String p_answer,
			String p_shipping, String p_addtext, Date p_date, String b_name) {
		super();
		this.cnt = cnt;
		this.p_no = p_no;
		this.bct_no = bct_no;
		this.mct_no = mct_no;
		this.sct_no = sct_no;
		this.b_no = b_no;
		this.p_name = p_name;
		this.p_img = p_img;
		this.p_price = p_price;
		this.p_total = p_total;
		this.p_discount = p_discount;
		this.p_star = p_star;
		this.p_question = p_question;
		this.p_answer = p_answer;
		this.p_shipping = p_shipping;
		this.p_addtext = p_addtext;
		this.p_date = p_date;
		this.b_name = b_name;
	}

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public int getBct_no() {
		return bct_no;
	}

	public void setBct_no(int bct_no) {
		this.bct_no = bct_no;
	}

	public int getMct_no() {
		return mct_no;
	}

	public void setMct_no(int mct_no) {
		this.mct_no = mct_no;
	}

	public int getSct_no() {
		return sct_no;
	}

	public void setSct_no(int sct_no) {
		this.sct_no = sct_no;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_img() {
		return p_img;
	}

	public void setP_img(String p_img) {
		this.p_img = p_img;
	}

	public float getP_price() {
		return p_price;
	}

	public void setP_price(float p_price) {
		this.p_price = p_price;
	}

	public int getP_total() {
		return p_total;
	}

	public void setP_total(int p_total) {
		this.p_total = p_total;
	}

	public int getP_discount() {
		return p_discount;
	}

	public void setP_discount(int p_discount) {
		this.p_discount = p_discount;
	}

	public float getP_star() {
		return p_star;
	}

	public void setP_star(float p_star) {
		this.p_star = p_star;
	}

	public String getP_question() {
		return p_question;
	}

	public void setP_question(String p_question) {
		this.p_question = p_question;
	}

	public String getP_answer() {
		return p_answer;
	}

	public void setP_answer(String p_answer) {
		this.p_answer = p_answer;
	}

	public String getP_shipping() {
		return p_shipping;
	}

	public void setP_shipping(String p_shipping) {
		this.p_shipping = p_shipping;
	}

	public String getP_addtext() {
		return p_addtext;
	}

	public void setP_addtext(String p_addtext) {
		this.p_addtext = p_addtext;
	}

	public Date getP_date() {
		return p_date;
	}

	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	@Override
	public String toString() {
		return "ProductVo [cnt=" + cnt + ", p_no=" + p_no + ", bct_no=" + bct_no + ", mct_no=" + mct_no + ", sct_no="
				+ sct_no + ", b_no=" + b_no + ", p_name=" + p_name + ", p_img=" + p_img + ", p_price=" + p_price
				+ ", p_total=" + p_total + ", p_discount=" + p_discount + ", p_star=" + p_star + ", p_question="
				+ p_question + ", p_answer=" + p_answer + ", p_shipping=" + p_shipping + ", p_addtext=" + p_addtext
				+ ", p_date=" + p_date + ", b_name=" + b_name + "]";
	}


	
	
	
}