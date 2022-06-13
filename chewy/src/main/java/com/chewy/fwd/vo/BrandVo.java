package com.chewy.fwd.vo;

public class BrandVo {
	private int b_no;
	   private String b_name;
	   private String b_logo;
	   private String bct;

	public BrandVo() {
	}

	public BrandVo(int b_no, String b_name, String b_logo, String bct) {
		super();
		this.b_no = b_no;
		this.b_name = b_name;
		this.b_logo = b_logo;
		this.bct = bct;
	}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public String getB_logo() {
		return b_logo;
	}

	public void setB_logo(String b_logo) {
		this.b_logo = b_logo;
	}

	public String getBct() {
		return bct;
	}

	public void setBct(String bct) {
		this.bct = bct;
	}

	@Override
	public String toString() {
		return "BrandVo [b_no=" + b_no + ", b_name=" + b_name + ", b_logo=" + b_logo + ", bct=" + bct + "]";
	}
	

	
}
