package com.minieyes.memo.post;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PostRestController {

	@PostMapping("/post/list_view")
	public int createMemo() {
		return 0;
	}
}
