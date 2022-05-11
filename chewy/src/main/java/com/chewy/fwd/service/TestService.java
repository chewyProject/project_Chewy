package com.chewy.fwd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chewy.fwd.dao.TestDao;
import com.chewy.fwd.vo.BrandVo;
import com.chewy.fwd.vo.TestVo;

@Service
public class TestService {

	@Autowired
	private TestDao testDao;
	
	public List<TestVo> test() throws Exception {
		return testDao.test();
	}
	
	public void addBrand(BrandVo brandVo) throws Exception {
		
		testDao.addBrand(brandVo);
	}
	
	public List<BrandVo> popular(int ct) throws Exception {
		
		return testDao.popular(ct);
		
	}
}
