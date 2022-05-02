package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.MemberVo;

public interface MemberService {

	// 회원가입 페이지
	public void register(MemberVo memberVo) throws Exception;
	
	// 회원가입 인서트
	void insertRegister(MemberVo memberVo) throws Exception;
	
	// 마이페이지 
	public List<MemberVo> mypageSelectOne(int m_no) throws Exception;

	// 이메일 유무 확인
	public List<MemberVo> selectEmail(MemberVo memberVo) throws Exception;

	// 비밀번호 변경
	public int changePw(MemberVo memberVo) throws Exception;

	// 회원 고유번호 조회
	public int selectNo(MemberVo memberVo) throws Exception;

	// 로그인
	public List<MemberVo> login(MemberVo memberVo) throws Exception;
	
	// 마이페이지 이름수정
	public String nameupdate(MemberVo memberVo) throws Exception;
	
	// 마이페이지 이메일 수정
	public String emailupdate(MemberVo memberVo) throws Exception;
	
	// 마이페이지 비밀번호 수정
	public String pwupdate(MemberVo memberVo) throws Exception;
	
	public void addupdateForm(MemberVo memberVo) throws Exception;
	
	public String addressupdate(MemberVo memberVo) throws Exception;
	
}