package com.chewy.fwd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chewy.fwd.dao.ProductDao;
import com.chewy.fwd.vo.CategoryVo;
import com.chewy.fwd.vo.ImgVo;
import com.chewy.fwd.vo.ProductVo;
import com.chewy.fwd.vo.Search;

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
	
	@Override
	public List<ProductVo> selectProductList(Search search) throws Exception {
		return productDao.selectProductList(search);
	}

	@Override
	public void insertProduct(ProductVo productVo) throws Exception {
		 productDao.insertProduct(productVo);
	}

	@Override
	public void updateProduct(ProductVo productVo) throws Exception {
		 productDao.updateProduct(productVo);
	}

	@Override
	public void deleteProduct(ProductVo productVo) throws Exception {
		 productDao.deleteProduct(productVo);
	}

	@Override
	public ProductVo selectProduct(ProductVo productVO) throws Exception {
		return productDao.selectProduct(productVO);
	}

	@Override
	public int getProductListCnt(Search search) throws Exception {
		return productDao.getProductListCnt(search);
	}

	@Override
	public List<CategoryVo> bCategoryList() throws Exception {
		return productDao.bCategoryList();
	}

	@Override
	public List<CategoryVo> mCategoryList() throws Exception {
		return productDao.mCategoryList();
	}

	@Override
	public List<CategoryVo> sCategoryList() throws Exception {
		return productDao.sCategoryList();
	}
	
	
	
	
	
	
}
