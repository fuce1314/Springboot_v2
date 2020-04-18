package com.fc.test.service;

import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import cn.hutool.core.util.StrUtil;
import com.fc.test.common.base.BaseService;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.SysDepartmentMapper;
import com.fc.test.model.auto.SysDepartment;
import com.fc.test.model.auto.SysDepartmentExample;
import com.fc.test.model.auto.TsysPermission;
import com.fc.test.model.auto.TsysPermissionExample;
import com.fc.test.model.custom.BootstrapTree;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.util.StringUtils;

/**
 * 部门表 SysDepartmentService
 * 
 * @Title: SysDepartmentService.java 
 * @Package com.fc.test.service 
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2020-04-17 13:12:58  
 **/
@Service
public class SysDepartmentService implements BaseService<SysDepartment, SysDepartmentExample> {
	@Autowired
	private SysDepartmentMapper sysDepartmentMapper;

	/**
	 * 分页查询
	 * 
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	public PageInfo<SysDepartment> list(Tablepar tablepar, String name) {
		SysDepartmentExample testExample = new SysDepartmentExample();
		testExample.setOrderByClause("id ASC");
		if (name != null && !"".equals(name)) {
			testExample.createCriteria().andDeptNameLike("%" + name + "%");
		}
		if (StrUtil.isNotEmpty(tablepar.getOrderByColumn())) {
			testExample.setOrderByClause(
					StringUtils.toUnderScoreCase(tablepar.getOrderByColumn()) + " " + tablepar.getIsAsc());
		}
		PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
		List<SysDepartment> list = sysDepartmentMapper.selectByExample(testExample);
		PageInfo<SysDepartment> pageInfo = new PageInfo<SysDepartment>(list);
		return pageInfo;
	}

	public List<SysDepartment> list2(String searchText) {
		SysDepartmentExample testExample = new SysDepartmentExample();
		testExample.setOrderByClause("order_num  is null  ASC,order_num  ASC");
		if (searchText != null && !"".equals(searchText)) {
			testExample.createCriteria().andDeptNameLike("%" + searchText + "%");
		}
		List<SysDepartment> list = sysDepartmentMapper.selectByExample(testExample);
		return list;
	}

	@Override
	public int deleteByPrimaryKey(String ids) {

		Integer[] integers = Convert.toIntArray(",", ids);
		List<Integer> stringB = Arrays.asList(integers);
		SysDepartmentExample example = new SysDepartmentExample();
		example.createCriteria().andIdIn(stringB);
		return sysDepartmentMapper.deleteByExample(example);

	}

	@Override
	public SysDepartment selectByPrimaryKey(String id) {

		Integer id1 = Integer.valueOf(id);
		return sysDepartmentMapper.selectByPrimaryKey(id1);

	}

	@Override
	public int updateByPrimaryKeySelective(SysDepartment record) {
		return sysDepartmentMapper.updateByPrimaryKeySelective(record);
	}

	/**
	 * 添加
	 */
	@Override
	public int insertSelective(SysDepartment record) {

		record.setId(null);

		return sysDepartmentMapper.insertSelective(record);
	}

	@Override
	public int updateByExampleSelective(SysDepartment record, SysDepartmentExample example) {

		return sysDepartmentMapper.updateByExampleSelective(record, example);
	}

	@Override
	public int updateByExample(SysDepartment record, SysDepartmentExample example) {

		return sysDepartmentMapper.updateByExample(record, example);
	}

	@Override
	public List<SysDepartment> selectByExample(SysDepartmentExample example) {

		return sysDepartmentMapper.selectByExample(example);
	}

	@Override
	public long countByExample(SysDepartmentExample example) {

		return sysDepartmentMapper.countByExample(example);
	}

	@Override
	public int deleteByExample(SysDepartmentExample example) {

		return sysDepartmentMapper.deleteByExample(example);
	}

	/**
	 * 检查name
	 * 
	 * @param sysDepartment
	 * @return
	 */
	public int checkNameUnique(SysDepartment sysDepartment) {
		SysDepartmentExample example = new SysDepartmentExample();
		example.createCriteria().andDeptNameEqualTo(sysDepartment.getDeptName());
		List<SysDepartment> list = sysDepartmentMapper.selectByExample(example);
		return list.size();
	}
	
	
	
	/**
	 * 获取树
	 * @param menuList
	 * @param parentId
	 * @return
	 */
	private static List<BootstrapTree> getbooBootstrapTreePerm(List<SysDepartment> menuList, String parentId){
		List<BootstrapTree> treeList = new ArrayList<>();
		List<BootstrapTree> childList = null;
		for(SysDepartment p : menuList) {
			p.setParentId(p.getParentId()==null||p.getParentId().trim().equals("")? "0":p.getParentId());
			if(p.getParentId().trim().equals(parentId)) {
				if(p.getChildCount()!=null&&p.getChildCount()>0) {
					childList = getbooBootstrapTreePerm(menuList, String.valueOf(p.getId()));
				}
				BootstrapTree bootstrapTree = new BootstrapTree(p.getDeptName(), "", "", String.valueOf(p.getId()), "",0,childList,p.getDeptName(),p.getStatus());
				treeList.add(bootstrapTree);
				childList = null;
			}
		}
		return treeList.size() >0 ? treeList : null;
	}
	
	/**
	 * 获取转换成bootstarp的权限数据
	 * @return
	 */
	public BootstrapTree getbooBootstrapTreePerm(){
		List<BootstrapTree> treeList = new ArrayList<BootstrapTree>();
		List<SysDepartment> menuList =  getall();
		treeList = getbooBootstrapTreePerm(menuList,"0");
		if(treeList!=null&&treeList.size()==1) {
			return treeList.get(0);
		}
		return new BootstrapTree("菜单", "fa fa-home", "", "-1","###",0,treeList,"",0);
	}
	
	
	/**
	 * 根据用户id获取用户角色如果用户为null 获取所有权限
	 * @return
	 */
	public List<SysDepartment> getall(){
		SysDepartmentExample example = new SysDepartmentExample();
		example.setOrderByClause("order_num asc");
		return  sysDepartmentMapper.selectByExample(example);
		
	}
	
}
