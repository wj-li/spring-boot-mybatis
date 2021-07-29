package com.example.demo.service;

import java.util.Date;
import java.util.List;

import com.example.demo.model.User;

public interface UserService {
    int deleteByPrimaryKey(Long id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

	List<User> select(User user);

	List<User> selectByDateRange(Date start, Date end);

    List<User> selectByDate(Date date);

}