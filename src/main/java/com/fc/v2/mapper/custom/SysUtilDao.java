package com.fc.v2.mapper.custom;

import com.fc.v2.model.custom.SQLAdapter;

import java.util.List;
import java.util.Map;


/**
 * 通用dao
* @ClassName: SysUtilDao
* @author fuce
* @date 2019-08-31 18:11
*
 */
public interface SysUtilDao {
	
	/**
	 * 执行sql
	 * @param sql
	 * @return
	 * @author fuce
	 * @Date 2019年8月31日 下午6:15:08
	 */
	public int executeSQL(SQLAdapter sql);
	
	
	/**
	 * 查询sql
	 * @param sql
	 * @return
	 * @author fuce
	 * @Date 2020年4月10日 下午11:43:16
	 */
	public List<Map<Object,Object>> SelectExecuteSQL(SQLAdapter sql); 
}
