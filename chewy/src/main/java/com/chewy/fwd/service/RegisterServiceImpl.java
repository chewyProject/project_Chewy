package com.chewy.fwd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chewy.fwd.dao.RegisterDao;
import com.chewy.fwd.vo.MemberVo;

@Service
public class RegisterServiceImpl implements RegisterService{

	@Autowired
	private RegisterDao registerDao;
	
	// 회원 가입 페이지
	@Override
	public void register(MemberVo memberVo) throws Exception{
		registerDao.register(memberVo);
	}
	
	// 회원 가입 인서트
	@Override
	public void insertRegister(MemberVo memberVo) throws Exception{
		registerDao.insertRegister(memberVo);
	}
}
