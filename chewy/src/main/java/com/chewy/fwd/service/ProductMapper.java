package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.CategoryVO;
import com.chewy.fwd.vo.ProductVO;
import com.chewy.fwd.vo.Search;

// Mapper namespace와 ID를 연결한 interface를 두어서 interface를 호출하는 방법
// Mybatis 매핑xml에 기재된 sql을 호출하기 윈한 인터페이스다.
// SQL id는 인터페이스에 정의된 메서드명과 동일하게 작성한다.

public interface ProductMapper {
	
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
