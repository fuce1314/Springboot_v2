package com.fc.test.service;

import java.util.List;
import org.quartz.SchedulerException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.fc.test.common.base.BaseService;
import com.fc.test.common.quartz.QuartzSchedulerUtil;
import com.fc.test.common.quartz.ScheduleConstants;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.SysQuartzJobMapper;
import com.fc.test.model.auto.SysQuartzJob;
import com.fc.test.model.auto.SysQuartzJobExample;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.util.SnowflakeIdWorker;

/**
 * 定时任务调度表 SysQuartzJobService
 * @Title: SysQuartzJobService.java 
 * @Package com.fc.test.service 
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2019-09-13 00:03:35  
 **/
@Service
public class SysQuartzJobService implements BaseService<SysQuartzJob, SysQuartzJobExample>{
	@Autowired
	private SysQuartzJobMapper sysQuartzJobMapper;
	@Autowired
	private QuartzSchedulerUtil scheduler;
      	   	      	      	      	      	      	      	      	      	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<SysQuartzJob> list(Tablepar tablepar,String name){
	        SysQuartzJobExample testExample=new SysQuartzJobExample();
	        testExample.setOrderByClause("id ASC");
	        if(name!=null&&!"".equals(name)){
	        	testExample.createCriteria().andJobNameLike("%"+name+"%");
	        }

	        PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
	        List<SysQuartzJob> list= sysQuartzJobMapper.selectByExample(testExample);
	        PageInfo<SysQuartzJob> pageInfo = new PageInfo<SysQuartzJob>(list);
	        return  pageInfo;
	 }

	@Override
	public int deleteByPrimaryKey(String ids) {
		List<String> lista=Convert.toListStrArray(ids);
		SysQuartzJobExample example=new SysQuartzJobExample();
		example.createCriteria().andIdIn(lista);
		return sysQuartzJobMapper.deleteByExample(example);
	}
	
	
	@Override
	public SysQuartzJob selectByPrimaryKey(String id) {
		
		return sysQuartzJobMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(SysQuartzJob record) {
		return sysQuartzJobMapper.updateByPrimaryKeySelective(record);
	}
	
	/**
	 * 添加
	 */
	@Override
	public int insertSelective(SysQuartzJob record) {
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		return sysQuartzJobMapper.insertSelective(record);
	}
	
	
	@Override
	public int updateByExampleSelective(SysQuartzJob record, SysQuartzJobExample example) {
		
		return sysQuartzJobMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(SysQuartzJob record, SysQuartzJobExample example) {
		
		return sysQuartzJobMapper.updateByExample(record, example);
	}

	@Override
	public List<SysQuartzJob> selectByExample(SysQuartzJobExample example) {
		
		return sysQuartzJobMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(SysQuartzJobExample example) {
		
		return sysQuartzJobMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(SysQuartzJobExample example) {
		
		return sysQuartzJobMapper.deleteByExample(example);
	}
	
	/**
	 * 检查name
	 * @param sysQuartzJob
	 * @return
	 */
	public int checkNameUnique(SysQuartzJob sysQuartzJob){
		SysQuartzJobExample example=new SysQuartzJobExample();
		example.createCriteria().andJobNameEqualTo(sysQuartzJob.getJobName());
		List<SysQuartzJob> list=sysQuartzJobMapper.selectByExample(example);
		return list.size();
	}
	
	
	/**
     * 恢复任务
     * 
     * @param job 调度信息
     */
    @Transactional
    public int resumeJob(SysQuartzJob job) throws SchedulerException
    {
        job.setStatus(ScheduleConstants.Status.NORMAL.getValue());
        int rows = sysQuartzJobMapper.updateByPrimaryKeySelective(job);
        if (rows > 0)
        {
        	scheduler.resumeJob(job);
        }
        return rows;
    }
    
    
    /**
     * 暂停任务
     * 
     * @param job 调度信息
     */
    @Transactional
    public int pauseJob(SysQuartzJob job) throws SchedulerException
    {
        job.setStatus(ScheduleConstants.Status.PAUSE.getValue());
        //job.setUpdateBy(ShiroUtils.getLoginName());
        int rows = sysQuartzJobMapper.updateByPrimaryKeySelective(job);
        if (rows > 0)
        {
        	scheduler.pauseJob(job);
        }
        return rows;
    }
    
    /**
     * 任务调度状态修改
     * 
     * @param job 调度信息
     */
    @Transactional
    public int changeStatus(SysQuartzJob job) throws SchedulerException
    {
        int rows = 0;
        Integer status = job.getStatus();
        if (ScheduleConstants.Status.NORMAL.getValue().equals(status))
        {
            rows = resumeJob(job);
        }
        else if (ScheduleConstants.Status.PAUSE.getValue().equals(status))
        {
            rows = pauseJob(job);
        }
        return rows;
    }
    
    
    /**
     * 立即运行任务
     * 
     * @param job 调度信息
     */
    @Transactional
    public void run(SysQuartzJob job) throws SchedulerException
    {
    	
    	scheduler.run(job);
    	
    }


}
