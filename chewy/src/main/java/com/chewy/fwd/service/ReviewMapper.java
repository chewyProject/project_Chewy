package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.ReviewVo;

public interface ReviewMapper {
	
	// 리뷰 조회
	List<ReviewVo> selectReviewList(ReviewVo reviewVo) throws Exception;
	void insertReview(ReviewVo reviewVo) throws Exception;
	
}
