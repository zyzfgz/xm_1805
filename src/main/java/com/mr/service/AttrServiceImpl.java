package com.mr.service;

import com.mr.mapper.AttrMapper;
import com.mr.model.OBJECTMallAttr;
import com.mr.model.TMallAttrOV;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zyz on 2018/10/30.
 */
@Service

public class AttrServiceImpl implements AttrService {
    @Autowired
    private AttrMapper attrMapper;

    @Override
    public void addAttr(Integer flbh2, TMallAttrOV attrOV) {
        List<OBJECTMallAttr> attrList = attrOV.getAttrList();


        for (int i = 0; i <attrList.size() ; i++) {
            OBJECTMallAttr attr = attrList.get(i);
            attr.setFlbh2(flbh2);
            attrMapper.addAttr(attr);


            Map<Object, Object> valueMap = new HashMap<>();
            valueMap.put("shxmId",attr.getId());
            valueMap.put("valueList",attr.getValueList());
            attrMapper.saveValue(valueMap);
        }

    }

    @Override
    public List<OBJECTMallAttr> findAttrByClass2(Integer flbh2) {
        return attrMapper.findAttrByClass2(flbh2);
    }


}
