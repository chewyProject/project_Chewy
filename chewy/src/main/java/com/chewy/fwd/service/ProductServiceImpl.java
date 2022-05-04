package com.chewy.fwd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chewy.fwd.dao.ProductDao;
import com.chewy.fwd.vo.CategoryVO;
import com.chewy.fwd.vo.ProductVO;
import com.chewy.fwd.vo.Search;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDao productDao;

	@Override
	public List<ProductVO> selectProductList(Search search) throws Exception {
		return productDao.selectProductList(search);
	}

	@Override
	public void insertProduct(ProductVO productVO) throws Exception {
		 productDao.insertProduct(productVO);
	}

	@Override
	public void updateProduct(ProductVO productVO) throws Exception {
		 productDao.updateProduct(productVO);
	}

	@Override
	public void deleteProduct(ProductVO productVO) throws Exception {
		 productDao.deleteProduct(productVO);
	}

	@Override
	public ProductVO selectProduct(ProductVO productVO) throws Exception {
		return productDao.selectProduct(productVO);
	}

	@Override
	public int getProductListCnt(Search search) throws Exception {
		return productDao.getProductListCnt(search);
	}

	@Override
	public List<CategoryVO> bCategoryList() throws Exception {
		return productDao.bCategoryList();
	}

	@Override
	public List<CategoryVO> mCategoryList() throws Exception {
		return productDao.mCategoryList();
	}

	@Override
	public List<CategoryVO> sCategoryList() throws Exception {
		return productDao.sCategoryList();
	}
	
	
}
