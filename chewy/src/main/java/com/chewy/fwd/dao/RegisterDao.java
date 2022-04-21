package com.chewy.fwd.dao;

import com.chewy.fwd.vo.MemberVo;

public interface RegisterDao {
	
	// 회원가입 페이지
	public void register(MemberVo memberVo) throws Exception;
	
	// 회원가입 인서트
	public void insertRegister(MemberVo memberVo) throws Exception;
	
}
