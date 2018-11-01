package com.mr.controller;

import com.mr.model.OBJECTMallAttr;
import com.mr.model.TMallAttrOV;
import com.mr.service.AttrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by zyz on 2018/10/30.
 */
@Controller
public class AttrController {
    @Autowired
private AttrService attrService;

    /**
     * 跳转新增页面
     * @param flbh2
     * @param map
     * @return
     */
    @RequestMapping("toAddAttr")
    public String toAddAttr(Integer flbh2, ModelMap map){
        map.put("flbh2",flbh2);
        return "add_attr";
    }


    @RequestMapping("addAttr")
    public  ModelAndView  addAttr( Integer flbh2, TMallAttrOV attrOV){
        attrService.addAttr(flbh2,attrOV);
        ModelAndView mv = new ModelAndView();

        mv.addObject("flbh2",flbh2);

        mv.setViewName("redirect:toAddAttr.do");
        return mv;
    }


    @RequestMapping("findAttrByClass2")
    public String findAttrByClass2(Integer flbh2 ,ModelMap map){
        List<OBJECTMallAttr>list=attrService.findAttrByClass2(flbh2);
        map.put("list" ,list);
        return "innerAttrPage";
    }
}
