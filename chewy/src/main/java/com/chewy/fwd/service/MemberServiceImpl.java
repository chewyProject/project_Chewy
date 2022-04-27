package com.chewy.fwd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chewy.fwd.dao.MemberDao;
import com.chewy.fwd.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberdao;

	// 회원가입
	@Override
	public void register(MemberVo memberVo) throws Exception {
		memberdao.register(memberVo);
	}

	// 회원 가입 인서트
	@Override
	public void insertRegister(MemberVo memberVo) throws Exception {
		memberdao.insertRegister(memberVo);
	}
	// 마이페이지
	@Override
	public List<MemberVo> mypageSelectOne(int m_no) throws Exception{
		return memberdao.mypageSelectOne(m_no);
	}

	@Override
	public List<MemberVo> selectEmail(MemberVo memberVo) throws Exception {
		return memberdao.selectEmail(memberVo);
	}

	@Override
	public int changePw(MemberVo memberVo) throws Exception {
		int status = 0;

		if (memberVo.getM_password().equals(memberVo.getM_confirmpw())) {
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

		System.out.println("service");
			
		return memberdao.login(memberVo);

//		int status = 0;
//
//		if (memberdao.login(memberVo).size() > 0) {
//			status = 200;
//			memberdao.login(memberVo);
//		} else {
//			status = 400;
//		}
//		return status;
	}
	
	
	// nameupdate
	@Override
	public String nameupdate(MemberVo memberVo) throws Exception {
		System.out.println("service");
		return memberdao.nameupdate(memberVo);
	}

	@Override
	public String emailupdate(MemberVo memberVo) throws Exception {
		System.out.println("service");
		return memberdao.emailupdate(memberVo);
	}

	@Override
	public String pwupdate(MemberVo memberVo) throws Exception {
		System.out.println("service");
		
		System.out.println(memberVo.getM_no());
		
		List<MemberVo> memberInfo = memberdao.mypageSelectOne(memberVo.getM_no());

		System.out.println(memberInfo.get(0).getM_password());
		
		// 입력한 비밀번호랑 기존 비밀번호가 일치하는지 확인
		if(memberInfo.get(0).getM_password().equals(memberVo.getM_password())) {
			System.out.println("같음");
			// 기존 비밀번호랑 변경할 비밀번호가 다른지 확인 && 변경할 비밀번호랑 확인비밀번호가 같은지 확인
			if((!memberVo.getM_password().equals(memberVo.getM_newpw())) && (memberVo.getM_newpw().equals(memberVo.getM_confirmpw()))) {
				memberdao.pwupdate(memberVo);
				return "success";
			} else {
				return "fail";
				}
			} else {
				return "fail";
			}
		}
}