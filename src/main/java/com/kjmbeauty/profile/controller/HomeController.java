package com.kjmbeauty.profile.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	@Autowired
	private SqlSession sqlSession;
	
	@GetMapping(value = "/")
	public String root() {
		return "index";
	}
	
	@GetMapping(value = "/index")
	public String index() {
		return "index"; 
	}
	
	@GetMapping(value = "/join")
	public String join() {
		return "join";
	}
	
	@GetMapping(value = "/login")
	public String login() {
		return "login";
	}	
	
	@GetMapping(value = "/profile")
	public String profile() {
		return "profile";
	}	
	
	@GetMapping(value = "/contact")
	public String contact() {
		return "contact";
	}	

	@GetMapping(value = "/board")
	public String board() {
		return "board";
	}	
	
	
}
