package com.fc.v2.service;

import java.util.List;
import java.util.Map;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import cn.hutool.core.util.StrUtil;
import com.fc.v2.common.base.BaseService;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.JzglMapper;
import com.fc.v2.model.auto.Jzgl;
import com.fc.v2.model.auto.JzglExample;
import com.fc.v2.model.auto.JzglExample.Criteria;
import com.fc.v2.model.custom.JzglVo;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.SnowflakeIdWorker;
import com.fc.v2.util.StringUtils;

/**
 * 介质管理 JzglService
 * @Title: JzglService.java 
 * @Package com.fc.v2.service 
 * @author fuce_自动生成
 * @email ${email}
 * @date 2022-02-24 09:47:19  
 **/
@Service
public class JzglService implements BaseService<Jzgl, JzglExample>{
	@Autowired
	private JzglMapper jzglMapper;
	
      	   	      	      	      	      	      	      	      	      	      	      	      	      	      	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<JzglVo> list(Tablepar tablepar,Jzgl jzgl,Map<String,Object> map){
	        JzglExample testExample=new JzglExample();
	        
	        Criteria criteria= testExample.createCriteria();
	        //搜索
			if(StrUtil.isNotEmpty(tablepar.getSearchText())) {//小窗体
				criteria.andJzbmEqualTo(tablepar.getSearchText());
	        }
	        if(StrUtil.isNotEmpty(map.get("dpState").toString())&&!"-1".equals(map.get("dpState").toString())) {
	        	criteria.andDpStateEqualTo(Integer.valueOf(map.get("dpState").toString()));
	        }
	        
	        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
	        List<JzglVo> list= jzglMapper.selectByExample2(testExample);
	        PageInfo<JzglVo> pageInfo = new PageInfo<JzglVo>(list);
	        return  pageInfo;
	 }

	@Override
	public int deleteByPrimaryKey(String ids) {
				
			List<String> lista=ConvertUtil.toListStrArray(ids);
			JzglExample example=new JzglExample();
			example.createCriteria().andIdIn(lista);
			return jzglMapper.deleteByExample(example);
			
				
	}
	
	
	@Override
	public Jzgl selectByPrimaryKey(String id) {
				
		return jzglMapper.selectByPrimaryKey(id);
				
	}

	
	@Override
	public int updateByPrimaryKeySelective(Jzgl record) {
		return jzglMapper.updateByPrimaryKeySelective(record);
	}
	
	
	/**
	 * 添加
	 */
	@Override
	public int insertSelective(Jzgl record) {
				
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		record.setCreateTime(new Date());
				
		return jzglMapper.insertSelective(record);
	}
	
	
	@Override
	public int updateByExampleSelective(Jzgl record, JzglExample example) {
		
		return jzglMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(Jzgl record, JzglExample example) {
		
		return jzglMapper.updateByExample(record, example);
	}

	@Override
	public List<Jzgl> selectByExample(JzglExample example) {
		
		return jzglMapper.selectByExample(example);
	}
	
	public List<JzglVo> selectByExample2(JzglExample example) {
		
		return jzglMapper.selectByExample2(example);
	}

	
	@Override
	public long countByExample(JzglExample example) {
		
		return jzglMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(JzglExample example) {
		
		return jzglMapper.deleteByExample(example);
	}
	
	/**
	 * 修改权限状态展示或者不展示
	 * @param jzgl
	 * @return
	 */
	public int updateVisible(Jzgl jzgl) {
		return jzglMapper.updateByPrimaryKeySelective(jzgl);
	}

	
	public List<JzglVo> batchViewIds(String ids) {
		
		List<String> strings=ConvertUtil.toListStrArray(ids);
		
		return jzglMapper.batchViewIds(strings);
				
	}


}
