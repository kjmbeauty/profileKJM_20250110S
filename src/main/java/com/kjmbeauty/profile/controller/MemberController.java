package com.kjmbeauty.profile.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kjmbeauty.profile.dao.MemberDao;
import com.kjmbeauty.profile.dto.MemberDto;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemberController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@PostMapping(value = "/joinOk")
	public String joinOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");		
		
		MemberDao mDao = sqlSession.getMapper(MemberDao.class);
		
		int idFlag = mDao.idCheckDao(mid);//1이 반환되면 이미 가입하려는 아이디가 존재->가입불가

		if(idFlag == 0) { //기존 아이디 존재하지 않음->가입 메소드 호출		
			int joinFlag = mDao.joinMemberDao(mid, mpw, mname, memail);//반환되는 값이 1이면 가입성공
			if(joinFlag == 1) { //가입 성공
				model.addAttribute("msg", mname + "님 가입을 축하드립니다.로그인 하세요.");
				model.addAttribute("url", "login");			
			} else { //가입 실패
				model.addAttribute("msg", "회원 가입 실패!다시 확인하신 후 가입하세요.");
				model.addAttribute("url", "join");
			}
		} else { //기존 아이디 존재
			model.addAttribute("msg", "가입하시려는 아이디가 존재합니다!다시 확인하신 후 가입하세요.");
			model.addAttribute("url", "join");			
		}
		return "alert/alert";
		
		
	}
	
	@GetMapping(value = "/idcheck")
	public String idcheck(HttpServletRequest request, Model model, HttpServletResponse response) {
		
		String idcheck = request.getParameter("idcheck");
		
		MemberDao mDao = sqlSession.getMapper(MemberDao.class);
		
		int idFlag = mDao.idCheckDao(idcheck);//1이 반환되면 이미 가입하려는 아이디가 존재->가입불가
		
		
		if(idFlag == 1) {			
			model.addAttribute("msg", "가입하시려는 아이디가 존재합니다!다시 확인하신 후 가입하세요.");		
			
			return "alert/alert2";
		} else {
			model.addAttribute("msg", "가입 가능한 아이디 입니다. 계속 가입을 진행해 주세요.");	
			
			return "alert/alert2";
		}
	}
	
	@PostMapping(value = "/loginOk")
	public String loginOk(HttpServletRequest request, Model model, HttpSession session, HttpServletResponse response) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		MemberDao mDao = sqlSession.getMapper(MemberDao.class);
		int loginFlag = mDao.loginDao(mid, mpw);//1이면 로그인 성공, 0이면 실패
		
		if(loginFlag == 1) {//로그인 성공
			model.addAttribute("msg", "반갑습니다. "+mid+"님 로그인 성공하셨습니다.");		
			model.addAttribute("url", "index");
			session.setAttribute("sessionid", mid);
			return "alert/alert";
		} else {
			model.addAttribute("msg", "아이디 또는 비밀번호가 잘못 되었습니다.다시 확인하신 후 로그인하세요.");			
			
			return "alert/alert2";
		}
		
	}
	
		@GetMapping(value = "/logout")
		public String logout(HttpSession session, Model model) {
			
			if(session.getAttribute("sessionid")==null) { //로그인하지 않은 상태
				model.addAttribute("msg", "로그인 상태가 아닙니다. 로그인 창으로 이동합니다.");
				model.addAttribute("url", "login");
				
				return "alert/alert";
			}
			
			model.addAttribute("msg", "정말 로그아웃 하시겠습니까?");
			model.addAttribute("url", "logoutOk");
			
			return "alert/confirm";
		}
		
		@GetMapping(value = "/logoutOk")
		public String logoutOk(HttpSession session, Model model) {
			
			if(session.getAttribute("sessionid")==null) { //로그인하지 않은 상태
				
				model.addAttribute("msg", "로그인 상태가 아닙니다. 로그인 창으로 이동합니다.");
				model.addAttribute("url", "login");
				
				return "alert/alert";
			}
			
			session.invalidate();//로그아웃
			
			model.addAttribute("msg", "로그아웃 하셨습니다. 안녕히가세요.");
			model.addAttribute("url", "login");
			
			return "alert/alert";
		}
		
		@GetMapping(value = "/member")
		public String member(HttpServletRequest request, Model model, HttpSession session) {
			
			String sid = (String) session.getAttribute("sessionid");//현재 로그인한 유저의 아이디
			
			MemberDao mDao = sqlSession.getMapper(MemberDao.class);
			
			MemberDto mDto = mDao.memberInfoDao(sid);
			
			model.addAttribute("mDto", mDto);
			
			return "memberForm";
		}
		
		@PostMapping(value = "/modify")
		public String modify(HttpServletRequest request, Model model) {
			
			String mid = request.getParameter("mid");
			String mpw = request.getParameter("mpw");
			String mname = request.getParameter("mname");
			String memail = request.getParameter("memail");		
			
			MemberDao mDao = sqlSession.getMapper(MemberDao.class);
			
			int modifyFlag = mDao.memberModifyDao(mid, mpw, mname, memail);//1이면 수정 성공
			
			if(modifyFlag == 1) {
				model.addAttribute("msg", "회원정보 수정 완료.");
				model.addAttribute("url", "member");
				return "alert/alert";
			} else {
				model.addAttribute("msg", "회원정보 수정 실패!");			
				return "alert/alert2";
			}
		}
		


}
