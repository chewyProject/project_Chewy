package com.chewy.fwd.dao;

import java.util.List;

import com.chewy.fwd.vo.CartVo;
import com.chewy.fwd.vo.ProductVo;

public interface CartDao {
	
	public List<CartVo> memberCheck(CartVo cartVo) throws Exception;
	
	public void selectCartList(List<CartVo> cartVo) throws Exception;
	
	public void itemDelete(int p_no) throws Exception;
}
