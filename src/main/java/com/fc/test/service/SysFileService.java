package com.fc.test.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fc.test.common.base.BaseService;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.TsysFileDataMapper;
import com.fc.test.mapper.auto.TsysFileMapper;
import com.fc.test.model.auto.TsysFile;
import com.fc.test.model.auto.TsysFileData;
import com.fc.test.model.auto.TsysFileDataExample;
import com.fc.test.model.auto.TsysFileExample;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.shiro.util.ShiroUtils;
import com.fc.test.util.SnowflakeIdWorker;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class SysFileService implements BaseService<TsysFile, TsysFileExample>{
	
	//文件mapper
	@Autowired
	private TsysFileMapper tsysFileMapper;
	//文件存储关联mapper
	@Autowired
	private TsysFileDataMapper tsysFileDataMapper;
	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<TsysFile> list(Tablepar tablepar,String searchTxt){
	        TsysFileExample testExample=new TsysFileExample();
	        testExample.setOrderByClause("id+0 ASC");
	        if(searchTxt!=null&&!"".equals(searchTxt)){
	        	testExample.createCriteria().andFileNameLike("%"+searchTxt+"%");
	        }

	        PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
	        List<TsysFile> list= tsysFileMapper.selectByExample(testExample);
	        PageInfo<TsysFile> pageInfo = new PageInfo<TsysFile>(list);
	        return  pageInfo;
	 }

	
	@Override
	public int deleteByPrimaryKey(String ids) {
		List<String> lista=Convert.toListStrArray(ids);
		TsysFileExample example=new TsysFileExample();
		example.createCriteria().andIdIn(lista);
		return tsysFileMapper.deleteByExample(example);
	}


	
	
	@Transactional
	public int insertSelective(TsysFile record,String dataId) {
		//插入创建人id
		record.setCreateUserId(ShiroUtils.getUserId());
		//插入创建人name
		record.setCreateUserName(ShiroUtils.getLoginName());
		//插入创建时间
		record.setCreateTime(new Date());
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		//插入关联表
		TsysFileData tsysFileData=new TsysFileData();
		tsysFileData.setId(SnowflakeIdWorker.getUUID());
		tsysFileData.setFileId(record.getId());
		tsysFileData.setDataId(dataId);
		tsysFileDataMapper.insert(tsysFileData);
		return tsysFileMapper.insertSelective(record);
	}

	@Override
	public TsysFile selectByPrimaryKey(String id) {
		
		return tsysFileMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(TsysFile record) {
		return tsysFileMapper.updateByPrimaryKeySelective(record);
	}
	
	/**
	 * 修改信息
	 * @param record
	 * @return
	 */
	@Transactional
	public int updateByPrimaryKey(TsysFile record,String dataId) {
		//获取旧数据
		TsysFile old_data=tsysFileMapper.selectByPrimaryKey(record.getId());
		
		//删除绑定数据
		TsysFileDataExample fileDataExample=new TsysFileDataExample();
		fileDataExample.createCriteria().andFileIdEqualTo(record.getId());
		tsysFileDataMapper.deleteByExample(fileDataExample);
		
		
		//插入关联表
		TsysFileData tsysFileData=new TsysFileData();
		tsysFileData.setId(SnowflakeIdWorker.getUUID());
		tsysFileData.setFileId(record.getId());
		tsysFileData.setDataId(dataId);
		tsysFileDataMapper.insert(tsysFileData);
		
		//修改旧数据
		//插入修改人id
		old_data.setUpdateUserId(ShiroUtils.getUserId());
		//插入修改人name
		old_data.setUpdateUserName(ShiroUtils.getLoginName());
		//插入修改时间
		old_data.setUpdateTime(new Date());
		
		
		return tsysFileMapper.updateByPrimaryKey(old_data);
	}

	
	@Override
	public int updateByExampleSelective(TsysFile record, TsysFileExample example) {
		
		return tsysFileMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(TsysFile record, TsysFileExample example) {
		
		return tsysFileMapper.updateByExample(record, example);
	}

	@Override
	public List<TsysFile> selectByExample(TsysFileExample example) {
		
		return tsysFileMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(TsysFileExample example) {
		
		return tsysFileMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(TsysFileExample example) {
		
		return tsysFileMapper.deleteByExample(example);
	}
	
	/**
	 * 检查文件名字
	 * @param TsysFile
	 * @return
	 */
	public int checkNameUnique(TsysFile tsysFile){
		TsysFileExample example=new TsysFileExample();
		example.createCriteria().andFileNameEqualTo(tsysFile.getFileName());
		List<TsysFile> list=tsysFileMapper.selectByExample(example);
		return list.size();
	}

	
	//无用
	@Override
	public int insertSelective(TsysFile record) {
		
		return tsysFileMapper.insertSelective(record);
	}
	
}
