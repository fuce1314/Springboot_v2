package com.fc.test.shiro.service;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.fc.test.mapper.custom.PermissionDao;
import com.fc.test.mapper.custom.RoleDao;
import com.fc.test.mapper.custom.TsysUserDao;
import com.fc.test.model.auto.TsysPremission;
import com.fc.test.model.auto.TsysRole;
import com.fc.test.model.auto.TsysUser;
import com.fc.test.util.StringUtils;
import com.google.gson.Gson;

/**
 * 身份校验核心类
 * 
 * @ClassName: MyShiroRealm
 * @author fuce
 * @date 2018年8月25日
 *
 */
@Service
public class MyShiroRealm extends AuthorizingRealm {
	
	
	
	@Autowired
	private TsysUserDao tsysUserDao;
	
	@Autowired
	private PermissionDao permissionDao;//权限dao
	@Autowired
	private RoleDao roleDao ;//角色dao
	
	
	/**
	 * 认证登陆
	 */
	@SuppressWarnings("unused")
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		
		 //加这一步的目的是在Post请求的时候会先进认证，然后在到请求
        if (token.getPrincipal() == null) {
            return null;
        }
		String username = (String) token.getPrincipal();
		String password = new String((char[]) token.getCredentials());
		// 通过username从数据库中查找 User对象，如果找到，没找到.
		// 实际项目中，这里可以根据实际情况做缓存，如果不做，Shiro自己也是有时间间隔机制，2分钟内不会重复执行该方法
		
		
		TsysUser userInfo = tsysUserDao.queryUserName(username);
		
		System.out.println(userInfo);
		System.out.println("----->>userInfo=" + userInfo.getUsername() + "---"+ userInfo.getPassword());
		if (userInfo == null)
			return null;
		else{
			SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
					userInfo, // 用户名
					userInfo.getPassword(), // 密码
					getName() // realm name
			);
			return authenticationInfo;
		}
		
	}
	
	 /**
     * 授权查询回调函数, 进行鉴权但缓存中无用户的授权信息时调用.
     */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		System.out.println("权限配置-->MyShiroRealm.doGetAuthorizationInfo()");
		if(principals == null){  
	       throw new AuthorizationException("principals should not be null");  
	    }
		
		Gson gson=new Gson();
		SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
		TsysUser userinfo  = (TsysUser)principals.getPrimaryPrincipal();
		String uid=userinfo.getId();
		
		List<TsysRole> tsysRoles= roleDao.queryUserRole(uid);
		
		
		for(TsysRole userrole:tsysRoles){
			System.out.println("角色名字:"+gson.toJson(userrole));
			String rolid=userrole.getId();//角色id
			authorizationInfo.addRole(userrole.getName());//添加角色名字
			List<TsysPremission> premissions=permissionDao.queryRoleId(rolid);
			for(TsysPremission p:premissions){
				System.out.println("角色下面的权限:"+gson.toJson(p));
				if(StringUtils.isNotEmpty(p.getPerms())){
					authorizationInfo.addStringPermission(p.getPerms());
				}
				
			}
		}
 
 
		
		return authorizationInfo;
	}
	
	 /**
     * 清理缓存权限
     */
    public void clearCachedAuthorizationInfo()
    {
        this.clearCachedAuthorizationInfo(SecurityUtils.getSubject().getPrincipals());
    }

}
