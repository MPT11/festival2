package com.githrd.festival.dao;

/**
 *  맴버 DAO
 * @author	조희덕
 * @since	2022/07/03
 * @version	v.1.0
 * 			작업이력 ]
 * 				2022.07.03	-	기능 구현
 * 								담당자 : 조희덕
 *
 */

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.githrd.festival.vo.MemberVO;

public class MemberDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int loginProc(MemberVO mVO) {
		return sqlSession.selectOne("mSQL.loginProc", mVO);
	}
	public String getName(MemberVO mVO) {
		return sqlSession.selectOne("mSQL.getName", mVO);		
	}
	
	public int getIdCnt(String id) {
		return sqlSession.selectOne("mSQL.idCnt", id);
	}
	
	public int addMember(MemberVO mVO) {
		return sqlSession.insert("mSQL.addMember",mVO);
	}
	
	public String findIdByMail(String mail) {
		return sqlSession.selectOne("mSQL.findIdByMail", mail);
	}
	public String findIdByTel(String tel) {
		return sqlSession.selectOne("mSQL.findIdByTel", tel);
	}
	public int findPwCnt(String id) {
		return sqlSession.selectOne("mSQL.findPwCnt", id);		
	}
	public int editPw(MemberVO mVO) {
		return sqlSession.update("mSQL.editPw", mVO);
	}
}
