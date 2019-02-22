package com.fc.test.mapper.auto;

import com.fc.test.model.auto.TsysFileData;
import com.fc.test.model.auto.TsysFileDataExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TsysFileDataMapper {
    int countByExample(TsysFileDataExample example);

    int deleteByExample(TsysFileDataExample example);

    int deleteByPrimaryKey(String id);

    int insert(TsysFileData record);

    int insertSelective(TsysFileData record);

    List<TsysFileData> selectByExample(TsysFileDataExample example);

    TsysFileData selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") TsysFileData record, @Param("example") TsysFileDataExample example);

    int updateByExample(@Param("record") TsysFileData record, @Param("example") TsysFileDataExample example);

    int updateByPrimaryKeySelective(TsysFileData record);

    int updateByPrimaryKey(TsysFileData record);
}