package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.SysStreet;
import com.fc.v2.model.auto.SysStreetExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 街道设置 SysStreetMapper
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2019-10-05 01:02:28
 */
public interface SysStreetMapper {
      	      	   	      	   	      	   	      	   	      	   	      	   	      	   	      	   	      	   	      	   	      	   	      
    long countByExample(SysStreetExample example);

    int deleteByExample(SysStreetExample example);
		
    int deleteByPrimaryKey(Integer id);
		
    int insert(SysStreet record);

    int insertSelective(SysStreet record);

    List<SysStreet> selectByExample(SysStreetExample example);
		
    SysStreet selectByPrimaryKey(Integer id);
		
    int updateByExampleSelective(@Param("record") SysStreet record, @Param("example") SysStreetExample example);

    int updateByExample(@Param("record") SysStreet record, @Param("example") SysStreetExample example); 
		
    int updateByPrimaryKeySelective(SysStreet record);

    int updateByPrimaryKey(SysStreet record);
  	  	
}