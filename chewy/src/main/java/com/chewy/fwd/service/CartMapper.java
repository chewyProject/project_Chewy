package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.CartVo;
import com.chewy.fwd.vo.ProductVo;

public interface CartMapper {

	public List<CartVo> memberCheck(CartVo cartVo) throws Exception;
	
	public List<ProductVo> selectCartList(CartVo cartVo) throws Exception;
}
