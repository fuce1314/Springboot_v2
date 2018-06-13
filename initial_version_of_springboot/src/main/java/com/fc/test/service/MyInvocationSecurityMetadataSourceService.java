package com.fc.test.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.stereotype.Service;
import com.fc.test.mapper.custom.PermissionDao;
import com.fc.test.model.auto.TsysPremission;

@Service
public class MyInvocationSecurityMetadataSourceService  implements FilterInvocationSecurityMetadataSource {
	//此方法是为了判定用户请求的url 是否在权限表中，如果在权限表中，则返回给 decide 方法，用来判定用户是否有此权限。如果不在权限表中则放行。
    //因为我不想每一次来了请求，都先要匹配一下权限表中的信息是不是包含此url，
    // 我准备直接拦截，不管请求的url 是什么都直接拦截，然后在MyAccessDecisionManager的decide 方法中做拦截还是放行的决策。
    //所以此方法的返回值不能返回 null 此处我就随便返回一下。
	@Autowired
    private PermissionDao permissionDao;
	//private HashMap<String, Collection<ConfigAttribute>> map =null;
	private static Map<String, Collection<ConfigAttribute>> resourceMap = null;
	
	private  List<TsysPremission> permissions =null;
	/**
     * 加载权限表中所有权限
     */
	  // 在Web服务器启动时，提取系统中的所有权限
    private void loadResourceDefine() {
    	
       // List<String> query = this.testDao.getAllAuthorityName();

        /*
         * 应当是资源为key， 权限为value。 资源通常为url， 权限就是那些以ROLE_为前缀的角色。 一个资源可以由多个权限来访问。
         * sparta
         */
        resourceMap = new HashMap<String, Collection<ConfigAttribute>>();
        
        for (TsysPremission premission : permissions) {
        	 ConfigAttribute ca = new SecurityConfig(premission.getName());
        	 String url = premission.getUrl();
        	 /*
              * 判断资源文件和权限的对应关系，如果已经存在相关的资源url，则要通过该url为key提取出权限集合，将权限增加到权限集合中。
              * sparta
              */
        	 if (resourceMap.containsKey(url)) {
        		 Collection<ConfigAttribute> value = resourceMap.get(url);
                 value.add(ca);
                 resourceMap.put(url, value);
        	 }else{
        		 Collection<ConfigAttribute> atts = new ArrayList<ConfigAttribute>();
                 atts.add(ca);
                 resourceMap.put(url, atts);
        	 }
		}

    }
	
	@Override
    public Collection<ConfigAttribute> getAttributes(Object object) throws IllegalArgumentException {
		 // object 是一个URL，被用户请求的url。
        String url = ((FilterInvocation) object).getRequestUrl();
        int firstQuestionMarkIndex = url.indexOf("?");

        if (firstQuestionMarkIndex != -1) {
            url = url.substring(0, firstQuestionMarkIndex);
        }

        Iterator<String> ite = resourceMap.keySet().iterator();

        while (ite.hasNext()) {
            String resURL = ite.next();

            if (url.equals(resURL)) {

                return resourceMap.get(resURL);
            }
        }

        return null;
	    
		 
    }
	
	/**
	 * 第二个方法是Spring容器启动时自动调用的, 返回所有权限的集合. 一般把所有请求与权限的对应关系也要在这个方法里初始化, 保存在一个属性变量里.
	 */
    @Override
    public Collection<ConfigAttribute> getAllConfigAttributes() {
    	//map = new HashMap<>();
       // Collection<ConfigAttribute> array;
       // ConfigAttribute cfg;
    	permissions = permissionDao.findAll();
       /* for(TsysPremission permission : permissions) {
            //array = new ArrayList<>();
            cfg = new SecurityConfig(permission.getName());
            //此处只添加了用户的名字，其实还可以添加更多权限的信息，例如请求方法到ConfigAttribute的集合中去。此处添加的信息将会作为MyAccessDecisionManager类的decide的第三个参数。
            //array.add(cfg);
            //用权限的getUrl() 作为map的key，用ConfigAttribute的集合作为 value，
            map.put(permission.getUrl(), array);
        }*/
    	loadResourceDefine();
        return null;
    }

    @Override
    public boolean supports(Class<?> clazz) {
        return true;
    }

}
