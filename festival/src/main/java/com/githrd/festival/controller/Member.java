package com.githrd.festival.controller;
/**
 *  멤버 컨트롤러
 * @author	조희덕
 * @since	2022/07/03
 * @version	v.1.0
 * 			작업이력 ]
 * 				2022.07.03	-	기능 구현
 * 								담당자 : 조희덕
 *
 */

import java.lang.ProcessBuilder.Redirect;
import java.util.HashMap;

import javax.imageio.spi.RegisterableService;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.method.annotation.MapMethodProcessor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.githrd.festival.dao.MemberDao;
import com.githrd.festival.service.MailSendService;
import com.githrd.festival.service.PhoneNumCheck;
import com.githrd.festival.vo.MainVO;
import com.githrd.festival.vo.MemberVO;

import net.nurigo.java_sdk.exceptions.CoolsmsException;

@Controller
@RequestMapping("/member")
public class Member {
	@Autowired
	MemberDao mDao;
	@Autowired
	PhoneNumCheck pServ;
	@Autowired
	MailSendService mailService;
	
	@RequestMapping("/login.fes")
	public ModelAndView loginForm(ModelAndView mv, HttpSession session) {
		mv.setViewName("member/login");
		return mv;
	}
	
	@RequestMapping(path="/loginProc.fes", method=RequestMethod.POST, params={"id", "pw"})
	public ModelAndView loginProc(MemberVO mVO, ModelAndView mv, HttpSession session, RedirectView rv) {
		rv.setUrl("/festival/main.fes");
		System.out.println(mVO);
		int cnt = mDao.loginProc(mVO);
		String name = mDao.getName(mVO);
		if(cnt == 1) {
			session.setAttribute("SID", mVO.getId());
			session.setAttribute("NAME", name);
		} else {
			rv.setUrl("/festival/member/login.fes");
		}
		mv.setView(rv);
		
		return mv;
	}
	
	@RequestMapping("/logoutProc.fes")
	public ModelAndView logout(ModelAndView mv, HttpSession session, RedirectView rv) {
		session.removeAttribute("SID");
		rv.setUrl("/festival/main.fes");
		mv.setView(rv);
		return mv;
	}
	
	@RequestMapping("/join.fes")
	public ModelAndView joinForm(ModelAndView mv, HttpSession session) {
		mv.setViewName("member/join");
		
		return mv;
	}
	
	@RequestMapping(path="/idCheck.fes", method=RequestMethod.POST, params="id")
	@ResponseBody
	public HashMap<String, String> idCheck(String id){
		HashMap<String, String> map = new HashMap<String, String>();
		String result = "NO";
		
		int cnt = mDao.getIdCnt(id);
		
		if(cnt == 0) {
			result = "OK";
		}
		
		map.put("result", result);
		
		return map;
	}
	
	@RequestMapping(path="/joinProc.fes", method=RequestMethod.POST)
	public ModelAndView joinProc(MemberVO mVO, ModelAndView mv, RedirectView rv, HttpSession session) {
		int cnt = mDao.addMember(mVO);
		String name = mDao.getName(mVO);
		
		if(cnt == 1) {
			session.setAttribute("SID", mVO.getId());
			session.setAttribute("NAME", name);
			rv.setUrl("/festival/main.fes");
		}else {
			rv.setUrl("/festival/member/join.fes");
		}
		mv.setView(rv);
		
		return mv;
	}
	
	@RequestMapping("/findid.fes")
	public ModelAndView findIdForm(ModelAndView mv) {
		mv.setViewName("member/findid");
		
		return mv;
	}
	
	@RequestMapping("/findidProc.fes")
	public ModelAndView findIdProc(ModelAndView mv, HttpSession session, RedirectView rv, MemberVO mVO) {
		rv.setUrl("/festival/member/resultid.fes");
				
		if(mVO.getMail() == null) { 
			rv.setUrl("/festival/member/findid.fes");
			mv.setView(rv);
			return mv; 
		}
		 
		
		String id = mDao.findIdByMail(mVO.getMail());
				
		if(id == null) {
			rv.setUrl("/festival/member/findid.fes");
			mv.setView(rv);
			return mv;
		}else {
			session.setAttribute("FID", id);
		}		
		mv.setView(rv);
		
		return mv;
	}
	@RequestMapping("/findidProc2.fes")
	public ModelAndView findIdProc2(ModelAndView mv, HttpSession session, RedirectView rv, MemberVO mVO) {
		rv.setUrl("/festival/member/resultid.fes");
				
		if(mVO.getTel() == null) { 
			rv.setUrl("/festival/member/findid.fes");
			mv.setView(rv);
			return mv; 
		}
		 
		
		String id = mDao.findIdByTel(mVO.getTel());
				
		if(id == null) {
			rv.setUrl("/festival/member/findid.fes");
			mv.setView(rv);
			return mv;
		}else {
			session.setAttribute("FID", id);
		}		
		mv.setView(rv);
		
		return mv;
	}
	
	@RequestMapping("/resultid.fes")
	public ModelAndView resultIdFrom(ModelAndView mv, HttpSession session) {
		mv.setViewName("member/resultid");
		
		return mv;
	}
	
	@RequestMapping("/findpw.fes")
	public ModelAndView FindPwForm(ModelAndView mv) {
		mv.setViewName("member/findpw");
		
		return mv;
	}
	
	@RequestMapping("/findpwProc.fes")
	public ModelAndView FindPwProc(MemberVO mVO, ModelAndView mv, HttpSession session, RedirectView rv) {
		rv.setUrl("/festival/member/resultpw.fes");		
		
		if(mVO.getId() == null) {
			rv.setUrl("/festival/member/findid.fes");
			mv.setView(rv);
			return mv; 
		}
		int cnt = mDao.findPwCnt(mVO.getId());
		if(cnt == 0) {
			rv.setUrl("/festival/member/findid.fes");
			mv.setView(rv);
			return mv;
		}
		session.setAttribute("id", mVO.getId());
		mv.setView(rv);
		
		return mv;
	}
	
	@RequestMapping("/resultpw.fes")
	public ModelAndView ResultPw(ModelAndView mv) {
		mv.setViewName("member/resultpw");
		return mv;
	}
	
	@RequestMapping("/changePwProc.fes")
	public ModelAndView changePwProc(MemberVO mVO, ModelAndView mv, RedirectView rv, HttpSession session) {
		rv.setUrl("/festival/member/login.fes");	
		System.out.println(mVO);
		
		if(mVO.getPw() == null) {
			rv.setUrl("/festival/member/resultpw.fes");
			mv.setView(rv);
			return mv;
		}
		
		int cnt = mDao.editPw(mVO);
		if(cnt == 0) {
			rv.setUrl("/festival/member/resultpw.fes");
			mv.setView(rv);
			return mv;
		}
		
		mv.setView(rv);
		
		
		return mv;
	}
	
	@GetMapping("/TelNumCheck.fes")
	public @ResponseBody String sendSMS(@RequestParam(value="to") String to) throws CoolsmsException {  	
		return pServ.PhoneNumberCheck(to);
	}
	@GetMapping("/MailNumCheck.fes")
	public @ResponseBody String sendMail(@RequestParam(value = "email") String email) {
		return mailService.joinEmail(email);
	}
}
