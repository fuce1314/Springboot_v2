package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.TSysEmail;
import com.fc.v2.model.auto.TSysEmailExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TSysEmailMapper {
    long countByExample(TSysEmailExample example);

    int deleteByExample(TSysEmailExample example);

    int deleteByPrimaryKey(String id);

    int insert(TSysEmail record);

    int insertSelective(TSysEmail record);

    List<TSysEmail> selectByExample(TSysEmailExample example);

    TSysEmail selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") TSysEmail record, @Param("example") TSysEmailExample example);

    int updateByExample(@Param("record") TSysEmail record, @Param("example") TSysEmailExample example);

    int updateByPrimaryKeySelective(TSysEmail record);

    int updateByPrimaryKey(TSysEmail record);
}