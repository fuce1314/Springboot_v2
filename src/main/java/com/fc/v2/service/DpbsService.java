package com.fc.v2.service;

import java.util.List;
import java.util.Arrays;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import cn.hutool.core.util.StrUtil;
import com.fc.v2.common.base.BaseService;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.DpbsMapper;
import com.fc.v2.model.auto.Dpbs;
import com.fc.v2.model.auto.DpbsExample;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.SnowflakeIdWorker;
import com.fc.v2.util.StringUtils;

/**
 * 定盘报损 DpbsService
 * @Title: DpbsService.java 
 * @Package com.fc.v2.service 
 * @author fuce_自动生成
 * @email ${email}
 * @date 2022-02-25 16:39:32  
 **/
@Service
public class DpbsService implements BaseService<Dpbs, DpbsExample>{
	@Autowired
	private DpbsMapper dpbsMapper;
	
      	   	      	      	      	      	      	      	      	      	      	      	      	      	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<Dpbs> list(Tablepar tablepar,Dpbs dpbs){
	        DpbsExample testExample=new DpbsExample();
			//搜索
			if(StrUtil.isNotEmpty(tablepar.getSearchText())) {//小窗体
	        	testExample.createCriteria().andLikeQuery2(tablepar.getSearchText());
	        }else {//大搜索
	        	testExample.createCriteria().andLikeQuery(dpbs);
	        }
			//表格排序
			//if(StrUtil.isNotEmpty(tablepar.getOrderByColumn())) {
	        //	testExample.setOrderByClause(StringUtils.toUnderScoreCase(tablepar.getOrderByColumn()) +" "+tablepar.getIsAsc());
	        //}else{
	        //	testExample.setOrderByClause("id ASC");
	        //}
	        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
	        List<Dpbs> list= dpbsMapper.selectByExample(testExample);
	        PageInfo<Dpbs> pageInfo = new PageInfo<Dpbs>(list);
	        return  pageInfo;
	 }

	@Override
	public int deleteByPrimaryKey(String ids) {
				
			List<String> lista=ConvertUtil.toListStrArray(ids);
			DpbsExample example=new DpbsExample();
			example.createCriteria().andIdIn(lista);
			return dpbsMapper.deleteByExample(example);
			
				
	}
	
	
	@Override
	public Dpbs selectByPrimaryKey(String id) {
				
			return dpbsMapper.selectByPrimaryKey(id);
				
	}

	
	@Override
	public int updateByPrimaryKeySelective(Dpbs record) {
		return dpbsMapper.updateByPrimaryKeySelective(record);
	}
	
	
	/**
	 * 添加
	 */
	@Override
	public int insertSelective(Dpbs record) {
				
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		record.setSqrq(new Date());
		return dpbsMapper.insertSelective(record);
	}
	
	
	@Override
	public int updateByExampleSelective(Dpbs record, DpbsExample example) {
		
		return dpbsMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(Dpbs record, DpbsExample example) {
		
		return dpbsMapper.updateByExample(record, example);
	}

	@Override
	public List<Dpbs> selectByExample(DpbsExample example) {
		
		return dpbsMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(DpbsExample example) {
		
		return dpbsMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(DpbsExample example) {
		
		return dpbsMapper.deleteByExample(example);
	}
	
	/**
	 * 修改权限状态展示或者不展示
	 * @param dpbs
	 * @return
	 */
	public int updateVisible(Dpbs dpbs) {
		return dpbsMapper.updateByPrimaryKeySelective(dpbs);
	}


}
