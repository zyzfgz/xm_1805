package com.mr.service;

import com.mr.model.OBJECTMallAttr;
import com.mr.model.TMallAttrOV;

import java.util.List;

/**
 * Created by zyz on 2018/10/30.
 */
public interface AttrService {
    void addAttr(Integer flbh2, TMallAttrOV attrOV);


    List<OBJECTMallAttr> findAttrByClass2(Integer flbh2);
}
