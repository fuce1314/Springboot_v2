package com.fc.test.model.custom.autocode;

import com.fc.test.util.StringUtils;

public class TableConfig {
    //表名称
    private String dataName;

    //别名 不写默认采用驼峰命名法 test_code->TestCode
    private String aliasName;


    public String getDataName() {
        return dataName;
    }

    public void setDataName(String dataName) {
        this.dataName = dataName;
    }

    public String getAliasName() {
        if(StringUtils.isEmpty(aliasName)){
            return StringUtils.convertToCamelCase(dataName);
        }
        return aliasName;
    }

    public void setAliasName(String aliasName) {
        this.aliasName = aliasName;
    }

	public TableConfig() {
		super();
	}

	/**
	 * TODO
	 * @param dataName
	 * @param aliasName
	 * @author fuce
	 * @Date 2019年8月25日 上午12:42:20
	 */
	public TableConfig(String dataName, String aliasName) {
		super();
		this.dataName = dataName;
		this.aliasName = aliasName;
	}
    
    
}
