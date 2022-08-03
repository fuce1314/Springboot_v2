package com.fc.v2.satoken.dialect;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import org.thymeleaf.dialect.AbstractProcessorDialect;
import org.thymeleaf.processor.IProcessor;

import cn.dev33.satoken.stp.StpUtil;

/**
 * Sa-Token 标签方言 
 * <p> 参考：https://blog.csdn.net/whatlookingfor/article/details/78459649
 * @author kong
 *
 */
public class SaTokenDialect extends AbstractProcessorDialect {
	
	/**
	 * 方言名称 
	 */
    private static final String DIALECT_NAME = "Sa-Token";

    /**
     * 方言前缀 
     */
    public static final String DIALECT_PREFIX = "sa";

    /**
     * 优先级 
     */
    public static final int PROCESSOR_PRECEDENCE = 1000;

    public SaTokenDialect() {
        super(DIALECT_NAME, DIALECT_PREFIX, PROCESSOR_PRECEDENCE);
    }
    
    /**
     * 返回所有方言处理器 
     */
    @Override
    public Set<IProcessor> getProcessors(final String prefix) {
    	return new HashSet<IProcessor>(Arrays.asList(
    			new SaTokenTagProcessor(prefix, "hasRole", StpUtil::hasRole),
    			new SaTokenTagProcessor(prefix, "hasPermission", StpUtil::hasPermission)
    			));
    }

}
