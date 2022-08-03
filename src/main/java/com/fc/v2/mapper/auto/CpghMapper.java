package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.Cpgh;
import com.fc.v2.model.auto.CpghExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**
 * 磁盘柜号 CpghMapper
 * @author fuce_自动生成
 * @email ${email}
 * @date 2022-03-06 15:13:41
 */
public interface CpghMapper {
      	   	      	      	      	      	      	      	      
    long countByExample(CpghExample example);

    int deleteByExample(CpghExample example);
		
    int deleteByPrimaryKey(String id);
		
    int insert(Cpgh record);

    int insertSelective(Cpgh record);

    List<Cpgh> selectByExample(CpghExample example);
		
    Cpgh selectByPrimaryKey(String id);
		
    int updateByExampleSelective(@Param("record") Cpgh record, @Param("example") CpghExample example);

    int updateByExample(@Param("record") Cpgh record, @Param("example") CpghExample example); 
		
    int updateByPrimaryKeySelective(Cpgh record);

    int updateByPrimaryKey(Cpgh record);
  	  	
}