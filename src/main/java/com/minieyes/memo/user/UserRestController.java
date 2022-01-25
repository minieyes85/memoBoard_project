package com.minieyes.memo.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.minieyes.memo.user.bo.UserBO;
import com.minieyes.memo.user.model.User;

@RestController
public class UserRestController {

	@Autowired
	private UserBO userBO;
	
	@PostMapping("/user/sign_up")
	public Map<String, String> singUp(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			@RequestParam("name") String name,
			@RequestParam("email") String email
			) {
		int count = userBO.addUser(loginId, password, name, email);
		
		// {"result" : "success"}		
		// {"result" : "fail"}
		
		Map<String, String> result = new HashMap<>();
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");			
		}
		
		return result;
		
	}
	
	@PostMapping("/user/sign_in")
	public Map<String, String> signIn(
			@RequestParam("loginId") String loginId,
			@RequestParam("password") String password,
			HttpServletRequest req
			) {
		
		User user = userBO.getUser(loginId, password);
		
		HttpSession session = req.getSession();		
		
		Map<String, String> result = new HashMap<>();
		
		if(user != null) {
			result.put("result", "success");
			result.put("userName", user.getName());
			
			session.setAttribute("userId", user.getId());
			session.setAttribute("userLoginId", user.getLoginId());
			session.setAttribute("userName", user.getName());
			
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	
}
