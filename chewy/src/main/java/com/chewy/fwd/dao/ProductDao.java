package com.chewy.fwd.dao;

import java.util.List;

import com.chewy.fwd.vo.ImgVo;
import com.chewy.fwd.vo.ProductVo;

public interface ProductDao {

	public List<ProductVo> productInfo(int p_no) throws Exception;
	
	public List<ImgVo> productImg(int p_no) throws Exception;
}
