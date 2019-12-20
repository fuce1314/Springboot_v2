package com.fc.test.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.fc.test.common.base.BaseService;
import com.fc.test.common.support.Convert;
import com.fc.test.mapper.auto.TsysPermissionMapper;
import com.fc.test.mapper.auto.TsysPermissionRoleMapper;
import com.fc.test.mapper.custom.PermissionDao;
import com.fc.test.model.auto.TsysPermission;
import com.fc.test.model.auto.TsysPermissionExample;
import com.fc.test.model.auto.TsysPermissionRole;
import com.fc.test.model.auto.TsysPermissionRoleExample;
import com.fc.test.model.custom.BootstrapTree;
import com.fc.test.model.custom.Tablepar;
import com.fc.test.util.SnowflakeIdWorker;
import com.fc.test.util.StringUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysPermissionService implements BaseService<TsysPermission, TsysPermissionExample>{
	
	//权限mapper
	@Autowired
	private TsysPermissionMapper tsysPermissionMapper;
	
	//权限自定义dao
	@Autowired
	private PermissionDao permissionDao;
	//权限角色关联表
	@Autowired
	private TsysPermissionRoleMapper permissionRoleMapper;
	
	/**
	 * 分页查询
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	 public PageInfo<TsysPermission> list(Tablepar tablepar, String searchText){
	        TsysPermissionExample testExample=new TsysPermissionExample();
	        testExample.setOrderByClause("order_num  is null  ASC,order_num  ASC");
	        if(searchText!=null&&!"".equals(searchText)){
	        	testExample.createCriteria().andNameLike("%"+searchText+"%");
	        }

	        PageHelper.startPage(tablepar.getPageNum(), tablepar.getPageSize());
	        List<TsysPermission> list= tsysPermissionMapper.selectByExample(testExample);
	        PageInfo<TsysPermission> pageInfo = new PageInfo<TsysPermission>(list);
	        return  pageInfo;
	 }
	 
	 public List<TsysPermission> list2(String searchText){
	        TsysPermissionExample testExample=new TsysPermissionExample();
	        testExample.setOrderByClause("order_num  is null  ASC,order_num  ASC");
	        if(searchText!=null&&!"".equals(searchText)){
	        	testExample.createCriteria().andNameLike("%"+searchText+"%");
	        }
	        List<TsysPermission> list= tsysPermissionMapper.selectByExample(testExample);
	        return  list;
	 }

	
	@Override
	public int deleteByPrimaryKey(String ids) {
		//转成集合
		List<String> lista=Convert.toListStrArray(ids);
		
		
		//判断角色是否删除去除
		TsysPermissionRoleExample permissionRoleExample=new TsysPermissionRoleExample();
		permissionRoleExample.createCriteria().andPermissionIdIn(lista);
		List<TsysPermissionRole> tsysPermissionRoles=permissionRoleMapper.selectByExample(permissionRoleExample);
		if(tsysPermissionRoles.size()>0) {//有角色外键
			return -2;
		}
		
		//判断是否有子集
		TsysPermissionExample example=new TsysPermissionExample();
		example.createCriteria().andIdIn(lista);
		List<TsysPermission> tsysPermissions = tsysPermissionMapper.selectByExample(example);
		boolean lag=false;
		for (TsysPermission tsysPermission : tsysPermissions) {
			if(tsysPermission.getChildCount()>0) {
				lag=true;
			}
		}
		if(lag) {//有子集 无法删除
			return -1;
		}else {//删除操作
			int i=tsysPermissionMapper.deleteByExample(example);
			if(i>0) {//删除成功
				return 1;
			}else {//删除失败
				return 0;
			}
			
		}
	}


	
	@Override
	public int insertSelective(TsysPermission record) {
		//添加雪花主键id
		record.setId(SnowflakeIdWorker.getUUID());
		//判断为目录的时候添加父id为0
		if(record!=null&&record.getType()==0){
			record.setPid("1");
		}
		//默认设置不跳转
		if(record.getIsBlank()==null) {
			record.setIsBlank(0);
		}
		return tsysPermissionMapper.insertSelective(record);
	}

	@Override
	public TsysPermission selectByPrimaryKey(String id) {
		
		return tsysPermissionMapper.selectByPrimaryKey(id);
	}

	
	@Override
	public int updateByPrimaryKeySelective(TsysPermission record) {
		//默认设置不跳转
		if(record.getIsBlank()==null) {
			record.setIsBlank(0);
		}
		return tsysPermissionMapper.updateByPrimaryKeySelective(record);
	}
	
	public int updateByPrimaryKey(TsysPermission record) {
		//默认设置不跳转
		if(record.getIsBlank()==null) {
			record.setIsBlank(0);
		}
		return tsysPermissionMapper.updateByPrimaryKey(record);
	}

	
	@Override
	public int updateByExampleSelective(TsysPermission record, TsysPermissionExample example) {
		//默认设置不跳转
		if(record.getIsBlank()==null) {
			record.setIsBlank(0);
		}
		return tsysPermissionMapper.updateByExampleSelective(record, example);
	}

	
	@Override
	public int updateByExample(TsysPermission record, TsysPermissionExample example) {
		//默认设置不跳转
		if(record.getIsBlank()==null) {
			record.setIsBlank(0);
		}
		return tsysPermissionMapper.updateByExample(record, example);
	}

	@Override
	public List<TsysPermission> selectByExample(TsysPermissionExample example) {
		
		return tsysPermissionMapper.selectByExample(example);
	}

	
	@Override
	public long countByExample(TsysPermissionExample example) {
		
		return tsysPermissionMapper.countByExample(example);
	}

	
	@Override
	public int deleteByExample(TsysPermissionExample example) {
		
		return tsysPermissionMapper.deleteByExample(example);
	}
	
	/**
	 * 检查权限名字
	 * @param tsysUser
	 * @return
	 */
	public int checkNameUnique(TsysPermission tsysPermission){
		TsysPermissionExample example=new TsysPermissionExample();
		example.createCriteria().andNameEqualTo(tsysPermission.getName());
		List<TsysPermission> list=tsysPermissionMapper.selectByExample(example);
		return list.size();
	}

	/**
	 * 检查权限URL
	 * @param tsysUser
	 * @return
	 */
	public int checkURLUnique(TsysPermission tsysPermission){
		TsysPermissionExample example=new TsysPermissionExample();
		example.createCriteria().andUrlEqualTo(tsysPermission.getUrl());
		List<TsysPermission> list=tsysPermissionMapper.selectByExample(example);
		return list.size();
	}

	/**
	 * 检查权限perms字段
	 * @param tsysUser
	 * @return
	 */
	public int checkPermsUnique(TsysPermission tsysPermission){
		TsysPermissionExample example=new TsysPermissionExample();
		example.createCriteria().andPermsEqualTo(tsysPermission.getPerms());
		List<TsysPermission> list=tsysPermissionMapper.selectByExample(example);
		return list.size();
	}
	
	
	/**
	 * 根据父id 以及类型查询权限子集
	 * @param pid
	 * @return
	 */
	public List<TsysPermission> queryPid(String pid, int type){
		TsysPermissionExample example=new TsysPermissionExample();
		example.createCriteria().andPidEqualTo(pid).andTypeEqualTo(type);
		return tsysPermissionMapper.selectByExample(example);
	}
	
	/**
	 * 获取转换成bootstarp的权限数据
	 * @return
	 */
	public BootstrapTree getbooBootstrapTreePerm(String userid){
		List<BootstrapTree> treeList = new ArrayList<BootstrapTree>();
		List<TsysPermission> menuList =  getall(userid);
		treeList = getbooBootstrapTreePerm(menuList,"0");
		if(treeList!=null&&treeList.size()==1) {
			return treeList.get(0);
		}
		return new BootstrapTree("菜单", "fa fa-home", "", "-1","###",0,treeList,"",0);
	}
	
	
	
	/**
	 * 获取树
	 * @param menuList
	 * @param parentId
	 * @return
	 */
	private static List<BootstrapTree> getbooBootstrapTreePerm(List<TsysPermission> menuList, String parentId){
		List<BootstrapTree> treeList = new ArrayList<>();
		List<BootstrapTree> childList = null;
		for(TsysPermission p : menuList) {
			p.setPid(p.getPid()==null||p.getPid().trim().equals("")?"0":p.getPid());
			if(p.getPid().trim().equals(parentId)) {
				if(p.getChildCount()!=null&&p.getChildCount()>0) {
					childList = getbooBootstrapTreePerm(menuList, String.valueOf(p.getId()));
				}
				BootstrapTree bootstrapTree = new BootstrapTree(p.getName(), p.getIcon(), "", String.valueOf(p.getId()), p.getUrl(),p.getIsBlank(),childList,p.getPerms(),p.getVisible());
				treeList.add(bootstrapTree);
				childList = null;
			}
		}
		return treeList.size() >0 ? treeList : null;
	}
	
	/**
	 * 根据用户id获取用户角色如果用户为null 获取所有权限
	 * @return
	 */
	public List<TsysPermission> getall(String userid){
		if(StringUtils.isEmpty(userid)) {
			TsysPermissionExample example = new TsysPermissionExample();
			example.setOrderByClause("order_num asc");
			return  tsysPermissionMapper.selectByExample(example);
		}
		return  permissionDao.findByAdminUserId(userid);
	}
	
	
	
	
	
	/**
	 * 判断权限是否有权限
	 * @param myTsysPermissions
	 * @param sysPermission
	 */
	public Boolean ifpermissions(List<TsysPermission> myTsysPermissions, BootstrapTree sysPermission){
		for (TsysPermission mytsysPermission : myTsysPermissions) {
			if(sysPermission.getId().equals(mytsysPermission.getId())){
				return true;
			}
		}
		return false;
	}
	
	
	/**
	 * 获取角色已有的Bootstarp权限
	 * @return
	 */
	public BootstrapTree getCheckPrem(String roleid) {
		Map<String, Object> map = new HashMap<String, Object>();
		//设置选中
		map.put("checked", true);
		//设置展开
		//map.put("expanded", true);
		// 获取角色的权限
		List<TsysPermission> myTsysPermissions = permissionDao.queryRoleId(roleid);
		// 获取所有的权限
		BootstrapTree sysPermissions = getbooBootstrapTreePerm(null);
		iterationCheckPre(sysPermissions, myTsysPermissions, map);
		return sysPermissions;

	}
	
	/**
	 * 循环迭代获取所有权限
	 * @param pboostrapTree
	 * @param myTsysPermissions
	 * @param map
	 */
	public void iterationCheckPre(BootstrapTree pboostrapTree, List<TsysPermission> myTsysPermissions, Map<String, Object> map) {
		if(null!=pboostrapTree) {
			if (ifpermissions(myTsysPermissions, pboostrapTree)) {
				pboostrapTree.setState(map);
			}
			List<BootstrapTree> bootstrapTreeList = pboostrapTree.getNodes();
			if(null!=bootstrapTreeList&&!bootstrapTreeList.isEmpty()) {
				for(BootstrapTree bootstrapTree : bootstrapTreeList) {
					if (ifpermissions(myTsysPermissions, bootstrapTree)) {// 菜单栏设置
						bootstrapTree.setState(map);
					}
					//检查子节点
					iterationCheckPre(bootstrapTree, myTsysPermissions, map);
				}
			}
		}
	}
	
	/**
	 * 根据权限字段查询是否存在
	 * @param perms
	 * @return
	 * @author fuce
	 * @Date 2019年9月1日 上午2:06:31
	 */
	public Boolean queryLikePerms(String perms){
		TsysPermissionExample example=new TsysPermissionExample();
		example.createCriteria().andPermsLike("%gen:"+perms+"%");
		List<TsysPermission> list= tsysPermissionMapper.selectByExample(example);
        return list.size() > 0;
    }
	
	
}
