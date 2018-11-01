package com.mr.mapper;

import com.mr.model.OBJECTMallAttr;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by zyz on 2018/10/30.
 */
public interface AttrMapper {
   

    void saveValue(Map<Object, Object> valueMap);

    void addAttr(OBJECTMallAttr attr);


    List<OBJECTMallAttr> findAttrByClass2(@Param("flbh2") Integer flbh2);
}
