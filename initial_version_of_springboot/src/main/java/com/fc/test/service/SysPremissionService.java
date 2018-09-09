package com.fc.test.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fc.test.common.base.BaseService;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.TsysPremissionMapper;
import com.fc.test.mapper.custom.PermissionDao;
import com.fc.test.model.auto.TsysPremission;
import com.fc.test.model.auto.TsysPremissionExample;
import com.fc.test.model.custom.BootstrapThree;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.model.custom.PremissionThreeModelVo;
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
	 * 获取权限树
	 * @return
	 */
	public PremissionThreeModelVo queryThreePrem(){
		//查询出首页
		TsysPremission homeList=queryPid("0",0).get(0);
		//赋值首页信息
		PremissionThreeModelVo homeTmv=new PremissionThreeModelVo();
		homeTmv.setTsysPremission(homeList);
		//查询出所有的菜单栏管理分类
		List<TsysPremission> menuGlList=queryPid(homeList.getId(),0);
		List<PremissionThreeModelVo> menulanGlVos=new ArrayList<PremissionThreeModelVo>(); 
		for (TsysPremission tsysPremission_menuGl : menuGlList) {//菜单栏管理
			PremissionThreeModelVo menulanGlVo=new PremissionThreeModelVo();
			
			
			List<PremissionThreeModelVo> menuVos=new ArrayList<PremissionThreeModelVo>();
			//查出所有的菜单栏
			List<TsysPremission> menuList=queryPid(tsysPremission_menuGl.getId(),1);
			
			for (TsysPremission tsysPremission_menu : menuList) {//菜单栏
				PremissionThreeModelVo menuVo=new PremissionThreeModelVo();
				
				List<PremissionThreeModelVo> buttonsVos=new ArrayList<PremissionThreeModelVo>();
				//查询所有的按钮
				List<TsysPremission> buttonList=queryPid(tsysPremission_menu.getId(),2);
				for (TsysPremission tsysPremission_button : buttonList) {//按钮
					PremissionThreeModelVo buttonVo=new PremissionThreeModelVo();

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
	
	/**
	 * 获取转换成bootstarp的权限数据
	 * @return
	 */
	public BootstrapThree getbooBootstrapThreePerm(){
		Map<String, Object> map = new HashMap<String, Object>();
		//设置选中
		map.put("checked", true);
		//设置展开
		map.put("expanded", false);
		PremissionThreeModelVo modelVo= queryThreePrem();
		TsysPremission home= modelVo.getTsysPremission();
		List<PremissionThreeModelVo> three_mengls= modelVo.getChildList();
		List<BootstrapThree> bootstrapThree_mengls=new  ArrayList<BootstrapThree>();
		for (PremissionThreeModelVo menglx : three_mengls) {
			TsysPremission mengl= menglx.getTsysPremission();
			List<BootstrapThree> bootstrapThree_mens=new  ArrayList<BootstrapThree>();
			
			List<PremissionThreeModelVo> three_mens=menglx.getChildList();
			for (PremissionThreeModelVo buttonx : three_mens) {
				TsysPremission button=  buttonx.getTsysPremission();
				List<PremissionThreeModelVo> three_buttons=buttonx.getChildList();
				List<BootstrapThree> bootstrapThree_buttons=new  ArrayList<BootstrapThree>();
				
				for (PremissionThreeModelVo lasts : three_buttons) {
					TsysPremission last= lasts.getTsysPremission();
					BootstrapThree three_button=new BootstrapThree(last.getName(), last.getIcon(),"",last.getId(),null,map);
					bootstrapThree_buttons.add(three_button);
				}
				BootstrapThree bootstrapThree_button=new BootstrapThree(button.getName(), button.getIcon(),"",button.getId(), bootstrapThree_buttons,map);
				bootstrapThree_mens.add(bootstrapThree_button);
			}
			BootstrapThree bootstrapThree_mengl=new BootstrapThree(mengl.getName(), mengl.getIcon(),"",mengl.getId(), bootstrapThree_mens,map);
			bootstrapThree_mengls.add(bootstrapThree_mengl);
		}
		
		BootstrapThree bootstrapThree=new BootstrapThree(home.getName(), home.getIcon(),"",home.getId(), bootstrapThree_mengls,map);
		
		return bootstrapThree;
	}
	
	
	/**
	 * 获取所有权限
	 * @return
	 */
	public List<TsysPremission> getall(){
		return  tsysPremissionMapper.selectByExample(new TsysPremissionExample());
	}
	
	
	/**
	 * 判断权限是否有权限
	 * @param myTsysPremissions
	 * @param sysPremission
	 */
	public Boolean ifpermissions(List<TsysPremission>  myTsysPremissions,BootstrapThree sysPremission){
		for (TsysPremission mytsysPremission : myTsysPremissions) {
			if(sysPremission.getId().equals(mytsysPremission.getId())){
				return true;
			}
		}
		return false;
	}
	
	
	/**
	 * 获取角色已有的Bootstarp权限
	 * @return
	 */
	public BootstrapThree getCheckPrem(String roleid) {
		Map<String, Object> map = new HashMap<String, Object>();
		//设置选中
		map.put("checked", true);
		//设置展开
		map.put("expanded", false);
		// 获取角色的权限
		List<TsysPremission> myTsysPremissions = permissionDao.queryRoleId(roleid);
		// 获取所有的权限
		BootstrapThree sysPremissions = getbooBootstrapThreePerm();
		if (ifpermissions(myTsysPremissions, sysPremissions)) {
			sysPremissions.setState(map);

		}
		List<BootstrapThree> menugl = sysPremissions.getNodes();
		for (BootstrapThree menuglbootstrapThree : menugl) {
			if (ifpermissions(myTsysPremissions, menuglbootstrapThree)) {// 菜单栏管理设置
				menuglbootstrapThree.setState(map);
			}
			List<BootstrapThree> menu = menuglbootstrapThree.getNodes();
			for (BootstrapThree menubootstrapThree : menu) {
				if (ifpermissions(myTsysPremissions, menubootstrapThree)) {// 菜单栏设置
					menubootstrapThree.setState(map);
				}

				List<BootstrapThree> buttons = menubootstrapThree.getNodes();
				for (BootstrapThree button : buttons) {
					if (ifpermissions(myTsysPremissions, button)) {// 按钮设置
						button.setState(map);
					}
				}
			}

		}
		return sysPremissions;

	}
	
	
}
