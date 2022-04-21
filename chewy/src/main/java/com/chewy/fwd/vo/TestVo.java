package com.chewy.fwd.vo;

public class TestVo {
	private int no;
	private String name;
	private String job;
	private String dept;
	public TestVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TestVo(int no, String name, String job, String dept) {
		super();
		this.no = no;
		this.name = name;
		this.job = job;
		this.dept = dept;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	@Override
	public String toString() {
		return "TestVo [no=" + no + ", name=" + name + ", job=" + job + "]";
	}


}
