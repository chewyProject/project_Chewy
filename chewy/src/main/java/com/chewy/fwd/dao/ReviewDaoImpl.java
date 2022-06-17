package com.chewy.fwd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chewy.fwd.service.ReviewMapper;
import com.chewy.fwd.vo.ReviewVo;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<ReviewVo> selectReviewList(ReviewVo reviewVo) throws Exception{
		ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
		return mapper.selectReviewList(reviewVo);
	}

	@Override
	public void insertReview(ReviewVo reviewVo) throws Exception {
		ReviewMapper mapper = sqlSession.getMapper(ReviewMapper.class);
		mapper.insertReview(reviewVo);
	}
	
	
}
