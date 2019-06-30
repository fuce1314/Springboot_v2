package com.fc.test.service;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fc.test.common.base.BaseService;
import com.fc.test.common.conf.V2Config;
import com.fc.test.common.file.FileUploadUtils;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.TsysDatasMapper;
import com.fc.test.model.auto.TsysDatas;
import com.fc.test.model.auto.TsysDatasExample;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.util.SnowflakeIdWorker;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class SysDatasService implements BaseService<TsysDatas, TsysDatasExample>{
	
	
	@Autowired
	private TsysDatasMapper tsysDatasMapper;
	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<TsysDatas> list(Tablepar tablepar,String searchTxt){
	        TsysDatasExample testExample=new TsysDatasExample();
	        testExample.setOrderByClause("id+0 DESC");
	        if(searchTxt!=null&&!"".equals(searchTxt)){
	        	testExample.createCriteria().andIdLike("%"+searchTxt+"%");
	        }
	        PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
	        List<TsysDatas> list= tsysDatasMapper.selectByExample(testExample);
	        PageInfo<TsysDatas> pageInfo = new PageInfo<TsysDatas>(list);
	        return  pageInfo;
	 }

	
	@Override
	public int deleteByPrimaryKey(String ids) {
		List<String> lista=Convert.toListStrArray(ids);
		TsysDatasExample example=new TsysDatasExample();
		example.createCriteria().andIdIn(lista);
		return tsysDatasMapper.deleteByExample(example);
	}
	
	
	
	
	
	
	/**
	 * 文件上传文件存储到文件表
	 * @param record
	 * @param fileURL
	 * @return 主键
	 * @throws IOException 
	 */
	public String insertSelective(MultipartFile file) throws IOException {
		//文件上传获取文件名字
        String files = FileUploadUtils.upload(file);
        //补充完整url地址 
        String filesURL="";
        if ("Y".equals(V2Config.getIsstatic())) {
        	filesURL=V2Config.getIsroot_dir()+files;
		}else {
			filesURL=V2Config.getProfile()+files;
		}
        
        
		TsysDatas record=new TsysDatas();
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		record.setFilePath(filesURL);
		if(tsysDatasMapper.insertSelective(record)>0)
		{
			return record.getId();
		}
		return null;
	}
	
	@Override
	public int insertSelective(TsysDatas record) {
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		return tsysDatasMapper.insertSelective(record);
	}

	@Override
	public TsysDatas selectByPrimaryKey(String id) {
		
		return tsysDatasMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(TsysDatas record) {
		return tsysDatasMapper.updateByPrimaryKeySelective(record);
	}
	
	public int updateByPrimaryKey(TsysDatas record) {
		return tsysDatasMapper.updateByPrimaryKey(record);
	}

	
	@Override
	public int updateByExampleSelective(TsysDatas record, TsysDatasExample example) {
		
		return tsysDatasMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(TsysDatas record, TsysDatasExample example) {
		
		return tsysDatasMapper.updateByExample(record, example);
	}

	@Override
	public List<TsysDatas> selectByExample(TsysDatasExample example) {
		
		return tsysDatasMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(TsysDatasExample example) {
		
		return tsysDatasMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(TsysDatasExample example) {
		
		return tsysDatasMapper.deleteByExample(example);
	}
	

	
}
