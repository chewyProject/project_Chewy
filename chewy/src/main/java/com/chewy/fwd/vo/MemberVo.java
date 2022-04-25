package com.chewy.fwd.vo;

import java.util.Date;

public class MemberVo {
	private int m_no;
	private String m_name;
	private String m_email;
	private String m_password;
	private String m_confirmpw; // 비밀번호 변경을 하기 위함.
	private int m_phone;
	private String m_road;
	private String m_city;
	private String m_state;
	private int m_zipcode;
	private String m_payment;
	private int m_autoship;
	private Date m_autodate;
	private Date m_logindate;
	private int m_seccession;

	public MemberVo() {

	}

	public MemberVo(int m_no, String m_name, String m_email, String m_password, String m_confirmpw, int m_phone,
			String m_road, String m_city, String m_state, int m_zipcode, String m_payment, int m_autoship,
			Date m_autodate, Date m_logindate, int m_seccession) {
		super();
		this.m_no = m_no;
		this.m_name = m_name;
		this.m_email = m_email;
		this.m_password = m_password;
		this.m_confirmpw = m_confirmpw;
		this.m_phone = m_phone;
		this.m_road = m_road;
		this.m_city = m_city;
		this.m_state = m_state;
		this.m_zipcode = m_zipcode;
		this.m_payment = m_payment;
		this.m_autoship = m_autoship;
		this.m_autodate = m_autodate;
		this.m_logindate = m_logindate;
		this.m_seccession = m_seccession;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getM_email() {
		return m_email;
	}

	public void setM_email(String m_email) {
		this.m_email = m_email;
	}

	public String getM_password() {
		return m_password;
	}

	public void setM_password(String m_password) {
		this.m_password = m_password;
	}

	public String getM_confirmpw() {
		return m_confirmpw;
	}

	public void setM_confirmpw(String m_confirmpw) {
		this.m_confirmpw = m_confirmpw;
	}

	public int getM_phone() {
		return m_phone;
	}

	public void setM_phone(int m_phone) {
		this.m_phone = m_phone;
	}

	public String getM_road() {
		return m_road;
	}

	public void setM_road(String m_road) {
		this.m_road = m_road;
	}

	public String getM_city() {
		return m_city;
	}

	public void setM_city(String m_city) {
		this.m_city = m_city;
	}

	public String getM_state() {
		return m_state;
	}

	public void setM_state(String m_state) {
		this.m_state = m_state;
	}

	public int getM_zipcode() {
		return m_zipcode;
	}

	public void setM_zipcode(int m_zipcode) {
		this.m_zipcode = m_zipcode;
	}

	public String getM_payment() {
		return m_payment;
	}

	public void setM_payment(String m_payment) {
		this.m_payment = m_payment;
	}

	public int getM_autoship() {
		return m_autoship;
	}

	public void setM_autoship(int m_autoship) {
		this.m_autoship = m_autoship;
	}

	public Date getM_autodate() {
		return m_autodate;
	}

	public void setM_autodate(Date m_autodate) {
		this.m_autodate = m_autodate;
	}

	public Date getM_logindate() {
		return m_logindate;
	}

	public void setM_logindate(Date m_logindate) {
		this.m_logindate = m_logindate;
	}

	public int getM_seccession() {
		return m_seccession;
	}

	public void setM_seccession(int m_seccession) {
		this.m_seccession = m_seccession;
	}

	@Override
	public String toString() {
		return "MemberVo [m_no=" + m_no + ", m_name=" + m_name + ", m_email=" + m_email + ", m_password=" + m_password
				+ ", m_confirmpw=" + m_confirmpw + ", m_phone=" + m_phone + ", m_road=" + m_road + ", m_city=" + m_city
				+ ", m_state=" + m_state + ", m_zipcode=" + m_zipcode + ", m_payment=" + m_payment + ", m_autoship="
				+ m_autoship + ", m_autodate=" + m_autodate + ", m_logindate=" + m_logindate + ", m_seccession="
				+ m_seccession + "]";
	}

	
	
	
	
}
