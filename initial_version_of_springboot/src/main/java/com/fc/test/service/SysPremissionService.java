package com.fc.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fc.test.common.base.BaseService;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.TsysPremissionMapper;
import com.fc.test.model.auto.TsysPremission;
import com.fc.test.model.auto.TsysPremissionExample;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.util.SnowflakeIdWorker;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class SysPremissionService implements BaseService<TsysPremission, TsysPremissionExample>{
	@Autowired
	private TsysPremissionMapper tsysPremissionMapper;//角色mapper
	
	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<TsysPremission> list(Tablepar tablepar,String searchTxt){
	        TsysPremissionExample testExample=new TsysPremissionExample();
	        testExample.setOrderByClause("id+0 ASC");
	        if(searchTxt!=null&&!"".equals(searchTxt)){
	        	testExample.createCriteria().andNameLike("%"+searchTxt+"%");
	        }

	        PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
	        List<TsysPremission> list= tsysPremissionMapper.selectByExample(testExample);
	        PageInfo<TsysPremission> pageInfo = new PageInfo<TsysPremission>(list);
	        return  pageInfo;
	 }

	
	@Override
	public int deleteByPrimaryKey(String ids) {
		List<String> lista=Convert.toListStrArray(ids);
		TsysPremissionExample example=new TsysPremissionExample();
		example.createCriteria().andIdIn(lista);
		return tsysPremissionMapper.deleteByExample(example);
	}


	
	@Override
	public int insertSelective(TsysPremission record) {
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		return tsysPremissionMapper.insertSelective(record);
	}

	@Override
	public TsysPremission selectByPrimaryKey(String id) {
		
		return tsysPremissionMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(TsysPremission record) {
		return tsysPremissionMapper.updateByPrimaryKeySelective(record);
	}

	
	@Override
	public int updateByExampleSelective(TsysPremission record, TsysPremissionExample example) {
		
		return tsysPremissionMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(TsysPremission record, TsysPremissionExample example) {
		
		return tsysPremissionMapper.updateByExample(record, example);
	}

	@Override
	public List<TsysPremission> selectByExample(TsysPremissionExample example) {
		
		return tsysPremissionMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(TsysPremissionExample example) {
		
		return tsysPremissionMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(TsysPremissionExample example) {
		
		return tsysPremissionMapper.deleteByExample(example);
	}
	
	/**
	 * 检查权限名字
	 * @param tsysUser
	 * @return
	 */
	public int checkNameUnique(TsysPremission tsysPremission){
		TsysPremissionExample example=new TsysPremissionExample();
		example.createCriteria().andNameEqualTo(tsysPremission.getName());
		List<TsysPremission> list=tsysPremissionMapper.selectByExample(example);
		return list.size();
	}

	/**
	 * 检查权限URL
	 * @param tsysUser
	 * @return
	 */
	public int checkURLUnique(TsysPremission tsysPremission){
		TsysPremissionExample example=new TsysPremissionExample();
		example.createCriteria().andUrlEqualTo(tsysPremission.getUrl());
		List<TsysPremission> list=tsysPremissionMapper.selectByExample(example);
		return list.size();
	}

	/**
	 * 检查权限perms字段
	 * @param tsysUser
	 * @return
	 */
	public int checkPermsUnique(TsysPremission tsysPremission){
		TsysPremissionExample example=new TsysPremissionExample();
		example.createCriteria().andPermsEqualTo(tsysPremission.getPerms());
		List<TsysPremission> list=tsysPremissionMapper.selectByExample(example);
		return list.size();
	}
}
