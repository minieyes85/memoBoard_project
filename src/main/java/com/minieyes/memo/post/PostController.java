package com.minieyes.memo.post;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.minieyes.memo.post.bo.PostBO;
import com.minieyes.memo.post.model.Post;

@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	private PostBO postBO;
	
	@GetMapping("/list_view")
	public String postList(
			Model model,
			HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		int userId = (Integer)session.getAttribute("userId");
		
		List<Post> postList = postBO.getPostList(userId);
		
		model.addAttribute("postList", postList);
		
		return "post/list";
	}
	
	@RequestMapping("/create_view")
	public String postCreate() {
		return "post/create";
	}	
	
	@GetMapping("/detail_view")
	public String postDetail(
			Model model,
			@RequestParam("postId") int postId) {
		
		Post post = postBO.getPost(postId);
		
		model.addAttribute("post", post);
		
		return "post/detail";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "post/test";
	}
}
