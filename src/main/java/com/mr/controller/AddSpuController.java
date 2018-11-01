package com.mr.controller;

import com.mr.model.TMallProduct;
import com.mr.service.SpuService;
import com.mr.util.MyFileUploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by zyz on 2018/10/29.
 */
@Controller
public class AddSpuController {
    @Autowired
    private SpuService spuService;
    @RequestMapping("toAdd")
    public String toAdd(TMallProduct spu, ModelMap map){
        map.put("spu",spu);
        return "add_spu";
    }

    @RequestMapping("addSpu")
    public ModelAndView addSpu(TMallProduct spu, @RequestParam MultipartFile[] imgs){
        List<String> urlList = MyFileUploadUtil.upload_image(imgs);
        spu.setShpTp(urlList.get(0));
        spuService.saveSpu(spu,urlList);

        ModelAndView mv = new ModelAndView();
        mv.addObject("flbh1",spu.getFlbh1());
        mv.addObject("flbh2",spu.getFlbh2());
        mv.addObject("ppId",spu.getPpId());
        mv.setViewName("redirect:toAdd.do");
        return mv;
    }


}
