package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.ReviewVo;

public interface ReviewService {

	// 리뷰 목록
	public List<ReviewVo> selectReview(ReviewVo reviewVo) throws Exception;
	
}
