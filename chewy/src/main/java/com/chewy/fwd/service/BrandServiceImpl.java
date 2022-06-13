package com.chewy.fwd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chewy.fwd.dao.BrandDao;
import com.chewy.fwd.vo.BrandVo;
import com.chewy.fwd.vo.CategoryVo;

@Service
public class BrandServiceImpl implements BrandService {
	
	@Autowired
	private BrandDao brandDao;
	
	public List<BrandVo> popular(int ct) throws Exception {
		
		return brandDao.popular(ct);
	}
	
	public List<BrandVo> alphabet(String alphabet, int ct) throws Exception {
		
		return brandDao.alphabet(alphabet, ct);
	}
	
	public String bigct(int ct) throws Exception {
		
		return brandDao.bct(ct);
	}
	
	public String bctName(int ct) throws Exception {
		return brandDao.bctName(ct);
	}
	
	public List<CategoryVo> foodSelect(CategoryVo categoryVo) throws Exception {
		return brandDao.foodSelect(categoryVo);
	}
	
	public List<CategoryVo> treatsSelect(CategoryVo categoryVo) throws Exception {
		return brandDao.treatsSelect(categoryVo);
	}
	
	public List<CategoryVo> supSelect(CategoryVo categoryVo) throws Exception {
		return brandDao.supSelect(categoryVo);
	}
	
	public String bctAd(int bctNo) throws Exception {
		return brandDao.bctAd(bctNo);
	}
	
	public List<CategoryVo> shopall(CategoryVo categoryVo) throws Exception {
		return brandDao.shopall(categoryVo);
	}
	
	public List<CategoryVo> shopS(CategoryVo categoryVo) throws Exception {
		return brandDao.shopS(categoryVo);
	}
}
