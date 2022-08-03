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
import com.fc.v2.mapper.auto.JgglMapper;
import com.fc.v2.model.auto.Jggl;
import com.fc.v2.model.auto.JgglExample;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.SnowflakeIdWorker;
import com.fc.v2.util.StringUtils;

/**
 * 机柜管理 JgglService
 * @Title: JgglService.java 
 * @Package com.fc.v2.service 
 * @author fuce_自动生成
 * @email ${email}
 * @date 2022-02-23 15:30:30  
 **/
@Service
public class JgglService implements BaseService<Jggl, JgglExample>{
	@Autowired
	private JgglMapper jgglMapper;
	
      	   	      	      	      	      	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<Jggl> list(Tablepar tablepar,Jggl jggl){
	        JgglExample testExample=new JgglExample();
			//搜索
			if(StrUtil.isNotEmpty(tablepar.getSearchText())) {//小窗体
	        	testExample.createCriteria().andLikeQuery2(tablepar.getSearchText());
	        }else {//大搜索
	        	testExample.createCriteria().andLikeQuery(jggl);
	        }
			//表格排序
			//if(StrUtil.isNotEmpty(tablepar.getOrderByColumn())) {
	        //	testExample.setOrderByClause(StringUtils.toUnderScoreCase(tablepar.getOrderByColumn()) +" "+tablepar.getIsAsc());
	        //}else{
	        //	testExample.setOrderByClause("id ASC");
	        //}
	        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
	        List<Jggl> list= jgglMapper.selectByExample(testExample);
	        PageInfo<Jggl> pageInfo = new PageInfo<Jggl>(list);
	        return  pageInfo;
	 }

	@Override
	public int deleteByPrimaryKey(String ids) {
				
			List<String> lista=ConvertUtil.toListStrArray(ids);
			JgglExample example=new JgglExample();
			example.createCriteria().andIdIn(lista);
			return jgglMapper.deleteByExample(example);
			
				
	}
	
	
	@Override
	public Jggl selectByPrimaryKey(String id) {
				
			return jgglMapper.selectByPrimaryKey(id);
				
	}

	
	@Override
	public int updateByPrimaryKeySelective(Jggl record) {
		return jgglMapper.updateByPrimaryKeySelective(record);
	}
	
	
	/**
	 * 添加
	 */
	@Override
	public int insertSelective(Jggl record) {
				
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
			
				
		return jgglMapper.insertSelective(record);
	}
	
	
	@Override
	public int updateByExampleSelective(Jggl record, JgglExample example) {
		
		return jgglMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(Jggl record, JgglExample example) {
		
		return jgglMapper.updateByExample(record, example);
	}

	@Override
	public List<Jggl> selectByExample(JgglExample example) {
		
		return jgglMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(JgglExample example) {
		
		return jgglMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(JgglExample example) {
		
		return jgglMapper.deleteByExample(example);
	}
	
	/**
	 * 修改权限状态展示或者不展示
	 * @param jggl
	 * @return
	 */
	public int updateVisible(Jggl jggl) {
		return jgglMapper.updateByPrimaryKeySelective(jggl);
	}


}
