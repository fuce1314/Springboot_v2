package com.fc.test.mapper.auto;

import com.fc.test.model.auto.tSysRoleUser;
import com.fc.test.model.auto.tSysRoleUserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface tSysRoleUserMapper {
    long countByExample(tSysRoleUserExample example);

    int deleteByExample(tSysRoleUserExample example);

    int deleteByPrimaryKey(String id);

    int insert(tSysRoleUser record);

    int insertSelective(tSysRoleUser record);

    List<tSysRoleUser> selectByExample(tSysRoleUserExample example);

    tSysRoleUser selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") tSysRoleUser record, @Param("example") tSysRoleUserExample example);

    int updateByExample(@Param("record") tSysRoleUser record, @Param("example") tSysRoleUserExample example);

    int updateByPrimaryKeySelective(tSysRoleUser record);

    int updateByPrimaryKey(tSysRoleUser record);
}