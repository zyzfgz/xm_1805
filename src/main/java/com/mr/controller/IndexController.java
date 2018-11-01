package com.mr.controller;

import com.mr.service.SpuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zyz on 2018/10/29.
 */
@Controller
public class IndexController {
    @Autowired
    private SpuService spuService;
    @RequestMapping("toSpu")
    public  String toSpu(){
        return "spu";
    }


    @RequestMapping("toAttr")
    public String toAttr(){
        return "attr";
    }

    @RequestMapping("toSku")
    public  String toSku(){
        return "sku";
    }
}
