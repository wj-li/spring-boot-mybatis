package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.User;
import com.example.demo.service.UserService;
import com.github.pagehelper.PageHelper;

@RestController
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/getUserInfo", method = RequestMethod.GET)
	@ResponseBody
	public User getUserInfo() {
		return userService.selectByPrimaryKey(1L);
	}

	/**
	 * 
	 * @param pageNum
	 *            当前分页页码
	 * @param pageSize
	 *            每页显示数据条数
	 * @return
	 */
	@RequestMapping(value = "/getUsers", method = RequestMethod.GET)
	@ResponseBody
	public List<User> getUsers(@RequestParam(name = "pageNum", defaultValue = "1") Integer pageNum,
			@RequestParam(name = "pageSize", defaultValue = "1") Integer pageSize) {
		PageHelper.startPage(pageNum, pageSize, false);
		return userService.select(new User());
	}

}
