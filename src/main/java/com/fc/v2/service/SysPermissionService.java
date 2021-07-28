package com.fc.v2.service;

import com.fc.v2.common.base.BaseService;
import com.fc.v2.common.support.ConvertUtil;
import com.fc.v2.mapper.auto.TsysPermissionMapper;
import com.fc.v2.mapper.auto.TsysPermissionRoleMapper;
import com.fc.v2.mapper.custom.PermissionDao;
import com.fc.v2.model.auto.TsysPermission;
import com.fc.v2.model.auto.TsysPermissionExample;
import com.fc.v2.model.auto.TsysPermissionRole;
import com.fc.v2.model.auto.TsysPermissionRoleExample;
import com.fc.v2.model.custom.SysMenu;
import com.fc.v2.model.custom.SysPower;
import com.fc.v2.model.custom.Tablepar;
import com.fc.v2.util.SnowflakeIdWorker;
import com.fc.v2.util.StringUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

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

	        PageHelper.startPage(tablepar.getPage(), tablepar.getLimit());
	        List<TsysPermission> list= tsysPermissionMapper.selectByExample(testExample);
	        PageInfo<TsysPermission> pageInfo = new PageInfo<TsysPermission>(list);
	        return  pageInfo;
	 }

	
	@Override
	public int deleteByPrimaryKey(String ids) {
		//转成集合
		List<String> lista=ConvertUtil.toListStrArray(ids);
		
		
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
		/*if(record!=null&&record.getType()==0){
			record.setPid("1");
		}*/
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

	/**
	 * 修改权限状态展示或者不展示
	 * @param record
	 * @return
	 */
	public int updateVisible(TsysPermission record) {
		return tsysPermissionMapper.updateByPrimaryKeySelective(record);
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
	 * 根据用户id查询菜单栏
	 * @return
	 */
	public List<SysMenu>  getSysMenus(String userid){
		List<SysMenu> treeList = new ArrayList<SysMenu>();
		List<TsysPermission> menuList =  getall(userid);
		treeList = getSysMenus(menuList,"0");
		return treeList;
	}

	/**
	 * 递归查询权限
	 * @param treeList
	 * @param parentId
	 * @return
	 */
	private List<SysMenu> getSysMenus(List<TsysPermission> treeList,String parentId){
		List<SysMenu> SysMenuList = new ArrayList<SysMenu>();
		if(StringUtils.isNotNull(parentId)&&treeList!=null&&treeList.size()>0){
			List<SysMenu> childList=null;
			for (TsysPermission tsysPermission : treeList) {
				if(tsysPermission.getPid().equals(parentId)){
					if(tsysPermission.getChildCount()!=null&&tsysPermission.getChildCount()>0){
						childList=getSysMenus(treeList,tsysPermission.getId());
					}
					SysMenu sysMenu=new SysMenu(tsysPermission.getId(), tsysPermission.getPid(), tsysPermission.getName(),tsysPermission.getType(),tsysPermission.getIsBlank(),tsysPermission.getIcon(), tsysPermission.getUrl(), childList);
					SysMenuList.add(sysMenu);
					childList = null;
				}
			}
		}


		return SysMenuList;
	}


	/**
	 * 根据角色id查询所有权限，权限有会有标识表示
	 * @return
	 */
	public List<SysPower> getRolePower(String roleId){
		//所有权限
		List<TsysPermission> allPower = getall(null);
		//角色权限
		List<TsysPermission>  rolePower=permissionDao.queryRoleId(roleId);

		List<SysPower> sysPowerList=new ArrayList<>();

        allPower.forEach(sysPower->{
        	SysPower sysPower1=new SysPower(sysPower.getId(),sysPower.getName(), sysPower.getType(),sysPower.getPerms(),sysPower.getUrl(), sysPower.getIsBlank(),sysPower.getPid(),sysPower.getIcon(),sysPower.getOrderNum(), sysPower.getVisible(),"0");
            rolePower.forEach(sysRolePower->{
            	if(sysRolePower.getId().equals(sysPower.getId())){
                	sysPower1.setCheckArr("1");
 					return;
				}
            });
             sysPowerList.add(sysPower1);

        });
        return sysPowerList;

	}

	

	/**
	 * 根据用户id获取用户角色如果用户为null 获取所有权限
	 * @return
	 */
	public List<TsysPermission> getall(String userid){
		if(StringUtils.isEmpty(userid)) {
			TsysPermissionExample example = new TsysPermissionExample();
			example.createCriteria().andVisibleEqualTo(0);
			example.setOrderByClause("order_num  is null  ASC,order_num  ASC");
			return  tsysPermissionMapper.selectByExample(example);
		}
		return  permissionDao.findByAdminUserId(userid);
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
