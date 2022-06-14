package com.chewy.fwd.vo;

import java.util.Date;

public class mypetVo {
	private int pettype;
	private int gender;
	private int petcelebrate;
	private String petname;
	private String petbreed;
	private String petphoto;
	private String petweight;
	private Date petdate;
	public mypetVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public mypetVo(int pettype, int gender, int petcelebrate, String petname, String petbreed, String petphoto,
			String petweight, Date petdate) {
		super();
		this.pettype = pettype;
		this.gender = gender;
		this.petcelebrate = petcelebrate;
		this.petname = petname;
		this.petbreed = petbreed;
		this.petphoto = petphoto;
		this.petweight = petweight;
		this.petdate = petdate;
	}
	public int getPettype() {
		return pettype;
	}
	public void setPettype(int pettype) {
		this.pettype = pettype;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getPetcelebrate() {
		return petcelebrate;
	}
	public void setPetcelebrate(int petcelebrate) {
		this.petcelebrate = petcelebrate;
	}
	public String getPetname() {
		return petname;
	}
	public void setPetname(String petname) {
		this.petname = petname;
	}
	public String getPetbreed() {
		return petbreed;
	}
	public void setPetbreed(String petbreed) {
		this.petbreed = petbreed;
	}
	public String getPetphoto() {
		return petphoto;
	}
	public void setPetphoto(String petphoto) {
		this.petphoto = petphoto;
	}
	public String getPetweight() {
		return petweight;
	}
	public void setPetweight(String petweight) {
		this.petweight = petweight;
	}
	public Date getPetdate() {
		return petdate;
	}
	public void setPetdate(Date petdate) {
		this.petdate = petdate;
	}
	
}
