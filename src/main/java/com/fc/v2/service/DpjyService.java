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
import com.fc.v2.mapper.auto.DpjyMapper;
import com.fc.v2.mapper.custom.DpjyDao;
import com.fc.v2.model.auto.Dpjy;
import com.fc.v2.model.auto.DpjyExample;
import com.fc.v2.model.custom.DpjyVo;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.SnowflakeIdWorker;
import com.fc.v2.util.StringUtils;

/**
 * 定盘借阅 DpjyService
 * @Title: DpjyService.java 
 * @Package com.fc.v2.service 
 * @author fuce_自动生成
 * @email ${email}
 * @date 2022-02-26 23:08:44  
 **/
@Service
public class DpjyService implements BaseService<Dpjy, DpjyExample>{
	@Autowired
	private DpjyMapper dpjyMapper;
	@Autowired
	private DpjyDao dpjyDao;
	
      	   	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<Dpjy> list(Tablepar tablepar,Dpjy dpjy){
	        DpjyExample testExample=new DpjyExample();
			//搜索
			if(StrUtil.isNotEmpty(tablepar.getSearchText())) {//小窗体
	        	testExample.createCriteria().andLikeQuery2(tablepar.getSearchText());
	        }else {//大搜索
	        	testExample.createCriteria().andLikeQuery(dpjy);
	        }
			//表格排序
			//if(StrUtil.isNotEmpty(tablepar.getOrderByColumn())) {
	        //	testExample.setOrderByClause(StringUtils.toUnderScoreCase(tablepar.getOrderByColumn()) +" "+tablepar.getIsAsc());
	        //}else{
	        //	testExample.setOrderByClause("id ASC");
	        //}
	        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
	        List<Dpjy> list= dpjyMapper.selectByExample(testExample);
	        //List<DpjyVo> list= dpjyDao.selectByList();
	        PageInfo<Dpjy> pageInfo = new PageInfo<Dpjy>(list);
	        return  pageInfo;
	 }

	@Override
	public int deleteByPrimaryKey(String ids) {
				
			List<String> lista=ConvertUtil.toListStrArray(ids);
			DpjyExample example=new DpjyExample();
			example.createCriteria().andIdIn(lista);
			return dpjyMapper.deleteByExample(example);
			
				
	}
	
	
	@Override
	public Dpjy selectByPrimaryKey(String id) {
				
			return dpjyMapper.selectByPrimaryKey(id);
				
	}

	
	@Override
	public int updateByPrimaryKeySelective(Dpjy record) {
		return dpjyMapper.updateByPrimaryKeySelective(record);
	}
	
	
	/**
	 * 添加
	 */
	@Override
	public int insertSelective(Dpjy record) {
				
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
			
				
		return dpjyMapper.insertSelective(record);
	}
	
	
	@Override
	public int updateByExampleSelective(Dpjy record, DpjyExample example) {
		
		return dpjyMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(Dpjy record, DpjyExample example) {
		
		return dpjyMapper.updateByExample(record, example);
	}

	@Override
	public List<Dpjy> selectByExample(DpjyExample example) {
		
		return dpjyMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(DpjyExample example) {
		
		return dpjyMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(DpjyExample example) {
		
		return dpjyMapper.deleteByExample(example);
	}
	
	/**
	 * 修改权限状态展示或者不展示
	 * @param dpjy
	 * @return
	 */
	public int updateVisible(Dpjy dpjy) {
		return dpjyMapper.updateByPrimaryKeySelective(dpjy);
	}


}
