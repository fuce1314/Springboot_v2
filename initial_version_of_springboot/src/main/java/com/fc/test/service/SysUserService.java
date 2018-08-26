package com.fc.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fc.test.mapper.auto.TsysUserMapper;
import com.fc.test.model.auto.Test;
import com.fc.test.model.auto.TestExample;
import com.fc.test.model.auto.TsysUser;
import com.fc.test.model.auto.TsysUserExample;
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
public class SysUserService {
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
}
