package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.ReviewVo;

public interface ReviewMapper {
	
	// 리뷰 조회
	List<ReviewVo> selectReviewList(ReviewVo reviewVo) throws Exception;
	
	// 리뷰 등록
	void insertReview(ReviewVo reviewVo) throws Exception;
	
}
