package com.fc.test.service;

import java.util.Date;
import java.util.List;

import com.fc.test.shiro.util.ShiroUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.fc.test.common.base.BaseService;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.TSysDictTypeMapper;
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
	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<TSysDictType> list(Tablepar tablepar,String name){
	        TSysDictTypeExample testExample=new TSysDictTypeExample();
	        testExample.setOrderByClause("id ASC");
	        if(name!=null&&!"".equals(name)){
	        	testExample.createCriteria().andDictNameLike("%"+name+"%");
	        }

	        PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
	        List<TSysDictType> list= tSysDictTypeMapper.selectByExample(testExample);
	        PageInfo<TSysDictType> pageInfo = new PageInfo<TSysDictType>(list);
	        return  pageInfo;
	 }

	@Override
	public int deleteByPrimaryKey(String ids) {
		List<String> lista=Convert.toListStrArray(ids);
		TSysDictTypeExample example=new TSysDictTypeExample();
		example.createCriteria().andIdIn(lista);
		return tSysDictTypeMapper.deleteByExample(example);
	}
	
	
	@Override
	public TSysDictType selectByPrimaryKey(String id) {
		
		return tSysDictTypeMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(TSysDictType record) {
		record.setUpdateTime(new Date());
		record.setUpdateBy(ShiroUtils.getUser().getNickname());
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
		record.setCreateBy(ShiroUtils.getUser().getNickname());

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

	/**
	 * 查询dict_id 集合
	 * @param idsArray
	 * @return
	 */
    public List<String> selectByIds(List<String> idsList) {
		return tSysDictTypeMapper.selectByPrimaryDictId(idsList);
    }
}
