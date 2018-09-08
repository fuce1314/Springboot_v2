package com.fc.test.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fc.test.common.base.BaseService;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.TsysPremissionMapper;
import com.fc.test.mapper.custom.PermissionDao;
import com.fc.test.model.auto.TsysPremission;
import com.fc.test.model.auto.TsysPremissionExample;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.ThreeModelVo;
import com.fc.test.util.SnowflakeIdWorker;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class SysPremissionService implements BaseService<TsysPremission, TsysPremissionExample>{
	
	//权限mapper
	@Autowired
	private TsysPremissionMapper tsysPremissionMapper;
	
	//权限自定义dao
	@Autowired
	private PermissionDao permissionDao;
	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<TsysPremission> list(Tablepar tablepar,String searchTxt){
	        TsysPremissionExample testExample=new TsysPremissionExample();
	        testExample.setOrderByClause("id+0 ASC");
	        if(searchTxt!=null&&!"".equals(searchTxt)){
	        	testExample.createCriteria().andNameLike("%"+searchTxt+"%");
	        }

	        PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
	        List<TsysPremission> list= tsysPremissionMapper.selectByExample(testExample);
	        PageInfo<TsysPremission> pageInfo = new PageInfo<TsysPremission>(list);
	        return  pageInfo;
	 }

	
	@Override
	public int deleteByPrimaryKey(String ids) {
		List<String> lista=Convert.toListStrArray(ids);
		TsysPremissionExample example=new TsysPremissionExample();
		example.createCriteria().andIdIn(lista);
		return tsysPremissionMapper.deleteByExample(example);
	}


	
	@Override
	public int insertSelective(TsysPremission record) {
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		return tsysPremissionMapper.insertSelective(record);
	}

	@Override
	public TsysPremission selectByPrimaryKey(String id) {
		
		return tsysPremissionMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(TsysPremission record) {
		return tsysPremissionMapper.updateByPrimaryKeySelective(record);
	}
	
	public int updateByPrimaryKey(TsysPremission record) {
		return tsysPremissionMapper.updateByPrimaryKey(record);
	}

	
	@Override
	public int updateByExampleSelective(TsysPremission record, TsysPremissionExample example) {
		
		return tsysPremissionMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(TsysPremission record, TsysPremissionExample example) {
		
		return tsysPremissionMapper.updateByExample(record, example);
	}

	@Override
	public List<TsysPremission> selectByExample(TsysPremissionExample example) {
		
		return tsysPremissionMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(TsysPremissionExample example) {
		
		return tsysPremissionMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(TsysPremissionExample example) {
		
		return tsysPremissionMapper.deleteByExample(example);
	}
	
	/**
	 * 检查权限名字
	 * @param tsysUser
	 * @return
	 */
	public int checkNameUnique(TsysPremission tsysPremission){
		TsysPremissionExample example=new TsysPremissionExample();
		example.createCriteria().andNameEqualTo(tsysPremission.getName());
		List<TsysPremission> list=tsysPremissionMapper.selectByExample(example);
		return list.size();
	}

	/**
	 * 检查权限URL
	 * @param tsysUser
	 * @return
	 */
	public int checkURLUnique(TsysPremission tsysPremission){
		TsysPremissionExample example=new TsysPremissionExample();
		example.createCriteria().andUrlEqualTo(tsysPremission.getUrl());
		List<TsysPremission> list=tsysPremissionMapper.selectByExample(example);
		return list.size();
	}

	/**
	 * 检查权限perms字段
	 * @param tsysUser
	 * @return
	 */
	public int checkPermsUnique(TsysPremission tsysPremission){
		TsysPremissionExample example=new TsysPremissionExample();
		example.createCriteria().andPermsEqualTo(tsysPremission.getPerms());
		List<TsysPremission> list=tsysPremissionMapper.selectByExample(example);
		return list.size();
	}
	
	
	/**
	 * 根据父id 以及类型查询权限子集
	 * @param pid
	 * @return
	 */
	public List<TsysPremission> queryPid(String pid,int type){
		TsysPremissionExample example=new TsysPremissionExample();
		example.createCriteria().andPidEqualTo(pid).andTypeEqualTo(type);
		return tsysPremissionMapper.selectByExample(example);
	}
	

	/**
	 * 查询树的权限
	 * @return
	 */
	public ThreeModelVo queryThreePrem(){
		//查询出首页
		TsysPremission homeList=queryPid("0",0).get(0);
		//赋值首页信息
		ThreeModelVo homeTmv=new ThreeModelVo();
		homeTmv.setTsysPremission(homeList);
		//查询出所有的菜单栏管理分类
		List<TsysPremission> menuGlList=queryPid(homeList.getId(),0);
		List<ThreeModelVo> menulanGlVos=new ArrayList<ThreeModelVo>(); 
		for (TsysPremission tsysPremission_menuGl : menuGlList) {//菜单栏管理
			ThreeModelVo menulanGlVo=new ThreeModelVo();
			
			
			List<ThreeModelVo> menuVos=new ArrayList<ThreeModelVo>();
			//查出所有的菜单栏
			List<TsysPremission> menuList=queryPid(tsysPremission_menuGl.getId(),1);
			
			for (TsysPremission tsysPremission_menu : menuList) {//菜单栏
				ThreeModelVo menuVo=new ThreeModelVo();
				
				List<ThreeModelVo> buttonsVos=new ArrayList<ThreeModelVo>();
				//查询所有的按钮
				List<TsysPremission> buttonList=queryPid(tsysPremission_menu.getId(),2);
				for (TsysPremission tsysPremission_button : buttonList) {//按钮
					ThreeModelVo buttonVo=new ThreeModelVo();

					//按钮赋值
					buttonVo.setTsysPremission(tsysPremission_button);
					buttonVo.setChildList(null);
					//按钮添加子集
					buttonsVos.add(buttonVo);
				}
				menuVo.setChildList(buttonsVos);
				//菜单栏添加子集
				menuVos.add(menuVo);
				//菜单栏赋值
				menuVo.setTsysPremission(tsysPremission_menu);
				
			}
			//菜单栏管理添加子集
			menulanGlVo.setChildList(menuVos);
			//赋值菜单栏
			menulanGlVo.setTsysPremission(tsysPremission_menuGl);
			
			//菜单栏管理赋值
			menulanGlVos.add(menulanGlVo);
		}
		//首页填充菜单栏分类
		homeTmv.setChildList(menulanGlVos);
		return homeTmv;
		
	}
}
