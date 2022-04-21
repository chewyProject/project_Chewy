package com.chewy.fwd.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chewy.fwd.service.RegisterMapper;
import com.chewy.fwd.vo.MemberVo;

@Repository
public class RegisterDaoImpl implements RegisterDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void register(MemberVo memberVo) throws Exception{
		
	}
	
	 @Override
	 public void insertRegister(MemberVo memberVo) throws Exception{
		 RegisterMapper mapper = sqlSession.getMapper(RegisterMapper.class);
		 mapper.insertRegister(memberVo);
	 }
}
