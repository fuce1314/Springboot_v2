package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.Jggl;
import com.fc.v2.model.auto.JgglExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**
 * 机柜管理 JgglMapper
 * @author fuce_自动生成
 * @email ${email}
 * @date 2022-02-23 15:30:30
 */
public interface JgglMapper {
      	   	      	      	      	      
    long countByExample(JgglExample example);

    int deleteByExample(JgglExample example);
		
    int deleteByPrimaryKey(String id);
		
    int insert(Jggl record);

    int insertSelective(Jggl record);

    List<Jggl> selectByExample(JgglExample example);
		
    Jggl selectByPrimaryKey(String id);
		
    int updateByExampleSelective(@Param("record") Jggl record, @Param("example") JgglExample example);

    int updateByExample(@Param("record") Jggl record, @Param("example") JgglExample example); 
		
    int updateByPrimaryKeySelective(Jggl record);

    int updateByPrimaryKey(Jggl record);
  	  	
}