package com.githrd.festival.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.githrd.festival.vo.*;

public class MypageDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public MemberVO getMyInfo(MemberVO mVO) {
		return sqlSession.selectOne("pSQL.getMyInfo", mVO);
	}
	public List<MainVO> getMyFinfo(MemberVO mVO){
		return sqlSession.selectList("pSQL.getMyFinfo", mVO);
	}
	public List<ReviewVO> getMyRinfo(MemberVO mVO){
		return sqlSession.selectList("pSQL.getMyRinfo", mVO);
	}
	public int getMyFinfoCnt(MemberVO mVO) {
		return sqlSession.selectOne("pSQL.getMyFInfoCnt", mVO); 
	}
	public int check(MemberVO mVO) {
		return sqlSession.selectOne("pSQL.check", mVO);
	}
	public int editInfo(MemberVO mVO) {
		return sqlSession.update("pSQL.editInfo", mVO);
	}
}
