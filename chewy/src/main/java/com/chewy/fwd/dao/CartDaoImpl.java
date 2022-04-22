package com.chewy.fwd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chewy.fwd.service.CartMapper;
import com.chewy.fwd.vo.CartVo;
import com.chewy.fwd.vo.ProductVo;

@Repository
public class CartDaoImpl implements CartDao{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<CartVo> memberCheck(CartVo cartVo) throws Exception {
		CartMapper mapper = sqlSession.getMapper(CartMapper.class);
		return mapper.memberCheck(cartVo);
	}

	@Override
	public void selectCartList(List<CartVo> cartVo) throws Exception {
		CartMapper mapper = sqlSession.getMapper(CartMapper.class);
	}
	
	
}
