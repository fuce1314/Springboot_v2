package com.fc.v2.common.dataSources;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * 自定义注解，用于类或方法上，优先级：方法>类
 * @ClassName: DataSource
 * @author fuce
 * @date 2019-12-06 21:15
 */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface DataSource {
	/**
     * 切换数据源名称
     */
	DataSourceType value() default DataSourceType.MASTER;
}
