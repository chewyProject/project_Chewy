package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.ReviewVo;

public interface ReviewService {

	// 리뷰 목록
	public List<ReviewVo> selectReviewList(ReviewVo reviewVo) throws Exception;
	
	// 리뷰 등록
	void insertReview(ReviewVo reviewVo) throws Exception;
	
}
