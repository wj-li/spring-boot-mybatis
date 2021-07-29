package com.example.demo.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.UserMapper;
import com.example.demo.model.User;
import com.example.demo.service.UserService;

@Service(value = "userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public int deleteByPrimaryKey(Long id) {
        // TODO Auto-generated method stub
        return userMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(User record) {
        // TODO Auto-generated method stub
        return userMapper.insert(record);
    }

    @Override
    public int insertSelective(User record) {
        // TODO Auto-generated method stub
        return userMapper.insertSelective(record);
    }

    @Override
    public User selectByPrimaryKey(Long id) {
        // TODO Auto-generated method stub
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(User record) {
        // TODO Auto-generated method stub
        return userMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(User record) {
        // TODO Auto-generated method stub
        return userMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<User> select(User user) {
        // TODO Auto-generated method stub
        return userMapper.select(user);
    }

    @Override
    public List<User> selectByDateRange(Date start, Date end) {
        return userMapper.selectByDateRange(start, end);
    }

    @Override
    public List<User> selectByDate(Date date) {
        return userMapper.selectByDate(date);
    }

}
