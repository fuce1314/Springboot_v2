package com.fc.test.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.fc.test.mapper.auto.TsysUserMapper;
import com.fc.test.mapper.custom.PermissionDao;
import com.fc.test.model.auto.TsysPremission;
import com.fc.test.model.auto.TsysUser;
import com.fc.test.model.auto.TsysUserExample;

/**
 * 权限查询
* @ClassName: CustomUserService
* @Description: TODO(这里用一句话描述这个类的作用)
* @author fuce
* @date 2018年6月10日
*
 */
@Service
public class CustomUserService implements UserDetailsService {
	@Autowired
	private PermissionDao permissionDao;
	@Autowired
	private TsysUserMapper userMapper;
	
	@Override
	 public UserDetails loadUserByUsername(String username) {
		TsysUserExample userExample=new TsysUserExample();
		userExample.createCriteria().andUsernameEqualTo(username);
		List<TsysUser> users=userMapper.selectByExample(userExample);
		if(users!=null&&users.size()>0){
			  TsysUser user=users.get(0);
			  if (user != null) {
		            List<TsysPremission> permissions = permissionDao.findByAdminUserId(user.getId());
		            List<GrantedAuthority> grantedAuthorities = new ArrayList <>();
		            for (TsysPremission permission : permissions) {
		                if (permission != null && permission.getName()!=null) {

		                GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(permission.getName());
		                //1：此处将权限信息添加到 GrantedAuthority 对象中，在后面进行全权限验证时会使用GrantedAuthority 对象。
		                grantedAuthorities.add(grantedAuthority);
		                }
		            }
		            return new User(user.getUsername(), user.getPassword(), grantedAuthorities);
		        } else {
		            throw new UsernameNotFoundException("admin: " + username + " do not exist!");
		        }
		}else{
			 throw new UsernameNotFoundException("admin: " + username + " do not exist!");
		}
       
       
    }

}
