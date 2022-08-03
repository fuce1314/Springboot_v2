package com.fc.v2.service;

import java.util.List;
import java.util.Arrays;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import cn.hutool.core.util.StrUtil;
import com.fc.v2.common.base.BaseService;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.CpghMapper;
import com.fc.v2.model.auto.Cpgh;
import com.fc.v2.model.auto.CpghExample;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.SnowflakeIdWorker;
import com.fc.v2.util.StringUtils;

/**
 * 磁盘柜号 CpghService
 * @Title: CpghService.java 
 * @Package com.fc.v2.service 
 * @author fuce_自动生成
 * @email ${email}
 * @date 2022-03-06 15:13:41  
 **/
@Service
public class CpghService implements BaseService<Cpgh, CpghExample>{
	@Autowired
	private CpghMapper cpghMapper;
	
      	   	      	      	      	      	      	      	      	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<Cpgh> list(Tablepar tablepar,Cpgh cpgh){
	        CpghExample testExample=new CpghExample();
			//搜索
			if(StrUtil.isNotEmpty(tablepar.getSearchText())) {//小窗体
	        	testExample.createCriteria().andLikeQuery2(tablepar.getSearchText());
	        }else {//大搜索
	        	testExample.createCriteria().andLikeQuery(cpgh);
	        }
			//表格排序
			//if(StrUtil.isNotEmpty(tablepar.getOrderByColumn())) {
	        //	testExample.setOrderByClause(StringUtils.toUnderScoreCase(tablepar.getOrderByColumn()) +" "+tablepar.getIsAsc());
	        //}else{
	        //	testExample.setOrderByClause("id ASC");
	        //}
	        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
	        List<Cpgh> list= cpghMapper.selectByExample(testExample);
	        PageInfo<Cpgh> pageInfo = new PageInfo<Cpgh>(list);
	        return  pageInfo;
	 }

	@Override
	public int deleteByPrimaryKey(String ids) {
				
			List<String> lista=ConvertUtil.toListStrArray(ids);
			CpghExample example=new CpghExample();
			example.createCriteria().andIdIn(lista);
			return cpghMapper.deleteByExample(example);
			
				
	}
	
	
	@Override
	public Cpgh selectByPrimaryKey(String id) {
				
			return cpghMapper.selectByPrimaryKey(id);
				
	}

	
	@Override
	public int updateByPrimaryKeySelective(Cpgh record) {
		return cpghMapper.updateByPrimaryKeySelective(record);
	}
	
	
	/**
	 * 添加
	 */
	@Override
	public int insertSelective(Cpgh record) {
				
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
			
				
		return cpghMapper.insertSelective(record);
	}
	
	
	@Override
	public int updateByExampleSelective(Cpgh record, CpghExample example) {
		
		return cpghMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(Cpgh record, CpghExample example) {
		
		return cpghMapper.updateByExample(record, example);
	}

	@Override
	public List<Cpgh> selectByExample(CpghExample example) {
		
		return cpghMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(CpghExample example) {
		
		return cpghMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(CpghExample example) {
		
		return cpghMapper.deleteByExample(example);
	}
	
	/**
	 * 修改权限状态展示或者不展示
	 * @param cpgh
	 * @return
	 */
	public int updateVisible(Cpgh cpgh) {
		return cpghMapper.updateByPrimaryKeySelective(cpgh);
	}


}
