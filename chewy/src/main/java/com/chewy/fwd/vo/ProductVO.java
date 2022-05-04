package com.chewy.fwd.vo;

import java.io.Serializable;

public class ProductVO implements Serializable {
	
	static final long serialVersionUID = 1L;
	
	private int p_no;
	private int bct_no;
	private int mct_no;
	private int sct_no;
	private int b_no;
	private String p_name;
	private String p_img;
	private int p_price;
	private int p_total;
	private int p_discount;
	private float p_star;
	private String p_question;
	private String p_answer;
	

	public ProductVO() {
	}
	
	public ProductVO(int p_no, int bct_no, int mct_no, int sct_no, int b_no, String p_name, String p_img, int p_price,
			int p_total, int p_discount, float p_star, String p_question, String p_answer) {
		super();
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

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "ProductVO [p_no=" + p_no + ", bct_no=" + bct_no + ", mct_no=" + mct_no + ", sct_no=" + sct_no
				+ ", b_no=" + b_no + ", p_name=" + p_name + ", p_img=" + p_img + ", p_price=" + p_price + ", p_total="
				+ p_total + ", p_discount=" + p_discount + ", p_star=" + p_star + ", p_question=" + p_question
				+ ", p_answer=" + p_answer + "]";
	}


	
	
}
