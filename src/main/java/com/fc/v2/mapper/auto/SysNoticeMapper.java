package com.fc.v2.mapper.auto;

import com.fc.v2.model.auto.SysNotice;
import com.fc.v2.model.auto.SysNoticeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 公告 SysNoticeMapper
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2019-09-08 01:38:44
 */
public interface SysNoticeMapper {
      	      	   	      	   	      	   	      	   	      	   	      	   	      
    long countByExample(SysNoticeExample example);

    int deleteByExample(SysNoticeExample example);
		
    int deleteByPrimaryKey(String id);
		
    int insert(SysNotice record);

    int insertSelective(SysNotice record);

    List<SysNotice> selectByExample(SysNoticeExample example);
		
    SysNotice selectByPrimaryKey(String id);
		
    int updateByExampleSelective(@Param("record") SysNotice record, @Param("example") SysNoticeExample example);

    int updateByExample(@Param("record") SysNotice record, @Param("example") SysNoticeExample example); 
		
    int updateByPrimaryKeySelective(SysNotice record);

    int updateByPrimaryKey(SysNotice record);
  	  	
}