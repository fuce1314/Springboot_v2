package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.Dpjy;
import com.fc.v2.model.auto.DpjyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

/**
 * 定盘借阅 DpjyMapper
 * @author fuce_自动生成
 * @email ${email}
 * @date 2022-02-26 23:08:44
 */
public interface DpjyMapper {
      	   	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      
    long countByExample(DpjyExample example);

    int deleteByExample(DpjyExample example);
		
    int deleteByPrimaryKey(String id);
		
    int insert(Dpjy record);

    int insertSelective(Dpjy record);

    List<Dpjy> selectByExample(DpjyExample example);
		
    Dpjy selectByPrimaryKey(String id);
		
    int updateByExampleSelective(@Param("record") Dpjy record, @Param("example") DpjyExample example);

    int updateByExample(@Param("record") Dpjy record, @Param("example") DpjyExample example); 
		
    int updateByPrimaryKeySelective(Dpjy record);

    int updateByPrimaryKey(Dpjy record);
  	  	
}