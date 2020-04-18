package com.fc.test.model.custom;

/**
 * boostrap table post 参数
 * @author fc
 *
 */
public class Tablepar {
	private int pageNum;//页码
	private int pageSize;//数量
	private String orderByColumn;//排序字段
	private String isAsc;//排序字符 asc desc 
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public String getOrderByColumn() {
		return orderByColumn;
	}
	public void setOrderByColumn(String orderByColumn) {
		this.orderByColumn = orderByColumn;
	}
	public String getIsAsc() {
		return isAsc;
	}
	public void setIsAsc(String isAsc) {
		this.isAsc = isAsc;
	}
	
}
