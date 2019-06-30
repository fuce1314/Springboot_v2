package com.fc.test.service;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.fc.test.common.base.BaseService;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.TSysEmailMapper;
import com.fc.test.model.auto.TSysEmail;
import com.fc.test.model.auto.TSysEmailExample;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.shiro.util.ShiroUtils;
import com.fc.test.util.SnowflakeIdWorker;

/**
 * 电子邮件Service
* @Title: TSysEmailService.java 
* @Package com.fc.test.service 
* @author fuce
* @email 87766867@qq.com
* @date 2019-06-30 00:49:49  
 */
@Service
public class TSysEmailService implements BaseService<TSysEmail, TSysEmailExample>{
	@Autowired
	private TSysEmailMapper tSysEmailMapper;
	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<TSysEmail> list(Tablepar tablepar,String name){
	        TSysEmailExample testExample=new TSysEmailExample();
	        testExample.setOrderByClause("id desc");
	        if(name!=null&&!"".equals(name)){
	        	testExample.createCriteria().andContentLike("%"+name+"%");
	        }

	        PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
	        List<TSysEmail> list= tSysEmailMapper.selectByExample(testExample);
	        PageInfo<TSysEmail> pageInfo = new PageInfo<TSysEmail>(list);
	        return  pageInfo;
	 }

	@Override
	public int deleteByPrimaryKey(String ids) {
		List<String> lista=Convert.toListStrArray(ids);
		TSysEmailExample example=new TSysEmailExample();
		example.createCriteria().andIdIn(lista);
		return tSysEmailMapper.deleteByExample(example);
	}
	
	
	@Override
	public TSysEmail selectByPrimaryKey(String id) {
		
		return tSysEmailMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(TSysEmail record) {
		return tSysEmailMapper.updateByPrimaryKeySelective(record);
	}
	
	/**
	 * 添加
	 */
	@Override
	public int insertSelective(TSysEmail record) {
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		record.setSendUserId(ShiroUtils.getUserId());
		record.setSendUserName(ShiroUtils.getLoginName());
		record.setCreateTime(new Date());
		return tSysEmailMapper.insertSelective(record);
	}
	
	

	

	
	
	

	
	@Override
	public int updateByExampleSelective(TSysEmail record, TSysEmailExample example) {
		
		return tSysEmailMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(TSysEmail record, TSysEmailExample example) {
		
		return tSysEmailMapper.updateByExample(record, example);
	}

	@Override
	public List<TSysEmail> selectByExample(TSysEmailExample example) {
		
		return tSysEmailMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(TSysEmailExample example) {
		
		return tSysEmailMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(TSysEmailExample example) {
		
		return tSysEmailMapper.deleteByExample(example);
	}
	
	/**
	 * 检查name
	 * @param TSysEmail
	 * @return
	 */
	public int checkNameUnique(TSysEmail tSysEmail){
		TSysEmailExample example=new TSysEmailExample();
		example.createCriteria().andContentEqualTo(tSysEmail.getContent());
		List<TSysEmail> list=tSysEmailMapper.selectByExample(example);
		return list.size();
	}


}
