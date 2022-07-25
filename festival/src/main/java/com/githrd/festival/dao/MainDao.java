package com.githrd.festival.dao;

/**
 *  메인 DAO
 * @author	조희덕
 * @since	2022/06/28
 * @version	v.1.0
 * 			작업이력 ]
 * 				2022.06.28	-	기능 구현
 * 								담당자 : 조희덕
 *
 */

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import com.githrd.festival.vo.*;
import java.util.*;


public class MainDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public List<MainVO> mainInfo() {
		return sqlSession.selectList("mainSQL.mainInfo");
	}
	
	public List<ReviewVO> mainAvgScore() {
		return sqlSession.selectList("mainSQL.mainAvgScore");
	}
	
	public List<ReviewVO> mainReview(int fno){
		return sqlSession.selectList("mainSQL.mainReview", fno);
	}
}
