package com.minieyes.memo.post;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class PostController {

	
	@GetMapping("/list_view")
	public String postList() {
		return "post/list";
	}
	
	@RequestMapping("/create_view")
	public String postCreate() {
		return "post/create";
	}	
	
	@RequestMapping("/detail_view")
	public String postDetail() {
		return "post/detail";
	}
	
	@RequestMapping("/test")
	public String test() {
		return "post/test";
	}
}
