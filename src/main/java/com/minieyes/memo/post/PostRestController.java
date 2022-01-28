package com.minieyes.memo.post;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.minieyes.memo.post.bo.PostBO;

@RestController
public class PostRestController {

	@Autowired
	private PostBO postBO;	
	
	@PostMapping("/post/create")
	public Map<String, String> createMemo(
			@RequestParam("subject") String subejct,
			@RequestParam("content") String content,
			@RequestParam("file") MultipartFile file,
			HttpServletRequest req
			) {
		
		HttpSession session = req.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		int count = postBO.addPost(userId, subejct, content, file);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
	
	@GetMapping("/post/delete")
	public Map<String, String> deletePost(
				@RequestParam("postId") int postId) {
		
		int count = postBO.removePost(postId);
		
		Map<String, String> result = new HashMap<>();
		
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		
		return result;
	}
}
