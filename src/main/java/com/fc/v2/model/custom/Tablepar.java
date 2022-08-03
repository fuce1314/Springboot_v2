package com.fc.v2.model.custom;

/**
 * boostrap table post 参数
 * @author fc
 *
 */
public class Tablepar {
	private int page;//页码
	private int limit;//数量
	private String orderByColumn;//排序字段
	private String isAsc;//排序字符 asc desc 
	private String searchText;//列表table里面的搜索

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
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
	public String getSearchText() {
		return searchText;
	}
	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}

}
