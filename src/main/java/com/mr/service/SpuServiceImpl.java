package com.mr.service;

import com.mr.mapper.SpuMapper;
import com.mr.model.TMallProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zyz on 2018/10/29.
 */
@Service
public class SpuServiceImpl  implements  SpuService{
    @Autowired
    private SpuMapper spuMapper;

    public void saveSpu(TMallProduct spu,List<String> urlList) {
        spuMapper.saveSpu(spu);

        Map<String, Object> map = new HashMap<>();
        map.put("urlList",urlList);
        map.put("spuId",spu.getId());
        spuMapper.saveSpuImgs(map);
    }
}
