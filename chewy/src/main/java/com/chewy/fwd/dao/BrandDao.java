package com.chewy.fwd.dao;

import java.util.List;

import com.chewy.fwd.vo.BrandVo;
import com.chewy.fwd.vo.CategoryVo;

public interface BrandDao {
	
	public List<BrandVo> popular(int ct) throws Exception;
	
	public List<BrandVo> alphabet(String alphabet, int ct) throws Exception;
	
	public String bct(int ct);
	
	public List<CategoryVo> big() throws Exception;
	
	public List<CategoryVo> medium(int ct) throws Exception;
	
	public String bctName(int ct) throws Exception;
	
	public List<CategoryVo> foodSelect(CategoryVo categoryVo) throws Exception;
	
	public List<CategoryVo> treatsSelect(CategoryVo categoryVo) throws Exception;
	
	public List<CategoryVo> supSelect(CategoryVo categoryVo) throws Exception;
	
	public String bctAd(int bctNo) throws Exception;
	
	public List<CategoryVo> shopall(CategoryVo categoryVo) throws Exception;
	
	public List<CategoryVo> shopS(CategoryVo categoryVo) throws Exception;
}
