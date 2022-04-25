package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.ImgVo;
import com.chewy.fwd.vo.ProductVo;

public interface ProductService {
	
	public List<ProductVo> productInfo(ProductVo productVo) throws Exception;
	
	public List<ImgVo> productImg(int p_no) throws Exception;
}
