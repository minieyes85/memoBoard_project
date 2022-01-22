package com.minieyes.memo.common;

import org.springframework.stereotype.Controller;
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
	
}
