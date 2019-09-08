package com.fc.test.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.fc.test.shiro.util.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.fc.test.common.base.BaseService;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.TSysDictDataMapper;
import com.fc.test.mapper.auto.TSysDictTypeMapper;
import com.fc.test.model.auto.TSysDictDataExample;
import com.fc.test.model.auto.TSysDictType;
import com.fc.test.model.auto.TSysDictTypeExample;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.util.SnowflakeIdWorker;

/**
 * 字典类型表Service
* @Title: TSysDictTypeService.java 
* @Package com.fc.test.service 
* @author 一休
* @email 438081243@qq.com
* @date 2019-09-05 12:34:25  
 */
@Service
public class SysDictTypeService implements BaseService<TSysDictType, TSysDictTypeExample>{
	@Autowired
	private TSysDictTypeMapper tSysDictTypeMapper;
	@Autowired
	private TSysDictDataMapper tSysDictDataMapper;
	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<TSysDictType> list(Tablepar tablepar,String name){
	        TSysDictTypeExample testExample=new TSysDictTypeExample();
	        testExample.setOrderByClause("id+0 desc");
	        if(name!=null&&!"".equals(name)){
	        	testExample.createCriteria().andDictNameLike("%"+name+"%");
	        }

	        PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
	        List<TSysDictType> list= tSysDictTypeMapper.selectByExample(testExample);
	        PageInfo<TSysDictType> pageInfo = new PageInfo<TSysDictType>(list);
	        return  pageInfo;
	 }

	@Override
	@Transactional
	public int deleteByPrimaryKey(String ids) {
		//查询type数据得data中DictType有哪些
		List<String> lista=Convert.toListStrArray(ids);
		TSysDictTypeExample example=new TSysDictTypeExample();
		example.createCriteria().andIdIn(lista);
		List<TSysDictType> dictTypes=tSysDictTypeMapper.selectByExample(example);
		//在删除type下面得data数据
		List<String> datatypes=new ArrayList<String>();
		for (TSysDictType tSysDictType : dictTypes) {
			
			datatypes.add(tSysDictType.getDictType());
		}
		TSysDictDataExample  dictDataExample=new TSysDictDataExample();
		dictDataExample.createCriteria().andDictTypeIn(datatypes);
		tSysDictDataMapper.deleteByExample(dictDataExample);
		//在删除type数据
		tSysDictTypeMapper.deleteByExample(example);
		return 1;
	}
	
	
	@Override
	public TSysDictType selectByPrimaryKey(String id) {
		
		return tSysDictTypeMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(TSysDictType record) {
		record.setUpdateTime(new Date());
		record.setUpdateBy(ShiroUtils.getUser().getUsername());
		return tSysDictTypeMapper.updateByPrimaryKeySelective(record);
	}
	
	/**
	 * 添加
	 */
	@Override
	public int insertSelective(TSysDictType record) {
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		record.setCreateTime(new Date());
		record.setUpdateTime(new Date());
		record.setCreateBy(ShiroUtils.getUser().getUsername());

		return tSysDictTypeMapper.insertSelective(record);
	}

	
	@Override
	public int updateByExampleSelective(TSysDictType record, TSysDictTypeExample example) {
		
		return tSysDictTypeMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(TSysDictType record, TSysDictTypeExample example) {
		
		return tSysDictTypeMapper.updateByExample(record, example);
	}

	@Override
	public List<TSysDictType> selectByExample(TSysDictTypeExample example) {
		
		return tSysDictTypeMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(TSysDictTypeExample example) {
		
		return tSysDictTypeMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(TSysDictTypeExample example) {
		
		return tSysDictTypeMapper.deleteByExample(example);
	}

	/**
	 * 检查name
	 * @param TSysDictType
	 * @return
	 */
	public int checkNameUnique(TSysDictType tSysDictType){
		TSysDictTypeExample example=new TSysDictTypeExample();
		example.createCriteria().andDictNameEqualTo(tSysDictType.getDictName());
		List<TSysDictType> list=tSysDictTypeMapper.selectByExample(example);
		return list.size();
	}
}
