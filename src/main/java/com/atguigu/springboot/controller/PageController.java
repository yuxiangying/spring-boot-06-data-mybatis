package com.atguigu.springboot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * @description:
 * @author: yuxy
 * @time: 2020/10/20 17:28
 */
@Controller
public class PageController {

    /*@GetMapping("/layout")
    public String layout() {
        return "layoutFrame";
    }*/

    @RequestMapping("/thymaleaf")
    public ModelAndView thymaleaf() {
        ModelAndView modelAndView = new ModelAndView("html/thymeleaf");
        modelAndView.addObject("user","任正非");
        return modelAndView;
    }


    @RequestMapping("/login")
    public ModelAndView login() {
        ModelAndView modelAndView = new ModelAndView("/login");
        return modelAndView;
    }

    @RequestMapping("/register")
    public ModelAndView register() {
        ModelAndView modelAndView = new ModelAndView("/register");
        return modelAndView;
    }
    //登录页面
    @RequestMapping("/layout")
    public ModelAndView layout() {
        ModelAndView modelAndView = new ModelAndView("/layoutFrame");
        return modelAndView;
    }

    @RequestMapping("/index")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("/index");
        return modelAndView;
    }

    @RequestMapping("/index2")
    public ModelAndView index2() {
        ModelAndView modelAndView = new ModelAndView("/index2");
        return modelAndView;
    }

    //微信小程序设置页面
    @RequestMapping("/applet/appletPage")
    public ModelAndView appletPage() {
        ModelAndView modelAndView = new ModelAndView("/applet/appletPage");
        return modelAndView;
    }

    //站点概况页面
    @RequestMapping("/station/stationPage")
    public ModelAndView stationPage() {
        ModelAndView modelAndView = new ModelAndView("/station/stationPage");
        return modelAndView;
    }

}
