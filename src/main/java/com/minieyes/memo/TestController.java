package com.minieyes.memo;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.minieyes.memo.common.EncryptUtils;

@Controller
public class TestController {

	@ResponseBody
	@GetMapping("/test")
	public String test(HttpServletRequest request) {
		
		String folderName = "1234";
		String encFN = EncryptUtils.md5(folderName);
				
		//boolean flag = new File("/static/uploadedImage/"+encFN).mkdirs();
		 String root = request.getSession().getServletContext().getRealPath("/");  
		
		
		return root;
	}
}
