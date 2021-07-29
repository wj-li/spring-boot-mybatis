package com.example.demo.controller;

import com.example.demo.model.User;
import com.example.demo.service.UserService;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    @ResponseBody
    public void add(@RequestParam(name = "username") String username) {
        User user = new User();
        user.setName(username);
        user.setGmt_create(new Date());
        user.setGmt_modified(new Date());
        userService.insert(user);
    }

    /**
     * @param pageNum  当前分页页码
     * @param pageSize 每页显示数据条数
     * @return
     */
    @RequestMapping(value = "/getUsers", method = RequestMethod.GET)
    @ResponseBody
    public List<User> getUsers(@RequestParam(name = "pageNum", defaultValue = "1") Integer pageNum,
                               @RequestParam(name = "pageSize", defaultValue = "1") Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize, false);
        User user = new User();
        user.setGmt_create(new Date());
        return userService.select(user);
    }

    /**
     * @param start 开始时间
     * @param end   结束时间
     * @return
     */
    @RequestMapping(value = "/selectByDateRange", method = RequestMethod.GET)
    @ResponseBody
    public List<User> selectByDateRange(@RequestParam(name = "start") String start,
                               @RequestParam(name = "end") String end) throws ParseException {
        PageHelper.startPage(1, 50, false);

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");

        return userService.selectByDateRange(simpleDateFormat.parse(start), simpleDateFormat.parse(end));
    }

    /**
     * @param date 开始时间
     * @return
     */
    @RequestMapping(value = "/selectByDate", method = RequestMethod.GET)
    @ResponseBody
    public List<User> selectByDate(@RequestParam(name = "date") String date) throws ParseException {
        PageHelper.startPage(1, 50, false);

        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");

        return userService.selectByDate(simpleDateFormat.parse(date));
    }

}
