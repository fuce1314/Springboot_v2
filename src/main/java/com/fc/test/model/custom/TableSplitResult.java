package com.fc.test.model.custom;

import java.io.Serializable;
import java.util.List;

/**
* bootstrap table list 返回封装model
* @ClassName: TableSplitResult
* @author fuce
* @date 2019-09-08 03:59
*/
public class TableSplitResult<T> implements Serializable {

	private static final long serialVersionUID = 1L;
	private  Integer page;
    private Long total;
    private List<T> rows;
 
 
    public TableSplitResult() {
    }
 
    public TableSplitResult(Integer page, Long total, List<T> rows) {
        this.page = page;
        this.total = total;
        this.rows = rows;
    }
 
    public Integer getPage() {
        return page;
    }
 
    public void setPage(Integer page) {
        this.page = page;
    }
 
    public Long getTotal() {
        return total;
    }
 
    public void setTotal(Long total) {
        this.total = total;
    }
 
    public List<T> getRows() {
        return rows;
    }
 
    public void setRows(List<T> rows) {
        this.rows = rows;
    }

}
