package com.fc.test.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fc.test.common.base.BaseService;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.TsysOperLogMapper;
import com.fc.test.model.auto.TsysOperLog;
import com.fc.test.model.auto.TsysOperLogExample;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.util.SnowflakeIdWorker;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class SysOperLogService implements BaseService<TsysOperLog, TsysOperLogExample>{
	
	//文件mapper
	@Autowired
	private TsysOperLogMapper tsysOperLogMapper;
	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<TsysOperLog> list(Tablepar tablepar,String searchText){
	        TsysOperLogExample testExample=new TsysOperLogExample();
	        testExample.setOrderByClause("id+0 DESC");
	        if(searchText!=null&&!"".equals(searchText)){
	        	testExample.createCriteria().andTitleLike("%"+searchText+"%");
	        }

	        PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
	        List<TsysOperLog> list= tsysOperLogMapper.selectByExample(testExample);
	        PageInfo<TsysOperLog> pageInfo = new PageInfo<TsysOperLog>(list);
	        return  pageInfo;
	 }

	
	@Override
	public int deleteByPrimaryKey(String ids) {
		List<String> lista=Convert.toListStrArray(ids);
		TsysOperLogExample example=new TsysOperLogExample();
		example.createCriteria().andIdIn(lista);
		return tsysOperLogMapper.deleteByExample(example);
	}


	
	


	@Override
	public TsysOperLog selectByPrimaryKey(String id) {
		
		return tsysOperLogMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(TsysOperLog record) {
		return tsysOperLogMapper.updateByPrimaryKeySelective(record);
	}
	


	
	@Override
	public int updateByExampleSelective(TsysOperLog record, TsysOperLogExample example) {
		
		return tsysOperLogMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(TsysOperLog record, TsysOperLogExample example) {
		
		return tsysOperLogMapper.updateByExample(record, example);
	}

	@Override
	public List<TsysOperLog> selectByExample(TsysOperLogExample example) {
		
		return tsysOperLogMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(TsysOperLogExample example) {
		
		return tsysOperLogMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(TsysOperLogExample example) {
		
		return tsysOperLogMapper.deleteByExample(example);
	}


	
	@Override
	public int insertSelective(TsysOperLog record) {
		record.setId(SnowflakeIdWorker.getUUID());
		return tsysOperLogMapper.insertSelective(record);
	}
	
}
