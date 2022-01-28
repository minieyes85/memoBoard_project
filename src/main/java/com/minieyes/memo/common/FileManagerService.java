package com.minieyes.memo.common;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.web.multipart.MultipartFile;

public class FileManagerService {
	
	public final String FILE_UPLOAD_PATH = "D:\\JSChoi_Web_development\\portfolio Project\\upload\\image/";
	
	//파일 저장
	public String saveFile(int userId, MultipartFile file) {		
		
		//파일 저장 경로
		//사용자 별로 구분
		//사용자가 파일을 올린 시간으로 구분
		// /12_12355574553/test.jpg
		// 1970.1.1 기준 현재 밀리세컨.
		String directoryName = userId + "_" + System.currentTimeMillis() + "/";
		
		String filePath = FILE_UPLOAD_PATH + directoryName;
		
		//디렉토리 생성
		File directory = new File(filePath);
		if(directory.mkdir() == false) {
			//디렉토리 생성 에러
			return null;
		}
		
		try {
			byte[] bytes = file.getBytes();
			//파일 저장 경로 + 파일 이름 경로 객체
			Path path = Paths.get(filePath + file.getOriginalFilename());
			
			//파일 저장
			Files.write(path, bytes);
			
		} catch (IOException e) {
			//파일 저장 실패
			e.printStackTrace();
			return null;
		}
		
		// 파일 접근 가능 주소 리턴
		
		return "/images/" + directoryName + file.getOriginalFilename();
		
	}
}
