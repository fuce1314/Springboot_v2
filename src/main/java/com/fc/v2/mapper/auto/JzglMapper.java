package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.Jzgl;
import com.fc.v2.model.auto.JzglExample;
import com.fc.v2.model.custom.JzglVo;

import java.util.List;
import org.apache.ibatis.annotations.Param;

/**
 * 介质管理 JzglMapper
 * @author fuce_自动生成
 * @email ${email}
 * @date 2022-02-24 09:47:19
 */
public interface JzglMapper {
      	   	      	      	      	      	      	      	      	      	      	      	      	      	      
    long countByExample(JzglExample example);

    int deleteByExample(JzglExample example);
		
    int deleteByPrimaryKey(String id);
		
    int insert(Jzgl record);

    int insertSelective(Jzgl record);

    List<Jzgl> selectByExample(JzglExample example);
    
    List<JzglVo> selectByExample2(JzglExample example);
		
    Jzgl selectByPrimaryKey(String id);
		
    int updateByExampleSelective(@Param("record") Jzgl record, @Param("example") JzglExample example);

    int updateByExample(@Param("record") Jzgl record, @Param("example") JzglExample example); 
		
    int updateByPrimaryKeySelective(Jzgl record);

    int updateByPrimaryKey(Jzgl record);
    
    
    List<JzglVo> batchViewIds(@Param("ids") List<String> ids);
  	  	
}