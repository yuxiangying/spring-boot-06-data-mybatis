package com.atguigu.springboot.service;

import com.atguigu.springboot.entity.TAppletInformate;

import java.util.Map;

public interface AppletInformateService {
    /*
     * @Author yuxy
     * @Description 根据实体保存记录
     * @Param [appletInformate]
     * @return java.lang.String
     * @Date 2020/11/4 10:10
     **/
    Map<String,Object> saveAppletInformate(TAppletInformate appletInformate);
}
