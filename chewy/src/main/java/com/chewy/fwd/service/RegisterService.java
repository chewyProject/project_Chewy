package com.chewy.fwd.service;

import com.chewy.fwd.vo.MemberVo;

public interface RegisterService {

	// 회원가입 페이지
	public void register(MemberVo memberVo)  throws Exception;
	void insertRegister(MemberVo memberVo) throws Exception;
}
