package com.fc.v2.service;

import com.fc.v2.common.base.BaseService;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.SysQuartzJobLogMapper;
import com.fc.v2.model.auto.SysQuartzJobLog;
import com.fc.v2.model.auto.SysQuartzJobLogExample;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.SnowflakeIdWorker;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 定时任务调度日志表 SysQuartzJobLogService
 * @Title: SysQuartzJobLogService.java
 * @Package com.fc.v2.service
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2019-09-13 00:03:42
 **/
@Service
public class SysQuartzJobLogService implements BaseService<SysQuartzJobLog, SysQuartzJobLogExample>{
	@Autowired
	private SysQuartzJobLogMapper sysQuartzJobLogMapper;
	
      	   	      	      	      	      	      	      	      	      	      	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<SysQuartzJobLog> list(Tablepar tablepar,String name){
	        SysQuartzJobLogExample testExample=new SysQuartzJobLogExample();
	        testExample.setOrderByClause("id DESC");
	        if(name!=null&&!"".equals(name)){
	        	testExample.createCriteria().andJobNameLike("%"+name+"%");
	        }

	        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
	        List<SysQuartzJobLog> list= sysQuartzJobLogMapper.selectByExample(testExample);
	        PageInfo<SysQuartzJobLog> pageInfo = new PageInfo<SysQuartzJobLog>(list);
	        return  pageInfo;
	 }

	@Override
	public int deleteByPrimaryKey(String ids) {
		List<String> lista=ConvertUtil.toListStrArray(ids);
		SysQuartzJobLogExample example=new SysQuartzJobLogExample();
		example.createCriteria().andIdIn(lista);
		return sysQuartzJobLogMapper.deleteByExample(example);
	}
	
	
	@Override
	public SysQuartzJobLog selectByPrimaryKey(String id) {
		
		return sysQuartzJobLogMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(SysQuartzJobLog record) {
		return sysQuartzJobLogMapper.updateByPrimaryKeySelective(record);
	}
	
	/**
	 * 添加
	 */
	@Override
	public int insertSelective(SysQuartzJobLog record) {
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		return sysQuartzJobLogMapper.insertSelective(record);
	}
	
	
	@Override
	public int updateByExampleSelective(SysQuartzJobLog record, SysQuartzJobLogExample example) {
		
		return sysQuartzJobLogMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(SysQuartzJobLog record, SysQuartzJobLogExample example) {
		
		return sysQuartzJobLogMapper.updateByExample(record, example);
	}

	@Override
	public List<SysQuartzJobLog> selectByExample(SysQuartzJobLogExample example) {
		
		return sysQuartzJobLogMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(SysQuartzJobLogExample example) {
		
		return sysQuartzJobLogMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(SysQuartzJobLogExample example) {
		
		return sysQuartzJobLogMapper.deleteByExample(example);
	}
	
	/**
	 * 检查name
	 * @param sysQuartzJobLog
	 * @return
	 */
	public int checkNameUnique(SysQuartzJobLog sysQuartzJobLog){
		SysQuartzJobLogExample example=new SysQuartzJobLogExample();
		example.createCriteria().andJobNameEqualTo(sysQuartzJobLog.getJobName());
		List<SysQuartzJobLog> list=sysQuartzJobLogMapper.selectByExample(example);
		return list.size();
	}


}
