package com.fc.v2.common.conf.oss;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

@Aspect
@Component
@Order(2)
public class OssAspect {
	
	@Autowired
	private  OssTemplate template;
	
    @Pointcut("@annotation(com.fc.v2.common.conf.oss.OssConfig)")
    public void annotationPointcut() {

    }
    @Around("annotationPointcut()")
    public Object doAround(ProceedingJoinPoint joinPoint) throws Throwable {
    	
    	HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
    	request.setAttribute("bucketURL",template.getOssProperties().getEndpoint()+"/"+template.getOssProperties().getBucketName());
    	request.setAttribute("BucketName",template.getOssProperties().getBucketName());
    	return joinPoint.proceed();
    }
}
