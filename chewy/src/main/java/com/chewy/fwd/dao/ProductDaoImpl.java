package com.chewy.fwd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chewy.fwd.service.ProductMapper;
import com.chewy.fwd.vo.CategoryVO;
import com.chewy.fwd.vo.ProductVO;
import com.chewy.fwd.vo.Search;

@Repository
public class ProductDaoImpl implements ProductDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ProductVO> selectProductList(Search search) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectProductList(search);
	}

	@Override
	public void insertProduct(ProductVO productVO) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		 mapper.insertProduct(productVO);
		
	}

	@Override
	public void updateProduct(ProductVO productVO) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		 mapper.updateProduct(productVO);
	}


	@Override
	public void deleteProduct(ProductVO productVO) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		 mapper.deleteProduct(productVO);
	}


	@Override
	public ProductVO selectProduct(ProductVO productVO) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectProduct(productVO);
	}


	@Override
	public int getProductListCnt(Search search) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.getProductListCnt(search);
	}

	@Override
	public List<CategoryVO> bCategoryList() throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.bCategoryList();
	}

	@Override
	public List<CategoryVO> mCategoryList() throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.mCategoryList();
	}

	@Override
	public List<CategoryVO> sCategoryList() throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.sCategoryList();
	}
	
}
