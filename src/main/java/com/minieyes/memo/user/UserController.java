package com.minieyes.memo.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	@RequestMapping("/signin_view")
	public String signIn() {
		return "user/signin";
	}
	
	@RequestMapping("/signup_view")
	public String signUp() {
		return "user/signup";
	}
	
	@GetMapping("/sign_out")
	public String signOut(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		
		session.removeAttribute("userId");
		session.removeAttribute("userLoginId");
		session.removeAttribute("userName");
		
		return "redirect:/user/signin_view";
	}
	
}
