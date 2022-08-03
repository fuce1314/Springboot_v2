package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.SysDepartment;
import com.fc.v2.model.auto.SysDepartmentExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 部门表 SysDepartmentMapper
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2020-04-17 13:12:58
 */
public interface SysDepartmentMapper {
      	   	      	      	      	      	      	      	      	      
    long countByExample(SysDepartmentExample example);

    int deleteByExample(SysDepartmentExample example);
		
    int deleteByPrimaryKey(Integer id);
		
    int insert(SysDepartment record);

    int insertSelective(SysDepartment record);

    List<SysDepartment> selectByExample(SysDepartmentExample example);
		
    SysDepartment selectByPrimaryKey(Integer id);
		
    int updateByExampleSelective(@Param("record") SysDepartment record, @Param("example") SysDepartmentExample example);

    int updateByExample(@Param("record") SysDepartment record, @Param("example") SysDepartmentExample example); 
		
    int updateByPrimaryKeySelective(SysDepartment record);

    int updateByPrimaryKey(SysDepartment record);
  	  	
}