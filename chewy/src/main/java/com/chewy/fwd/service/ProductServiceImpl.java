package com.chewy.fwd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chewy.fwd.dao.ProductDao;
import com.chewy.fwd.vo.ImgVo;
import com.chewy.fwd.vo.ProductVo;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDao productDao;

	@Override
	public List<ProductVo> productInfo(ProductVo productVo) throws Exception {
		return productDao.productInfo(productVo.getP_no());
	}

	@Override
	public List<ImgVo> productImg(int p_no) throws Exception {
		return productDao.productImg(p_no);
	}
}
