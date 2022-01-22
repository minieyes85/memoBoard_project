package com.minieyes.memo.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class PostController {

	@RequestMapping("/create_view")
	public String postCreate() {
		return "post/create";
	}
	
	@RequestMapping("/list_view")
	public String postList() {
		return "post/list";
	}
	
	@RequestMapping("/detail_view")
	public String postDetail() {
		return "post/detail";
	}
}
