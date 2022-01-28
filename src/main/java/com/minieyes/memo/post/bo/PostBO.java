package com.minieyes.memo.post.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.minieyes.memo.post.dao.PostDAO;
import com.minieyes.memo.post.model.Post;

@Service
public class PostBO {
	
	@Autowired
	private PostDAO postDAO;
	
	public int addPost(int userId, String subject, String content, MultipartFile file) {
		
		//파일 저장
		
		
		return postDAO.insertPost(userId, subject, content);
	}
	
	public List<Post> getPostList(int userId){
		return postDAO.selectPostList(userId);
	}
	
	public Post getPost(int postId) {
		return postDAO.selectPost(postId);
	}
	
	public int removePost(int postId) {
		return postDAO.deletePost(postId);
	}

}