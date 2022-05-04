package com.chewy.fwd.vo;

public class CategoryVO {
	private int bct_no;
	private String bct_name;
	private String bct_overlap;
	private int mct_no;
	private String mct_name;
	private int sct_no;
	private String sct_name;
	
	public CategoryVO() {
	}

	

	public CategoryVO(int bct_no, String bct_name, String bct_overlap, int mct_no, String mct_name, int sct_no,
			String sct_name) {
		super();
		this.bct_no = bct_no;
		this.bct_name = bct_name;
		this.bct_overlap = bct_overlap;
		this.mct_no = mct_no;
		this.mct_name = mct_name;
		this.sct_no = sct_no;
		this.sct_name = sct_name;
	}



	public int getBct_no() {
		return bct_no;
	}

	public void setBct_no(int bct_no) {
		this.bct_no = bct_no;
	}

	public String getBct_name() {
		return bct_name;
	}

	public void setBct_name(String bct_name) {
		this.bct_name = bct_name;
	}

	public int getMct_no() {
		return mct_no;
	}

	public void setMct_no(int mct_no) {
		this.mct_no = mct_no;
	}

	public String getMct_name() {
		return mct_name;
	}

	public void setMct_name(String mct_name) {
		this.mct_name = mct_name;
	}

	public int getSct_no() {
		return sct_no;
	}

	public void setSct_no(int sct_no) {
		this.sct_no = sct_no;
	}

	public String getSct_name() {
		return sct_name;
	}

	public void setSct_name(String sct_name) {
		this.sct_name = sct_name;
	}
	
	

//	public String getBmct_no() {
//		return bmct_no;
//	}
//
//	public void setBmct_no(String bmct_no) {
//		this.bmct_no = bmct_no;
//	}

	
	
	public String getBct_overlap() {
		return bct_overlap;
	}

	public void setBct_overlap(String bct_overlap) {
		this.bct_overlap = bct_overlap;
	}

	@Override
	public String toString() {
		return "CategoryVO [bct_no=" + bct_no + ", bct_name=" + bct_name + ", bct_overlap=" + bct_overlap + ", mct_no="
				+ mct_no + ", mct_name=" + mct_name + ", sct_no=" + sct_no + ", sct_name=" + sct_name + "]";
	}

	
	
}
