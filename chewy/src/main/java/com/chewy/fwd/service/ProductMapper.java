package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.CategoryVo;
import com.chewy.fwd.vo.ImgVo;
import com.chewy.fwd.vo.ProductVo;
import com.chewy.fwd.vo.Search;

public interface ProductMapper {

	public List<ProductVo> productInfo(int p_no) throws Exception;
	public List<ImgVo> productImg(int p_no) throws Exception;
	
	 List<ProductVo> selectProductList(Search search) throws Exception;
	 void insertProduct(ProductVo productVo) throws Exception;
	 void updateProduct(ProductVo productVo) throws Exception;
	 void deleteProduct(ProductVo productVo) throws Exception;
	 ProductVo selectProduct(ProductVo productVo) throws Exception;
//	 List<CategoryVo> selectCategoryList() throws Exception;
	 List<CategoryVo> bCategoryList() throws Exception;
	 List<CategoryVo> mCategoryList() throws Exception;
	 List<CategoryVo> sCategoryList() throws Exception;
	 
	 public int getProductListCnt(Search search) throws Exception; // 검색
	
}
