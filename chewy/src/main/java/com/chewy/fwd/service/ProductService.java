package com.chewy.fwd.service;

import java.util.List;
import java.util.Map;

import com.chewy.fwd.vo.CategoryVo;
import com.chewy.fwd.vo.ImgVo;
import com.chewy.fwd.vo.ProductVo;
import com.chewy.fwd.vo.Search;

public interface ProductService {
	

	public List<ProductVo> productInfo(ProductVo productVo) throws Exception;
	public List<ImgVo> productImg(int p_no) throws Exception;
	
	public void addProduct(ProductVo productVo) throws Exception;
	
	 List<ProductVo> selectProductList(Search search) throws Exception;
	 void insertProduct(ProductVo productVo) throws Exception;
	 void updateProduct(ProductVo productVo) throws Exception;
	 void deleteProduct(ProductVo productVo) throws Exception;
	 ProductVo selectProduct(ProductVo productVo) throws Exception;
//	 List<CategoryVo> selectCategoryList() throws Exception;
	 List<CategoryVo> bCategoryList() throws Exception;
	 List<CategoryVo> mCategoryList(Map<String, String> map) throws Exception;
	 List<CategoryVo> sCategoryList(Map<String, String> map) throws Exception;
	 List<CategoryVo> cateCountList(CategoryVo categoryVo) throws Exception;
	 
	 
	public int getProductListCnt(Search search) throws Exception; // 검색
	public List<CategoryVo> selectBCateList() throws Exception;
	public List<CategoryVo> selectMCateList(Map<String, Object> map) throws Exception;
	public List<CategoryVo> selectSCateList(Map<String, Object> map) throws Exception;
	public List<ProductVo> sortBy(Map<String, Object> map) throws Exception;
	public int sortByCnt(Search search) throws Exception;
	
	public List<ProductVo> selectBrandList(Map<String, Object> map) throws Exception;
	public List<ProductVo> selectMBrandList(Map<String, Object> map) throws Exception;
	public List<ProductVo> selectSBrandList(Map<String, Object> map) throws Exception;
	
	
	public List<ProductVo> selectColCateList(Map<String, Object> map) throws Exception;
	
	
	public List<ProductVo> selectColBDetailList(Map<String, Object> map) throws Exception;
	public List<ProductVo> selectColMDetailList(Map<String, Object> map) throws Exception;
	public List<ProductVo> selectColSDetailList(Map<String, Object> map) throws Exception;
	
	public int colBProductCnt(Map<String, Object> map) throws Exception;
	public int colProductCnt(Map<String, Object> map) throws Exception;
	public int colSProductCnt(Map<String, Object> map) throws Exception;
	public List<ProductVo> checkbox(Map<String, Object> map) throws Exception;

	
	//	public List<CategoryVo> selectCateList(Map<String, String> map) throws Exception;
}
