package com.atguigu.springboot.controller;

import com.atguigu.springboot.entity.TAppletInformate;
import com.atguigu.springboot.service.AppletInformateService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Map;

/**
 * @description: 微信小程序设置controller
 * @author: yuxy
 * @time: 2020/11/4 9:29
 */
@Controller
@RequestMapping("/applet")
public class AppletInformateController {

    @Resource
    private AppletInformateService appletInformateService;

    @RequestMapping("/saveApplet")
    @ResponseBody
    public Map<String,Object> saveAppletInformate(TAppletInformate appletInformate){
        Map<String,Object> res = appletInformateService.saveAppletInformate(appletInformate);
        return res;
    }
}
