package com.fc.v2.service;

import com.fc.v2.common.base.BaseService;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.SysFileMapper;
import com.fc.v2.model.auto.SysFile;
import com.fc.v2.model.auto.SysFileExample;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.shiro.util.ShiroUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
public class SysFileService implements BaseService<SysFile, SysFileExample> {
    @Autowired
    private SysFileMapper sysFileMapper;


    	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<SysFile> list(Tablepar tablepar, String name){
	        SysFileExample testExample=new SysFileExample();
	        testExample.setOrderByClause("id ASC");
	        if(name!=null&&!"".equals(name)){
	        	testExample.createCriteria().andFileNameEqualTo("%"+name+"%");
	        }
	        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
	        List<SysFile> list= sysFileMapper.selectByExample(testExample);
	        PageInfo<SysFile> pageInfo = new PageInfo<SysFile>(list);
	        return  pageInfo;
	 }


	 /**
	 * 检查文件名字
	 * @param tsysFile
	 * @return
	 */
	public int checkNameUnique(SysFile tsysFile){
		SysFileExample example=new SysFileExample();
		example.createCriteria().andFileNameEqualTo(tsysFile.getFileName());
		List<SysFile> list=sysFileMapper.selectByExample(example);
		return list.size();
	}


	/**
	 * 修改信息
	 * @param record
	 * @return
	 */
	@Transactional
	public int updateByPrimaryKey(SysFile record) {
		//获取旧数据
		SysFile old_data=sysFileMapper.selectByPrimaryKey(record.getId());
		//插入修改人id
		record.setUpdateUserId(ShiroUtils.getUserId());
		//插入修改人name
		record.setUpdateUserName(ShiroUtils.getLoginName());
		//插入修改时间
		record.setUpdateTime(new Date());
		return sysFileMapper.updateByPrimaryKey(old_data);
	}


	 /**
	 * 删除文件信息全部
	 * @param ids 文件集合 1,2,3
	 */
	@Transactional
    @Override
	public int deleteByPrimaryKey(String ids) {
		List<String> lista= ConvertUtil.toListStrArray(ids);
		SysFileExample example=new SysFileExample();
		example.createCriteria().andIdIn(lista);
		return sysFileMapper.deleteByExample(example);
	}

    @Override
    public int insertSelective(SysFile record) {
        return sysFileMapper.insertSelective(record);
    }

    @Override
    public SysFile selectByPrimaryKey(String id) {
        return sysFileMapper.selectByPrimaryKey(id);
    }


    public int updateByPrimaryKeySelective(SysFile record) {
        return sysFileMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByExampleSelective(SysFile record, SysFileExample example) {
        return sysFileMapper.updateByExampleSelective(record,example);
    }

    @Override
    public int updateByExample(SysFile record, SysFileExample example) {
        return sysFileMapper.updateByExample(record,example);
    }

    @Override
    public List<SysFile> selectByExample(SysFileExample example) {
        return sysFileMapper.selectByExample(example);
    }

    @Override
    public long countByExample(SysFileExample example) {
        return sysFileMapper.countByExample(example);
    }

    @Override
    public int deleteByExample(SysFileExample example) {
        return sysFileMapper.deleteByExample(example);
    }
}
