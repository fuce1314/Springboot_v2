package com.fc.test.service;

import java.util.List;

import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fc.test.common.base.BaseService;
import com.fc.test.mapper.auto.TsysUserMapper;
import com.fc.test.model.auto.TsysUser;
import com.fc.test.model.auto.TsysUserExample;
import com.fc.test.util.MD5Util;
import com.fc.test.util.SnowflakeIdWorker;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 系统用户
 * @ClassName: SysUserService
 * @author fuce
 * @date 2018年8月26日
 *
 */
@Service
public class SysUserService implements BaseService<TsysUser, TsysUserExample>{
	@Autowired
	private TsysUserMapper tsysUserMapper;
	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<TsysUser> list(int pageNum, int pageSize){
	        TsysUserExample testExample=new TsysUserExample();
	        PageHelper.startPage(pageNum, pageSize);
	        List<TsysUser> list= tsysUserMapper.selectByExample(testExample);
	        PageInfo<TsysUser> pageInfo = new PageInfo<TsysUser>(list);
	        return  pageInfo;
	    }

	
	@Override
	public int deleteByPrimaryKey(String id) {
		
		return tsysUserMapper.deleteByPrimaryKey(id);
	}


	
	@Override
	public int insertSelective(TsysUser record) {
		record.setId(SnowflakeIdWorker.getUUID());
		//密码加密
		record.setPassword(MD5Util.encode(record.getPassword()));
		return tsysUserMapper.insertSelective(record);
	}

	
	public TsysUser selectByPrimaryKey(String id) {
		
		return tsysUserMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(TsysUser record) {
		
		return tsysUserMapper.updateByPrimaryKeySelective(record);
	}

	
	@Override
	public int updateByExampleSelective(TsysUser record, TsysUserExample example) {
		
		return tsysUserMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(TsysUser record, TsysUserExample example) {
		
		return tsysUserMapper.updateByExample(record, example);
	}

	
	public List<TsysUser> selectByExample(TsysUserExample example) {
		
		return tsysUserMapper.selectByExample(example);
	}

	
	
	public long countByExample(TsysUserExample example) {
		
		return tsysUserMapper.countByExample(example);
	}

	
	
	public int deleteByExample(TsysUserExample example) {
		
		return tsysUserMapper.deleteByExample(example);
	}
}
