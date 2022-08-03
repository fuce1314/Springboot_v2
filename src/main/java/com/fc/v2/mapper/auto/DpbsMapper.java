package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.Dpbs;
import com.fc.v2.model.auto.DpbsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**
 * 定盘报损 DpbsMapper
 * @author fuce_自动生成
 * @email ${email}
 * @date 2022-02-25 16:39:32
 */
public interface DpbsMapper {
      	   	      	      	      	      	      	      	      	      	      	      	      	      
    long countByExample(DpbsExample example);

    int deleteByExample(DpbsExample example);
		
    int deleteByPrimaryKey(String id);
		
    int insert(Dpbs record);

    int insertSelective(Dpbs record);

    List<Dpbs> selectByExample(DpbsExample example);
		
    Dpbs selectByPrimaryKey(String id);
		
    int updateByExampleSelective(@Param("record") Dpbs record, @Param("example") DpbsExample example);

    int updateByExample(@Param("record") Dpbs record, @Param("example") DpbsExample example); 
		
    int updateByPrimaryKeySelective(Dpbs record);

    int updateByPrimaryKey(Dpbs record);
  	  	
}