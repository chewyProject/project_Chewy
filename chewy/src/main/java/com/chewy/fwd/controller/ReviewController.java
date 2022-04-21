package com.chewy.fwd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.chewy.fwd.service.ReviewService;
import com.chewy.fwd.vo.ReviewVo;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	// 리뷰 조회
	@RequestMapping(value = "reviewList.do", method = RequestMethod.GET)
	public String review(ReviewVo reviewVo, Model model) throws Exception {
		List<ReviewVo> review = reviewService.selectReviewList(reviewVo);
		model.addAttribute("review", review);
		System.out.println("전체 리뷰 조회");
		
		return "review";
		
	}
	
	// 리뷰 등록 화면
	@RequestMapping(value = "insertReview.do", method = RequestMethod.GET)
	public String insertReviewjsp(ReviewVo reviewVo) throws Exception{
		System.out.println("리뷰 등록");
		
		return "insertReview";
	}
	
	// 리뷰 등록
	@RequestMapping(value="insertReview.do", method = RequestMethod.POST)
	public String insertReview(ReviewVo reviewVo) throws Exception {
		System.out.println(reviewVo.getR_nick());
		
		reviewService.insertReview(reviewVo);
		System.out.println("리뷰 등록 성공");
		return "redirect:reviewList.do";
	}
}
