package com.chewy.fwd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chewy.fwd.service.ProductMapper;
import com.chewy.fwd.vo.CategoryVo;
import com.chewy.fwd.vo.ImgVo;
import com.chewy.fwd.vo.ProductVo;
import com.chewy.fwd.vo.Search;

@Repository
public class ProductDaoImpl implements ProductDao{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ProductVo> productInfo(int p_no) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.productInfo(p_no);
	}

	@Override
	public List<ImgVo> productImg(int p_no) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.productImg(p_no);
	}
	
	@Override
	public List<ProductVo> selectProductList(Search search) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectProductList(search);
	}

	@Override
	public void insertProduct(ProductVo productVo) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		 mapper.insertProduct(productVo);
		
	}

	@Override
	public void updateProduct(ProductVo productVo) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		 mapper.updateProduct(productVo);
	}


	@Override
	public void deleteProduct(ProductVo productVo) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		 mapper.deleteProduct(productVo);
	}


	@Override
	public ProductVo selectProduct(ProductVo productVo) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.selectProduct(productVo);
	}


	@Override
	public int getProductListCnt(Search search) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.getProductListCnt(search);
	}

	@Override
	public List<CategoryVo> bCategoryList() throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.bCategoryList();
	}

	@Override
	public List<CategoryVo> mCategoryList() throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.mCategoryList();
	}

	@Override
	public List<CategoryVo> sCategoryList() throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.sCategoryList();
	}
	
	
	
}
