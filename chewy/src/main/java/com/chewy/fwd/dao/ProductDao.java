package com.chewy.fwd.dao;

import java.util.List;

import com.chewy.fwd.vo.CategoryVO;
import com.chewy.fwd.vo.ProductVO;
import com.chewy.fwd.vo.Search;

public interface ProductDao {
	 List<ProductVO> selectProductList(Search search) throws Exception;
	 void insertProduct(ProductVO productVO) throws Exception;
	 void updateProduct(ProductVO productVO) throws Exception;
	 void deleteProduct(ProductVO productVO) throws Exception;
	 ProductVO selectProduct(ProductVO productVO) throws Exception;
//	 List<CategoryVO> selectCategoryList() throws Exception;
	 List<CategoryVO> bCategoryList() throws Exception;
	 List<CategoryVO> mCategoryList() throws Exception;
	 List<CategoryVO> sCategoryList() throws Exception;
	 
	 public int getProductListCnt(Search search) throws Exception; // 검색
	 
}
