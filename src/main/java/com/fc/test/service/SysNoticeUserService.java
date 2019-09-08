package com.fc.test.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.fc.test.common.base.BaseService;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.SysNoticeUserMapper;
import com.fc.test.model.auto.SysNoticeUser;
import com.fc.test.model.auto.SysNoticeUserExample;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.util.SnowflakeIdWorker;

/**
 * 公告_用户外键 SysNoticeUserService
 * @Title: SysNoticeUserService.java 
 * @Package com.fc.test.service 
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2019-09-08 02:12:54  
 **/
@Service
public class SysNoticeUserService implements BaseService<SysNoticeUser, SysNoticeUserExample>{
	@Autowired
	private SysNoticeUserMapper sysNoticeUserMapper;
	   	   	      	      	      	      	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<SysNoticeUser> list(Tablepar tablepar,String name){
	        SysNoticeUserExample testExample=new SysNoticeUserExample();
	        testExample.setOrderByClause("id ASC");
	        if(name!=null&&!"".equals(name)){
	        	testExample.createCriteria().andUserIdLike("%"+name+"%");
	        }

	        PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
	        List<SysNoticeUser> list= sysNoticeUserMapper.selectByExample(testExample);
	        PageInfo<SysNoticeUser> pageInfo = new PageInfo<SysNoticeUser>(list);
	        return  pageInfo;
	 }

	@Override
	public int deleteByPrimaryKey(String ids) {
		List<String> lista=Convert.toListStrArray(ids);
		SysNoticeUserExample example=new SysNoticeUserExample();
		example.createCriteria().andIdIn(lista);
		return sysNoticeUserMapper.deleteByExample(example);
	}
	
	
	@Override
	public SysNoticeUser selectByPrimaryKey(String id) {
		
		return sysNoticeUserMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(SysNoticeUser record) {
		return sysNoticeUserMapper.updateByPrimaryKeySelective(record);
	}
	
	/**
	 * 添加
	 */
	@Override
	public int insertSelective(SysNoticeUser record) {
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		return sysNoticeUserMapper.insertSelective(record);
	}
	
	
	@Override
	public int updateByExampleSelective(SysNoticeUser record, SysNoticeUserExample example) {
		
		return sysNoticeUserMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(SysNoticeUser record, SysNoticeUserExample example) {
		
		return sysNoticeUserMapper.updateByExample(record, example);
	}

	@Override
	public List<SysNoticeUser> selectByExample(SysNoticeUserExample example) {
		
		return sysNoticeUserMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(SysNoticeUserExample example) {
		
		return sysNoticeUserMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(SysNoticeUserExample example) {
		
		return sysNoticeUserMapper.deleteByExample(example);
	}
	
	/**
	 * 检查name
	 * @param sysNoticeUser
	 * @return
	 */
	public int checkNameUnique(SysNoticeUser sysNoticeUser){
		SysNoticeUserExample example=new SysNoticeUserExample();
		example.createCriteria().andUserIdEqualTo(sysNoticeUser.getUserId());
		List<SysNoticeUser> list=sysNoticeUserMapper.selectByExample(example);
		return list.size();
	}
	
}
