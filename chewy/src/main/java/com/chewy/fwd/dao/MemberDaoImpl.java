package com.chewy.fwd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chewy.fwd.service.MemberMapper;
import com.chewy.fwd.vo.MemberVo;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSession sqlSession;

	// 회원가입 페이지
	@Override
	public void register(MemberVo memberVo) throws Exception {

	}

	// 회원가입 인서트
	@Override
	public void insertRegister(MemberVo memberVo) throws Exception {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		mapper.insertRegister(memberVo);
	}
	
	// 마이페이지
	@Override
	public List<MemberVo> mypageSelectOne(int m_no) throws Exception{
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		return mapper.mypageSelectOne(m_no);
	}

	@Override
	public List<MemberVo> selectEmail(MemberVo memberVo) throws Exception {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		return mapper.selectEmail(memberVo);
	}

	@Override
	public void changePw(MemberVo memberVo) throws Exception {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		mapper.changePw(memberVo);
	}

	@Override
	public List<MemberVo> selectNo(MemberVo memberVo) throws Exception {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		return mapper.selectNo(memberVo);
	}

	@Override
	public List<MemberVo> login(MemberVo memberVo) throws Exception {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);

		System.out.println("dao");

		return mapper.login(memberVo);
	}

	@Override
	public String nameupdate(MemberVo memberVo) throws Exception {
		System.out.println("update dao");
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		
		return mapper.nameupdate(memberVo);
	}

	@Override
	public void emailupdate(MemberVo memberVo) throws Exception {
		System.out.println("emailupdate dao");
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		
		mapper.emailupdate(memberVo);
	}

	@Override
	public void pwupdate(MemberVo memberVo) throws Exception {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		System.out.println("pwupdate dao");
		mapper.pwupdate(memberVo);
	}

	
}
