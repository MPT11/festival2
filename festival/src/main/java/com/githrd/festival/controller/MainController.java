package com.githrd.festival.controller;

/**
 *  메인 컨트롤러
 * @author	조희덕
 * @since	2022/06/28
 * @version	v.1.0
 * 			작업이력 ]
 * 				2022.06.28	-	기능 구현
 * 								담당자 : 조희덕
 *
 */

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.*;
import com.githrd.festival.dao.MainDao;
import com.githrd.festival.dao.ReviewDao;
import com.githrd.festival.vo.MainVO;
import com.githrd.festival.vo.ReviewVO;



@Controller
public class MainController {
	@Autowired
	MainDao mainDao;	
	
	@RequestMapping({"/", "/main.fes"})
	public ModelAndView getMain(ModelAndView mv, HttpSession session) {
		mv.setViewName("main");
		List<MainVO> list =mainDao.mainInfo();		
		mv.addObject("LIST", list);
		
		List<ReviewVO> Rinfo = mainDao.mainAvgScore();
		if(Rinfo.isEmpty() == true) {
			return mv;
		}
		
		List<ReviewVO> review1 = mainDao.mainReview(Rinfo.get(0).getFno());
		List<ReviewVO> review2 = mainDao.mainReview(Rinfo.get(1).getFno());
		mv.addObject("RInfo", Rinfo);
		mv.addObject("REVIEW1", review1);
		mv.addObject("REVIEW2", review2);
		
		
		return mv;
	}

}
