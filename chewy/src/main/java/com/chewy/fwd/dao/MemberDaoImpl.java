package com.chewy.fwd.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.chewy.fwd.service.MemberMapper;
import com.chewy.fwd.vo.MemberVo;

@Repository
public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	private SqlSession sqlSession;
	
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

}
