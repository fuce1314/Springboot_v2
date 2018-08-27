package com.fc.test.service;

import com.fc.test.common.base.BaseService;
import com.fc.test.mapper.auto.TestMapper;
import com.fc.test.model.auto.Test;
import com.fc.test.model.auto.TestExample;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import org.springframework.stereotype.Service;

import javax.annotation.Resource;

import java.util.List;


@Service
public class TestService implements BaseService<Test,TestExample> {
    @Resource
    private TestMapper testMapper;

    public PageInfo<Test> all(){
        TestExample testExample=new TestExample();
        PageHelper.startPage(1, 1);
        List<Test> list= testMapper.selectByExample(testExample);
        PageInfo<Test> pageInfo = new PageInfo<Test>(list);
        return  pageInfo;
    }

	@Override
	public int deleteByPrimaryKey(String id) {
		
		return testMapper.deleteByPrimaryKey(Long.valueOf(id));
	}

	@Override
	public int insertSelective(Test record) {
		
		return testMapper.insertSelective(record);
	}

	@Override
	public Test selectByPrimaryKey(String id) {
		
		return testMapper.selectByPrimaryKey(Long.valueOf(id));
	}

	@Override
	public int updateByPrimaryKeySelective(Test record) {
		
		return testMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByExampleSelective(Test record, TestExample example) {
		
		return testMapper.updateByExampleSelective(record, example);
	}

	@Override
	public int updateByExample(Test record, TestExample example) {
		
		return testMapper.updateByExample(record, example);
	}

	@Override
	public List<Test> selectByExample(TestExample example) {
		
		return testMapper.selectByExample(example);
	}

	@Override
	public long countByExample(TestExample example) {
		
		return testMapper.countByExample(example);
	}

	@Override
	public int deleteByExample(TestExample example) {
		
		return testMapper.deleteByExample(example);
	}

	

	
    
   

	
}
