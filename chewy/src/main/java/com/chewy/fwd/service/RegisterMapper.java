package com.chewy.fwd.service;

import com.chewy.fwd.vo.MemberVo;

public interface RegisterMapper {

	// 회원가입 인서트
	void insertRegister(MemberVo memeberVo) throws Exception;
	
}
