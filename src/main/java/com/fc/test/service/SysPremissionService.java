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
		//判断为目录的时候添加父id为0
		if(record!=null&&record.getType()==0){
			record.setPid("1");
		}
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
	 * 获取转换成bootstarp的权限数据
	 * @return
	 */
	public BootstrapThree getbooBootstrapThreePerm(){
		List<BootstrapThree> treeList = new ArrayList<BootstrapThree>();
		List<TsysPremission> menuList =  getall();
		treeList = getbooBootstrapThreePerm(menuList,"0");
		if(treeList!=null&&treeList.size()==1) {
			return treeList.get(0);
		}
		return new BootstrapThree("菜单", "fa fa-home", "", "-1","###",treeList);
	}
	
	
	
	/**
	 * 获取树
	 * @param menuList
	 * @param parentId
	 * @return
	 */
	private static List<BootstrapThree> getbooBootstrapThreePerm(List<TsysPremission> menuList,String parentId){
		List<BootstrapThree> treeList = new ArrayList<>();
		List<BootstrapThree> childList = null;
		for(TsysPremission p : menuList) {
			p.setPid(p.getPid()==null||p.getPid().trim().equals("")?"0":p.getPid());
			if(p.getPid().toString().trim().equals(parentId)) {
				if(p.getChildCount()!=null&&p.getChildCount()>0) {
					childList = getbooBootstrapThreePerm(menuList, String.valueOf(p.getId()));
				}
				BootstrapThree bootstrapTree = new BootstrapThree(p.getName(), p.getIcon(), "", String.valueOf(p.getId()), p.getUrl(),childList);
				treeList.add(bootstrapTree);
				childList = null;
			}
		}
		return treeList.size() >0 ? treeList : null;
	}
	
	/**
	 * 获取所有权限
	 * @return
	 */
	public List<TsysPremission> getall(){
		TsysPremissionExample example = new TsysPremissionExample();
		return  tsysPremissionMapper.selectByExample(example);
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
		iterationCheckPre(sysPremissions, myTsysPremissions, map);
		return sysPremissions;

	}
	
	/**
	 * 循环迭代获取所有权限
	 * @param pboostrapTree
	 * @param myTsysPremissions
	 * @param map
	 */
	public void iterationCheckPre(BootstrapThree pboostrapTree,List<TsysPremission> myTsysPremissions,Map<String, Object> map) {
		if(null!=pboostrapTree) {
			if (ifpermissions(myTsysPremissions, pboostrapTree)) {
				pboostrapTree.setState(map);
			}
			List<BootstrapThree> bootstrapTreeList = pboostrapTree.getNodes();
			if(null!=bootstrapTreeList&&!bootstrapTreeList.isEmpty()) {
				for(BootstrapThree bootstrapTree : bootstrapTreeList) {
					if (ifpermissions(myTsysPremissions, bootstrapTree)) {// 菜单栏设置
						bootstrapTree.setState(map);
					}
					//检查子节点
					iterationCheckPre(bootstrapTree, myTsysPremissions, map);
				}
			}
		}
	}
	
	
}
