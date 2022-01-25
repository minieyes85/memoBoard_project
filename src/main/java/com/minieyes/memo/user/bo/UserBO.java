package com.minieyes.memo.user.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minieyes.memo.common.EncryptUtils;
import com.minieyes.memo.user.dao.UserDAO;
import com.minieyes.memo.user.model.User;

@Service
public class UserBO {
	
	@Autowired
	private UserDAO userDAO;
	
	public int addUser(String loginId, String password, String name, String email) {
		
		//암호화
		String encodingPassword = EncryptUtils.md5(password);
		
		return userDAO.insertUser(loginId, encodingPassword, name, email);
	}
	
	public User getUser(String loginId, String password) {
		
		String encodingPassword = EncryptUtils.md5(password);
		
		return userDAO.selectUser(loginId, encodingPassword);
	}

}
