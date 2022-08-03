package com.fc.v2.model.auto;

import java.io.Serializable;
import java.lang.Integer;

/**
 * 公告_用户外键 SysNoticeUser 
 * @author fuce_自动生成
 * @email 115889198@qq.com
 * @date 2019-09-08 02:12:54
 */
public class SysNoticeUser implements Serializable {

	private static final long serialVersionUID = 1L;
	
		
	/** 主键 **/
	private String id;
		
	/** 公告id **/
	private String noticeId;
		
	/** 用户id **/
	private String userId;
		
	/** 0未阅读 1 阅读 **/
	private Integer state;
		
		
	public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
	 
			
	public String getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(String noticeId) {
        this.noticeId = noticeId;
    }
	 
			
	public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
	 
			
	public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
	 
			
	public SysNoticeUser() {
        super();
    }
    
																						
	public SysNoticeUser(String id,String noticeId,String userId,Integer state) {
	
		this.id = id;
		this.noticeId = noticeId;
		this.userId = userId;
		this.state = state;
		
	}
	
}