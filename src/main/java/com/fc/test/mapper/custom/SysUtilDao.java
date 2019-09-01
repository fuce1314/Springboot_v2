package com.fc.test.mapper.custom;

import java.util.List;
import java.util.Map;

import com.fc.test.model.custom.SQLAdapter;

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
}
