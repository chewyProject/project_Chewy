package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.BrandVo;
import com.chewy.fwd.vo.TestVo;

public interface TestMapper {
	
	public List<TestVo> test() throws Exception;
	
	public void addBrand(BrandVo brandVo) throws Exception;
	
	public BrandVo selectBrand(BrandVo brandVo) throws Exception;
	
	public void updateBrand(BrandVo brandVo) throws Exception;
	
	public void addLogo(BrandVo brandVo) throws Exception;
	
	public List<BrandVo> polularDog(int ct) throws Exception;
	
	public List<BrandVo> polularCat(BrandVo brandVo) throws Exception;
}
