package com.example.demo.dao;

import java.util.List;

import com.example.demo.model.User;

public interface UserMapper {
	int deleteByPrimaryKey(Long id);

	int insert(User record);

	int insertSelective(User record);

	User selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(User record);

	int updateByPrimaryKey(User record);

	List<User> select(User user);
}