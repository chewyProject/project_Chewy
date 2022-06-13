package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.BrandVo;
import com.chewy.fwd.vo.CategoryVo;

public interface BrandService {
	
	public List<BrandVo> popular(int ct) throws Exception;
	
	public List<BrandVo> alphabet(String alphabet, int ct) throws Exception;
	
	public String bigct(int ct) throws Exception;
	
	public String bctName(int ct) throws Exception;
	
	public List<CategoryVo> foodSelect(CategoryVo categoryVo) throws Exception;
	
	public List<CategoryVo> treatsSelect(CategoryVo categoryVo) throws Exception;
	
	public List<CategoryVo> supSelect(CategoryVo categoryVo) throws Exception;
	
	public String bctAd(int bctNo) throws Exception;
	
	public List<CategoryVo> shopall(CategoryVo categoryVo) throws Exception;
	
	public List<CategoryVo> shopS(CategoryVo categoryVo) throws Exception;
}
