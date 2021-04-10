package com.fc.v2.common.dataSources;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 动态数据源上下文管理：设置数据源，获取数据源，清除数据源
 * @ClassName: DataSourceContextHolder
 * @author fuce
 * @date 2019-12-06 21:08
 */
public class DataSourceContextHolder {
	private static final Logger log = LoggerFactory.getLogger(DataSourceContextHolder.class);
   /**
    * 使用ThreadLocal维护变量，ThreadLocal为每个使用该变量的线程提供独立的变量副本，
    * 所以每一个线程都可以独立地改变自己的副本，而不会影响其它线程所对应的副本。
    */
    private static final ThreadLocal<String> CONTEXT_HOLDER = new ThreadLocal<>();

    /**
     * 设置数据源
     * @param type
     * @author fuce
     * @Date 2019年12月7日 下午6:38:55
     */
    public static void setDataSource(String type){

        log.info("当前使用的数据源为：{}", type);
    	CONTEXT_HOLDER.set(type);
    }

    /**
     * 获得数据源的变量
     * @return
     * @author fuce
     * @Date 2019年12月7日 下午6:39:00
     */
    public static String getDataSource(){
        return CONTEXT_HOLDER.get();
    }

    /**
     * 清除数据源
     * @author fuce
     * @Date 2019年12月7日 下午6:39:06
     */
    public static void clearDataSource(){
    	CONTEXT_HOLDER.remove();
    }
}
