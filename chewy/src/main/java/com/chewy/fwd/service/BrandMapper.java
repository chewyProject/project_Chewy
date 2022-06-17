package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.BrandVo;
import com.chewy.fwd.vo.CategoryVo;

public interface BrandMapper {
	
public BrandVo selectBrand(BrandVo brandVo) throws Exception;
	
	public void updateBrand(BrandVo brandVo) throws Exception;
	
	public void addLogo(BrandVo brandVo) throws Exception;
	
	public List<BrandVo> popularDog() throws Exception;
	
	public List<BrandVo> popularCat() throws Exception;
	
	public List<BrandVo> popularfish() throws Exception;
	
	public List<BrandVo> popularbird() throws Exception;
	
	public List<BrandVo> popularsmall() throws Exception;
	
	public List<BrandVo> popularreptile() throws Exception;
	
	public List<BrandVo> popularfarm() throws Exception;
	
	public List<BrandVo> popularhorse() throws Exception;
	
	public List<BrandVo> popularpharmacy() throws Exception;
	
	public List<BrandVo> popularparents() throws Exception;
	
	public List<BrandVo> popular(BrandVo brandVo) throws Exception;
	
	public List<BrandVo> alphabet(BrandVo brandVo) throws Exception;
	
	public List<CategoryVo> big() throws Exception;
	
	public List<CategoryVo> medium(String ct) throws Exception;
	
	public String bctName(int ct) throws Exception;
	
	public String foodSelect(CategoryVo categoryVo) throws Exception;
	
	public List<CategoryVo> foodNo(CategoryVo categoryVo) throws Exception;
	
	public String treatsSelect(CategoryVo categoryVo) throws Exception;
	
	public String supSelect(CategoryVo categoryVo) throws Exception;
	
	public List<CategoryVo> supNo(CategoryVo categoryVo) throws Exception;
	
	public String bctAd(int bctNo) throws Exception;
	
	public List<CategoryVo> shopby(CategoryVo categoryVo) throws Exception;
	
	public String shopbyall(CategoryVo categoryVo) throws Exception;
}
