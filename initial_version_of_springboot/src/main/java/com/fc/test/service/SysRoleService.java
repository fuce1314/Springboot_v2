package com.fc.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fc.test.common.base.BaseService;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.TsysRoleMapper;
import com.fc.test.mapper.custom.RoleDao;
import com.fc.test.model.auto.TsysRole;
import com.fc.test.model.auto.TsysRoleExample;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.util.SnowflakeIdWorker;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class SysRoleService implements BaseService<TsysRole, TsysRoleExample> {
	@Autowired
	private TsysRoleMapper tsysRoleMapper;//角色mapper
	@Autowired
	private RoleDao roleDao;//自定义角色dao
	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<TsysRole> list(Tablepar tablepar,String searchTxt){
	        TsysRoleExample testExample=new TsysRoleExample();
	        testExample.setOrderByClause("id ASC");
	        if(searchTxt!=null&&!"".equals(searchTxt)){
	        	testExample.createCriteria().andNameLike("%"+searchTxt+"%");
	        }

	        PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
	        List<TsysRole> list= tsysRoleMapper.selectByExample(testExample);
	        PageInfo<TsysRole> pageInfo = new PageInfo<TsysRole>(list);
	        return  pageInfo;
	 }
	 
	 /**
	  * 查询全部角色集合
	  * @return
	  */
	 public List<TsysRole> queryList(){
		 TsysRoleExample tsysRoleExample=new TsysRoleExample();
		 return tsysRoleMapper.selectByExample(tsysRoleExample);
	 }

	
	@Override
	public int deleteByPrimaryKey(String ids) {
		List<String> lista=Convert.toListStrArray(ids);
		TsysRoleExample example=new TsysRoleExample();
		example.createCriteria().andIdIn(lista);
		return tsysRoleMapper.deleteByExample(example);
	}


	
	@Override
	public int insertSelective(TsysRole record) {
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		return tsysRoleMapper.insertSelective(record);
	}

	@Override
	public TsysRole selectByPrimaryKey(String id) {
		
		return tsysRoleMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(TsysRole record) {
		return tsysRoleMapper.updateByPrimaryKeySelective(record);
	}

	
	@Override
	public int updateByExampleSelective(TsysRole record, TsysRoleExample example) {
		
		return tsysRoleMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(TsysRole record, TsysRoleExample example) {
		
		return tsysRoleMapper.updateByExample(record, example);
	}

	@Override
	public List<TsysRole> selectByExample(TsysRoleExample example) {
		
		return tsysRoleMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(TsysRoleExample example) {
		
		return tsysRoleMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(TsysRoleExample example) {
		
		return tsysRoleMapper.deleteByExample(example);
	}
	
	/**
	 * 检查角色name
	 * @param tsysUser
	 * @return
	 */
	public int checkNameUnique(TsysRole tsysRole){
		TsysRoleExample example=new TsysRoleExample();
		example.createCriteria().andNameEqualTo(tsysRole.getName());
		List<TsysRole> list=tsysRoleMapper.selectByExample(example);
		return list.size();
	}
	
	
	/**
	 * 根据用户id查询角色
	 * @param userid
	 * @return
	 */
	public List<TsysRole> queryUserRole(String userid){
		return roleDao.queryUserRole(userid);
	}
	
}
