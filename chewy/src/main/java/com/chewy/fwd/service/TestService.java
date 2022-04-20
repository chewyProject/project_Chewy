package com.chewy.fwd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chewy.fwd.dao.TestDao;
import com.chewy.fwd.vo.TestVo;

@Service
public class TestService {

	@Autowired
	private TestDao testDao;
	
	public List<TestVo> test() throws Exception {
		return testDao.test();
	}
}
