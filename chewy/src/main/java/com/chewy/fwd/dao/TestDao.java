package com.chewy.fwd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chewy.fwd.service.TestMapper;
import com.chewy.fwd.vo.BrandVo;
import com.chewy.fwd.vo.TestVo;

@Repository
public class TestDao {

	@Autowired
	private SqlSession sqlSession;
	
	public List<TestVo> test() throws Exception {
		TestMapper mapper = sqlSession.getMapper(TestMapper.class);
		return mapper.test();
	}
	
	public void addBrand(BrandVo brandVo) throws Exception {
		TestMapper mapper = sqlSession.getMapper(TestMapper.class);
		
		if(mapper.selectBrand(brandVo) == null) {
			mapper.addBrand(brandVo);
		} else {
			if(brandVo.getB_logo() != null) {
				mapper.addLogo(brandVo);
			}
			
			mapper.updateBrand(brandVo);
		}
		
	}
	
	public List<BrandVo> popular(int ct) throws Exception {
		TestMapper mapper = sqlSession.getMapper(TestMapper.class);
		
		return mapper.polularDog(ct);
	}
}
