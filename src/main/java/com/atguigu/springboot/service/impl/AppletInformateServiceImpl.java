package com.atguigu.springboot.service.impl;

import com.atguigu.springboot.entity.TAppletInformate;
import com.atguigu.springboot.entity.TAppletInformateExample;
import com.atguigu.springboot.mapper.TAppletInformateMapper;
import com.atguigu.springboot.service.AppletInformateService;
import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @description:
 * @author: yuxy
 * @time: 2020/11/4 9:51
 */
@Service
public class AppletInformateServiceImpl implements AppletInformateService {

    @Resource
    private TAppletInformateMapper tAppletInformateMapper;


    @Override
    public Map<String,Object> saveAppletInformate(TAppletInformate appletInformate) {
        Map<String,Object> res = new HashMap<>();
        try {
            TAppletInformateExample example = new TAppletInformateExample();
            TAppletInformateExample.Criteria criteria = example.createCriteria();
            criteria.andCommercialIdEqualTo(appletInformate.getCommercialId());

            List<TAppletInformate> tAppletInformates = tAppletInformateMapper.selectByExample(example);
            if(CollectionUtils.isNotEmpty(tAppletInformates)){//更新
                appletInformate.setId(tAppletInformates.get(0).getId());
                tAppletInformateMapper.updateByPrimaryKeySelective(appletInformate);
            }else {//不存在新增
                tAppletInformateMapper.insertSelective(appletInformate);
            }
        }catch (Exception e){
            res.put("falg",false);
            res.put("code","fail");
            return res;
        }
        res.put("falg",true);
        res.put("code","sucess");
        return res;
    }
}
