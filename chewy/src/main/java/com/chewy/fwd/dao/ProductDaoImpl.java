package com.chewy.fwd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chewy.fwd.service.ProductMapper;
import com.chewy.fwd.vo.ProductVo;

@Repository
public class ProductDaoImpl implements ProductDao{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ProductVo> productInfo(int p_no) throws Exception {
		ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
		return mapper.productInfo(p_no);
	}
	
}
