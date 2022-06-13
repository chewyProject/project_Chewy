package com.chewy.fwd.vo;

public class CategoryVo {
	private int cnt;
	private int bct_no;
	private String bct_name;
	private String m_img;
	private String s_img;
	private int mct_no;
	private String mct_name;
	private int sct_no;
	private String sct_name;
	
	
	public CategoryVo() {
		// TODO Auto-generated constructor stub
	}


	public CategoryVo(int cnt, int bct_no, String bct_name, String m_img, String s_img, int mct_no, String mct_name,
			int sct_no, String sct_name) {
		super();
		this.cnt = cnt;
		this.bct_no = bct_no;
		this.bct_name = bct_name;
		this.m_img = m_img;
		this.s_img = s_img;
		this.mct_no = mct_no;
		this.mct_name = mct_name;
		this.sct_no = sct_no;
		this.sct_name = sct_name;
	}


	public int getCnt() {
		return cnt;
	}


	public void setCnt(int cnt) {
		this.cnt = cnt;
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


	public String getM_img() {
		return m_img;
	}


	public void setM_img(String m_img) {
		this.m_img = m_img;
	}


	public String getS_img() {
		return s_img;
	}


	public void setS_img(String s_img) {
		this.s_img = s_img;
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


	@Override
	public String toString() {
		return "CategoryVo [cnt=" + cnt + ", bct_no=" + bct_no + ", bct_name=" + bct_name + ", m_img=" + m_img
				+ ", s_img=" + s_img + ", mct_no=" + mct_no + ", mct_name=" + mct_name + ", sct_no=" + sct_no
				+ ", sct_name=" + sct_name + "]";
	}
	
		
}
