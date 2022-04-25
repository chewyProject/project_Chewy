package com.chewy.fwd.dao;

import java.util.List;

import com.chewy.fwd.vo.MemberVo;

public interface MemberDao {

	// 회원가입 페이지
	public void register(MemberVo memberVo) throws Exception;

	// 회원가입 인서트
	public void insertRegister(MemberVo memberVo) throws Exception;
	
	// 마이페이지
	public void mypage(MemberVo memberVo) throws Exception;
	

	public List<MemberVo> selectEmail(MemberVo memberVo) throws Exception;

	public void changePw(MemberVo memberVo) throws Exception;

	public List<MemberVo> selectNo(MemberVo memberVo) throws Exception;

	public List<MemberVo> login(MemberVo memberVo) throws Exception;

}
