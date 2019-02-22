package com.fc.test.model.custom;

import java.util.List;

import com.fc.test.model.auto.TsysPremission;

/**
 * 权限树
 * @author fuce 
 * @date: 2018年9月8日 下午6:40:29
 */
public class PremissionThreeModelVo{
	private TsysPremission tsysPremission;
	
	List<PremissionThreeModelVo> childList;//子类

	public TsysPremission getTsysPremission() {
		return tsysPremission;
	}

	public void setTsysPremission(TsysPremission tsysPremission) {
		this.tsysPremission = tsysPremission;
	}

	public List<PremissionThreeModelVo> getChildList() {
		return childList;
	}

	public void setChildList(List<PremissionThreeModelVo> childList) {
		this.childList = childList;
	}

	public PremissionThreeModelVo(TsysPremission tsysPremission,
			List<PremissionThreeModelVo> childList) {
		super();
		this.tsysPremission = tsysPremission;
		this.childList = childList;
	}

	public PremissionThreeModelVo() {
		super();
	}
	

	

	
	
}
