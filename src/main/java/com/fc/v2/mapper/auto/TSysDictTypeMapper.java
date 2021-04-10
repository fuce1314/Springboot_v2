package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.TSysDictType;
import com.fc.v2.model.auto.TSysDictTypeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 字典类型表
 * 
 * @author 一休
 * @email 438081243@qq.com
 * @date 2019-09-05 12:34:25
 */
public interface TSysDictTypeMapper {
    long countByExample(TSysDictTypeExample example);

    int deleteByExample(TSysDictTypeExample example);
		
    int deleteByPrimaryKey(String id);
		
    int insert(TSysDictType record);

    int insertSelective(TSysDictType record);

    List<TSysDictType> selectByExample(TSysDictTypeExample example);
		
    TSysDictType selectByPrimaryKey(String id);
		
    int updateByExampleSelective(@Param("record") TSysDictType record, @Param("example") TSysDictTypeExample example);

    int updateByExample(@Param("record") TSysDictType record, @Param("example") TSysDictTypeExample example); 
		
    int updateByPrimaryKeySelective(TSysDictType record);

    int updateByPrimaryKey(TSysDictType record);
}