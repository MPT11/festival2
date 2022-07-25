package com.githrd.festival.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.githrd.festival.dao.*;
import com.githrd.festival.util.PageUtil;
import com.githrd.festival.vo.*;

import oracle.security.crypto.core.Padding.ID;


@Controller
@RequestMapping("/mypage")
public class Mypage {
	
	@Autowired
	MypageDao pDao;
	
	@RequestMapping("/mypage.fes")
	public ModelAndView myPage(ModelAndView mv, HttpSession session) {
		mv.setViewName("mypage/mypage");
		String id = (String)session.getAttribute("SID");		
		MemberVO mVO = new MemberVO();
		mVO.setId(id);
		
		int cnt = pDao.getMyFinfoCnt(mVO);
		int nowPage = 1;
		PageUtil page = new PageUtil(nowPage, cnt);
		session.setAttribute("PAGE", page);
		System.out.println(page);
		
		mVO = pDao.getMyInfo(mVO);		
		session.setAttribute("MEMBER", mVO);
		
		List<MainVO> list = pDao.getMyFinfo(mVO);
		session.setAttribute("FINFO", list);
		
		List<ReviewVO> Rlist = pDao.getMyRinfo(mVO);
		session.setAttribute("REVIEW", Rlist);
		
		return mv;
	}
	
	@RequestMapping("/pwcheck.fes")
	public ModelAndView pwCheck(ModelAndView mv) {
		mv.setViewName("mypage/pwcheck");	
		
		return mv;
	}
	@RequestMapping("/pwcheckProc.fes")
	public ModelAndView pwCheckProc(ModelAndView mv, MemberVO mVO, RedirectView rv, HttpSession session) {
		rv.setUrl("/festival/mypage/editinfo.fes");
		int cnt = pDao.check(mVO);
		
		if(cnt == 0) {
			rv.setUrl("/festival/mypage/pwcheck.fes");
			mv.setView(rv);
			return mv;
		}
		
		mv.setView(rv);
		return mv;	
	}
	@RequestMapping("/editinfo.fes")
	public ModelAndView editForm(ModelAndView mv, HttpSession session) {
		mv.setViewName("mypage/editinfo");
		String id = (String) session.getAttribute("SID");
		MemberVO mVO = new MemberVO();
		mVO.setId(id);
		System.out.println(mVO.getId());
		mVO = pDao.getMyInfo(mVO);
		session.setAttribute("DATA", mVO);
		return mv;
	}
	@RequestMapping("/editProc.fes")
	public ModelAndView editProc(ModelAndView mv, MemberVO mVO, RedirectView rv, HttpSession session) {
		int cnt = pDao.editInfo(mVO);
		rv.setUrl("/festival/mypage/mypage.fes");
		if(cnt == 0) {
			rv.setUrl("/festival/mypage/editinfo.fes");			
		}
		
		mv.setView(rv);
		
		return mv;
	}
}
