package com.fc.test.mapper.auto;

import com.fc.test.model.auto.TsysRole;
import com.fc.test.model.auto.TsysRoleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TsysRoleMapper {
    long countByExample(TsysRoleExample example);

    int deleteByExample(TsysRoleExample example);

    int insert(TsysRole record);

    int insertSelective(TsysRole record);

    List<TsysRole> selectByExample(TsysRoleExample example);

    int updateByExampleSelective(@Param("record") TsysRole record, @Param("example") TsysRoleExample example);

    int updateByExample(@Param("record") TsysRole record, @Param("example") TsysRoleExample example);
}