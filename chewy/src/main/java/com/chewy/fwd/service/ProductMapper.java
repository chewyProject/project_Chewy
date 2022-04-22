package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.ProductVo;

public interface ProductMapper {

	public List<ProductVo> productInfo(int p_no) throws Exception;
}
