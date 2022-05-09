package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.CartVo;
import com.chewy.fwd.vo.ProductVo;

public interface CartService {
	
	public int memberCheck(CartVo cartVo) throws Exception;
	
	public List<CartVo> saveMemeberInfo(CartVo cartVo) throws Exception;
	
	public List<ProductVo> selectCartList(int p_no) throws Exception;
	
	public void itemDelete(int p_no) throws Exception;
}
