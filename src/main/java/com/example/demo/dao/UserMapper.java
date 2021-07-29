package com.example.demo.dao;

import java.util.Date;
import java.util.List;

import com.example.demo.model.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
	int deleteByPrimaryKey(Long id);

	int insert(User record);

	int insertSelective(User record);

	User selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(User record);

	int updateByPrimaryKey(User record);

	List<User> select(User user);

	List<User> selectByDateRange(@Param("start") Date start, @Param("end") Date end);

	List<User> selectByDate(@Param("date") Date date);
}