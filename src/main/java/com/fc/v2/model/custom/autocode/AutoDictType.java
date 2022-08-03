package com.fc.v2.model.custom.autocode;

import java.util.List;

import com.fc.v2.model.auto.TSysDictData;
import com.fc.v2.model.auto.TSysDictType;

public class AutoDictType {
	//字典表
	private TSysDictType dictType;
	//字典表里面的数据
	private List<TSysDictData> dictDatas;

	public TSysDictType getDictType() {
		return dictType;
	}

	public void setDictType(TSysDictType dictType) {
		this.dictType = dictType;
	}

	public List<TSysDictData> getDictDatas() {
		return dictDatas;
	}

	public void setDictDatas(List<TSysDictData> dictDatas) {
		this.dictDatas = dictDatas;
	}

	public AutoDictType(TSysDictType dictType, List<TSysDictData> dictDatas) {
		super();
		this.dictType = dictType;
		this.dictDatas = dictDatas;
	}

	public AutoDictType() {
		super();
	}
	
	
	
	
	
}
