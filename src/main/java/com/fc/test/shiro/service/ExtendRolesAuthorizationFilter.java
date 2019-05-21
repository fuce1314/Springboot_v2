package com.fc.test.shiro.service;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.web.filter.authz.RolesAuthorizationFilter;

/**
 * 通过角色验证权限
 * @ClassName: ExtendRolesAuthorizationFilter
 * @author fuce
 * @date 2018年8月26日
 *
 */
public class ExtendRolesAuthorizationFilter  extends RolesAuthorizationFilter{
    
    public boolean isAccessAllowed(HttpServletRequest request, HttpServletResponse response, Object mappedValue) throws IOException {
//        
//        System.out.println(ExtendRolesAuthorizationFilter.class.toString());
//        Subject subject = getSubject(request, response);
//        String[] rolesArray = (String[]) mappedValue;
//
//        if (rolesArray == null || rolesArray.length == 0) {
//            //no roles specified, so nothing to check - allow access.
//            return true;
//        }
//        //AbstractFilter
//        Set<String> roles = CollectionUtils.asSet(rolesArray);
//        
//        boolean flag=false;
//        for(String role: roles){
//            if(subject.hasRole(role)){
//                flag=true;
//                break;
//            }
//        }
        return true;
    }
}
