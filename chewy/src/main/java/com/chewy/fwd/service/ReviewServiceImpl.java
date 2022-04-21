package com.chewy.fwd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chewy.fwd.dao.ReviewDao;
import com.chewy.fwd.vo.ReviewVo;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private ReviewDao reviewDao;
	
	// 리뷰 조회
	@Override
	public List<ReviewVo> selectReviewList(ReviewVo reviewVo) throws Exception{
		return reviewDao.selectReviewList(reviewVo);
	}
	
	// 리뷰 등록
	@Override
	public void insertReview(ReviewVo reviewVo) throws Exception{
		reviewDao.insertReview(reviewVo);
	}
	
}
