package com.chewy.fwd.vo;

import java.util.List;

public class CartVo {
	private int m_no;
	private int p_no;
	private int c_total;
	private List<ProductVo> productVo;

	public CartVo() {
		
	}
	
	public CartVo(int m_no, int p_no, int c_total) {
		this.m_no = m_no;
		this.p_no = p_no;
		this.c_total = c_total;
	}
	
	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public int getC_total() {
		return c_total;
	}

	public void setC_total(int c_total) {
		this.c_total = c_total;
	}

	public List<ProductVo> getProductVo() {
		return productVo;
	}

	public void setProductVo(List<ProductVo> productVo) {
		this.productVo = productVo;
	}

}
