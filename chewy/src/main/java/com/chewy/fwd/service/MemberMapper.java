package com.chewy.fwd.service;

import java.util.List;

import com.chewy.fwd.vo.MemberVo;

public interface MemberMapper {

	public List<MemberVo> selectEmail(MemberVo memberVo) throws Exception;
	
	public void changePw(MemberVo memberVo) throws Exception;
	
	public List<MemberVo> selectNo(MemberVo memberVo) throws Exception;
}
