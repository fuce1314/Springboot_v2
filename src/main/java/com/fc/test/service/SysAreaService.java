package com.fc.test.service;

import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.SysAreaMapper;
import com.fc.test.model.auto.SysArea;
import com.fc.test.model.auto.SysAreaExample;
import com.fc.test.model.custom.Tablepar;

/**
 * 地区设置 SysAreaService
 * @Title: SysAreaService.java 
 * @Package com.fc.test.service 
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2019-10-04 21:47:38  
 **/
@Service
public class SysAreaService {
	@Autowired
	private SysAreaMapper sysAreaMapper;
	
      	   	      	      	      	      	      	      	      	      	      	      	      	      	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<SysArea> list(Tablepar tablepar,String name){
		
	        SysAreaExample testExample=new SysAreaExample();
	        testExample.setOrderByClause("id ASC");
	        if(name!=null&&!"".equals(name)){
	        	testExample.createCriteria().andAreaNameLike("%"+name+"%");
	        }
	        PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
	        List<SysArea> list= sysAreaMapper.selectByExample(testExample);
	        PageInfo<SysArea> pageInfo = new PageInfo<SysArea>(list);
	       
	        return  pageInfo;
	 }

	
	public int deleteByPrimaryKey(String ids) {
		Integer[] integers = Convert.toIntArray(",", ids);
		List<Integer> stringB = Arrays.asList(integers);
		SysAreaExample example=new SysAreaExample();
		example.createCriteria().andIdIn(stringB);
		return sysAreaMapper.deleteByExample(example);
	}
	
	
	
	public SysArea selectByPrimaryKey(Integer id) {
		
		return sysAreaMapper.selectByPrimaryKey(id);
	}

	
	
	public int updateByPrimaryKeySelective(SysArea record) {
		return sysAreaMapper.updateByPrimaryKeySelective(record);
	}
	
	/**
	 * 添加
	 */
	
	public int insertSelective(SysArea record) {
		//添加雪花主键id
		record.setId(null);
		return sysAreaMapper.insertSelective(record);
	}
	
	
	
	public int updateByExampleSelective(SysArea record, SysAreaExample example) {
		
		return sysAreaMapper.updateByExampleSelective(record, example);
	}

	
	
	public int updateByExample(SysArea record, SysAreaExample example) {
		
		return sysAreaMapper.updateByExample(record, example);
	}

	
	public List<SysArea> selectByExample(SysAreaExample example) {
		
		return sysAreaMapper.selectByExample(example);
	}

	
	
	public long countByExample(SysAreaExample example) {
		
		return sysAreaMapper.countByExample(example);
	}

	
	
	public int deleteByExample(SysAreaExample example) {
		
		return sysAreaMapper.deleteByExample(example);
	}
	
	/**
	 * 检查name
	 * @param sysArea
	 * @return
	 */
	public int checkNameUnique(SysArea sysArea){
		SysAreaExample example=new SysAreaExample();
		example.createCriteria().andAreaNameEqualTo(sysArea.getAreaName());
		List<SysArea> list=sysAreaMapper.selectByExample(example);
		return list.size();
	}


}
