package com.fc.v2.service;

import cn.hutool.core.util.StrUtil;
import com.fc.v2.common.base.BaseService;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.SysDepartmentMapper;
import com.fc.v2.model.auto.SysDepartment;
import com.fc.v2.model.auto.SysDepartmentExample;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.StringUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

/**
 * 部门表 SysDepartmentService
 * 
 * @Title: SysDepartmentService.java
 * @Package com.fc.v2.service
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
		PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
		List<SysDepartment> list = sysDepartmentMapper.selectByExample(testExample);
		PageInfo<SysDepartment> pageInfo = new PageInfo<SysDepartment>(list);
		return pageInfo;
	}

	@Override
	public int deleteByPrimaryKey(String ids) {

		Integer[] integers = ConvertUtil.toIntArray(",", ids);
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
	 * 修改权限状态展示或者不展示
	 * @param record
	 * @return
	 */
	public int updateVisible(SysDepartment record) {
		return sysDepartmentMapper.updateByPrimaryKeySelective(record);
	}
	
}
