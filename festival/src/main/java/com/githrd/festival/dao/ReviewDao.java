package com.githrd.festival.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

public class ReviewDao {
	@Autowired
	SqlSessionTemplate sqlSession;
}
