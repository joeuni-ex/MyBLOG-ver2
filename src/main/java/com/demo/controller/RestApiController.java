package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.demo.service.UserService;


@RestController
public class RestApiController {

	
	@Autowired
	private UserService userService;
	
	
	//아이디 중복검사 
	@GetMapping("/user/check/{user_id}")
	public String checkUserIdExist(@PathVariable String user_id) {
		//유저 아이디가 없으면 true 있으면 false
		boolean check = userService.checkUserIdExist(user_id);
		
		return check +"";
	}
}
