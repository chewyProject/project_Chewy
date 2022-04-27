package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.MemberVo;

public interface MemberMapper {
	
	// 회원가입 인서트
	void insertRegister(MemberVo memeberVo) throws Exception;
	
	// 마이페이지
	public List<MemberVo> mypageSelectOne(int m_no) throws Exception;

	public List<MemberVo> selectEmail(MemberVo memberVo) throws Exception;
	
	public void changePw(MemberVo memberVo) throws Exception;
	
	public List<MemberVo> selectNo(MemberVo memberVo) throws Exception;
	
	public List<MemberVo> login(MemberVo memberVo) throws Exception;
	
	public String nameupdate(MemberVo memberVo) throws Exception;

	public String emailupdate(MemberVo memberVo) throws Exception;

	public void pwupdate(MemberVo memberVo) throws Exception;

}
