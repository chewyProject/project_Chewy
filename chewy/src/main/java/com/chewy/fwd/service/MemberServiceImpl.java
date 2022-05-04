package com.chewy.fwd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chewy.fwd.dao.MemberDao;
import com.chewy.fwd.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberDao memberdao;

	@Override
	public List<MemberVo> selectEmail(MemberVo memberVo) throws Exception {
		return memberdao.selectEmail(memberVo);
	}

	@Override
	public int changePw(MemberVo memberVo) throws Exception {
		int status = 0;
		
		if(memberVo.getM_password().equals(memberVo.getM_confirmpw())) {
			status = 200;
			memberdao.changePw(memberVo);
		} else {
			status = 400;
		}
		
		return status;
	}

	@Override
	public int selectNo(MemberVo memberVo) throws Exception {
		
		return memberdao.selectNo(memberVo).get(0).getM_no(); 
	}

	@Override
	public List<MemberVo> login(MemberVo memberVo) throws Exception {
		 
		return memberdao.login(memberVo);
		
//		System.out.println("service");
//		
//		int status = 0;
//		
//		if(memberdao.login(memberVo).size() > 0 ) {
//			status = 200;
//			memberdao.login(memberVo);
//		}else {
//			status = 400;
//		}
//		return status;
//	}
	
	}
	
}
